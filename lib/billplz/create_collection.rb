module Billplz
  class CreateCollection
    def initialize(title, logo)
      @logo_url = logo
      @title = title
      @endpoint = '/api/v3/collections'
    end

    def call
      @raw_response = ApiPost.new(@endpoint, data).call
    end

    def response
      JSON.parse(@raw_response.body.to_s)
    end

    private
    def data
      {:form => {:title => @title, :logo => @logo }}
    end
  end
end
