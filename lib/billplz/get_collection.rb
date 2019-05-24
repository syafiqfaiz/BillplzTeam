module Billplz
  class GetCollection
    def initialize(id = nil)
      @id = id
      @endpoint = '/api/v3/collections/' + @id.to_s
    end

    def call
      @raw_response = ApiGet.new(@endpoint).call
    end

    def response
      JSON.parse(@raw_response.body.to_s)
    end
  end
end
