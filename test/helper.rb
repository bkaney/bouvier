require 'rubygems'
require 'test/unit'
require 'shoulda'
require 'fakeweb'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'bouvier'

class Test::Unit::TestCase

  def setup 
    xml = IO.read(File.join(File.dirname(__FILE__), 'fixtures', 'rmv.xml'))
    FakeWeb.register_uri(:get, 'http://www.eot.state.ma.us/developers/downloads/qmaticXML.aspx', :body => xml)
  end
end
