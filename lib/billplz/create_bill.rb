module Billplz
  class CreateBill
    def initialize(email, name, amount, description, redirect_url, collection_id = nil)
      @collection_id  = collection_id || ENV['DEFAULT_BILLPLZ_COLLECTION']
      @email          = email
      @name           = name
      @amount         = amount
      @description    = description
      @endpoint       = '/api/v3/bills'
      @callback_url   = ENV['HOST'] + '/payment/callbacks'
      @redirect_url   = ENV['HOST'] + redirect_url
    end

    def call
      @raw_response = ApiPost.new(@endpoint, data).call
    end

    def response
      JSON.parse(@raw_response.body.to_s)
    end

    private
    def data
      {
        :form => {
          :collection_id  => @collection_id,
          :email          => @email,
          :name           => @name,
          :amount         => @amount,
          :description    => @description,
          :callback_url   => @callback_url,
          :redirect_url   => @redirect_url
        }
      }
    end
  end
end
