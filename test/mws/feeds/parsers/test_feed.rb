require 'parser_helper'
require 'mws/feeds/parsers/feed'

class FeedParserTest < ParserTest
  def setup
    node = fixture('feeds/feed_submission').xpath('//xmlns:FeedSubmissionInfo').first
    @feed = MWS::Feeds::Parsers::Feed.new(node)
  end

  def test_submission_info
    assert_kind_of MWS::Feeds::Parsers::FeedSubmissionInfo, @feed.submission_info
  end
end
