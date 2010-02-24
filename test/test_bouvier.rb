require 'helper'
require 'ruby-debug'
class TestBouvier < Test::Unit::TestCase

  def setup
    super
  end
  
  should "get all branches" do
    assert_equal Bouvier::Client.branches.count, 2
  end

  should "get a branch" do
    assert_equal Bouvier::Client.branch("Danvers").town, "Danvers"
  end

end
