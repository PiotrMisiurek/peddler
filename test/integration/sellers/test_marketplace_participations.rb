require 'integration_helper'
require 'mws/sellers'

class SellersTest < IntegrationTest
  self.api = MWS::Sellers

  def test_lists_marketplace_participations
    VCR.use_cassette('sellers_test/test_lists_marketplace_participations') do
      @clients.each do |client|
        mps = client.list_marketplace_participations
        assert_kind_of MWS::Sellers::Parsers::MarketplaceParticipations, mps
      end
    end
  end
end
