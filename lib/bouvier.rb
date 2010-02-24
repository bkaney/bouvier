require 'httparty'
require 'hashie'

module Bouvier

  class Client
 
    include HTTParty
    format :xml
    base_uri "http://www.eot.state.ma.us"

    # Bouvier::Client.branches
    def self.branches
      response = get('/developers/downloads/qmaticXML.aspx')
      Hashie::Mash.new(response['branches']).branch
    end

    # Bouvier::Client.branch("Danvers")
    def self.branch(town_name)
      self.branches.detect{|b| b.town == town_name }
    end

  end

end

