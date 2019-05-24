module Billplz
  class ApiGet
    def initialize(endpoint, payload = nil)
      @payload = payload
      @key = ENV['BILLPLZ_KEY']
      @url = ENV['BILLPLZ_URL'] + endpoint
    end

    def call
      HTTP.auth("Basic " + Base64.encode64(@key).strip + ":")
        .get(@url, @payload)
    end
  end
end
