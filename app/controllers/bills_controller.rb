class BillsController < ApplicationController
  def thank_you
  end

  def cancel
  end

  def callback
    if ValidateXSignatureService.new(params['billplz']).call
      UpdatePaymentStatusService.new(params['billplz']).call
      bill = Billplz::Bill.find_by_bill_id(params['billplz']['id'])
      if params['billplz']['paid'] == 'true'
        bill.update({
          paid_at: params['billplz']['paid_at'],
          status: params['billplz']['state'],
          paid_amount: params['billplz']['paid_amount']
        })
      else
        redirect_to cart_confirm_path, notice: 'Error with payment'
        return
      end
    else
      raise ActionController::RoutingError.new('Not Found')
    end

    redirect_to thank_you_path(bill)
  end
end
