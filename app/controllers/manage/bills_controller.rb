class Manage::BillsController < Manage::ManageController
  def show
    @bill = Billplz::Bill.find(params['id'])
  end

  def create
    create_bill = CreateBillService.new(bill_params)
    @bill = create_bill.call
    if @bill.persisted?
      redirect_to manage_bill_path(@bill), notice: 'Bill have been created'
    else
      render :new, alert: 'An error have prevented this bill from being created'
    end
  end

  def new
    @bill = Billplz::Bill.new
  end

  # def delete
  # end

  def index
    @bills = Billplz::Bill.includes(:collection).all
  end

  private
  def bill_params
    params.require(:billplz_bill).permit(:collection_id, :email, :name, :amount, :description)
  end
end 