module Billplz
  class GetBill
    def initialize(id)
      @id = id
      @endpoint = '/api/v3/bills/' + @id.to_s
    end

    def call
      @raw_response = ApiGet.new(@endpoint).call
    end

    def response
      JSON.parse(@raw_response.body.to_s)
    end
  end
end
