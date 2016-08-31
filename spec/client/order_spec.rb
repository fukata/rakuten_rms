require "spec_helper"

describe RakutenRms::Client::Order, :vcr do
  let(:configure) { RakutenRms::Configuration.new(user_name: "user_name", shop_url: "shop_url", auth_key: "auth_key") }
  let(:client) { RakutenRms::Client::Order.new(configure) }

  describe "#get_order" do
    it "returns RakutenRms::Resposne instance" do
      response = client.get_order(arg1: { orderNumber: ["orderNumber"]})
      expect(response).to be_a RakutenRms::Response
    end
  end

  describe "#update_order" do
    it "returns RakutenRms::Resposne instance" do
      response = client.update_order(arg1: { orderNumber: ["orderNumber"]})
      expect(response).to be_a RakutenRms::Response
    end
  end

  describe "#get_request_id" do
    it "returns RakutenRms::Resposne instance" do
      response = client.get_request_id(arg1: {})
      expect(response).to be_a RakutenRms::Response
    end
  end

  describe "#get_result" do
    it "returns RakutenRms::Resposne instance" do
      response = client.get_result(arg1: { requestId: ["requestId", "requestId"]})
      expect(response).to be_a RakutenRms::Response
    end
  end
end
