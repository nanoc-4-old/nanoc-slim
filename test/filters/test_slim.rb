# encoding: utf-8

require 'helper'

class Nanoc::Slim::FilterTest < Minitest::Test

  def test_filter
    # Create filter
    filter = ::Nanoc::Slim::Filter.new({ :rabbit => 'The rabbit is on the branch.' })

    # Run filter (no assigns)
    result = filter.run('html')
    assert_match(/<html>.*<\/html>/, result)

    # Run filter (assigns without @)
    result = filter.run('p = rabbit')
    assert_equal("<p>The rabbit is on the branch.</p>", result)

    # Run filter (assigns with @)
    result = filter.run('p = @rabbit')
    assert_equal("<p>The rabbit is on the branch.</p>", result)
  end

  def test_filter_with_yield
    filter = ::Nanoc::Slim::Filter.new({ :content => 'The rabbit is on the branch.' })

    result = filter.run('p = yield')
    assert_equal("<p>The rabbit is on the branch.</p>", result)
  end

end
