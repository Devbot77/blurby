require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  test "unique_tag" do
    quote = Quote.create(:author => 'Devin Mois', :saying => 'You only yolo once.')
    expected = 'DM#' + quote.id.to_s
    actual = quote.unique_tag
    assert_equal expected, actual
  end
end
