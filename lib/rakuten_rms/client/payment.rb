module RakutenRms
  class Client
    class Payment 
      API_URL = "https://orderapi.rms.rakuten.co.jp/rccsapi-services/RCCSApiService?WSDL"

      def initialize(configuration)
        @configuration = configuration
      end

      def authori(options = {})
        response = client.call(:authori, { message: { arg0: authentication_hash }.merge(options) })
        Response.new(response.http)
      end

      def authori_cancel(options = {})
        response = client.call(:authori_cancel, { message: { arg0: authentication_hash }.merge(options) })
        Response.new(response.http)
      end

      def sales(options = {})
        response = client.call(:sales, { message: { arg0: authentication_hash }.merge(options) })
        Response.new(response.http)
      end

      def sales_cancel(options = {})
        response = client.call(:sales_cancel, { message: { arg0: authentication_hash }.merge(options) })
        Response.new(response.http)
      end

      def get_rccs_request_id(options = {})
        response = client.call(:get_rccs_request_id, { message: { arg0: authentication_hash }.merge(options) })
        Response.new(response.http)
      end

      def get_rccs_result(options = {})
        response = client.call(:get_rccs_result, { message: { arg0: authentication_hash }.merge(options) })
        Response.new(response.http)
      end

      def get_rccs_result_all(options = {})
        response = client.call(:get_rccs_result_all, { message: { arg0: authentication_hash }.merge(options) })
        Response.new(response.http)
      end

      private

      def client
        @client ||= Savon.client(wsdl: API_URL)
      end

      def authentication_hash
        {
          authKey:  @configuration.auth_key,
          shopUrl:  @configuration.shop_url,
          userName: @configuration.user_name
        }
      end
    end
  end
end
