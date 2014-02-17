require 'spec_helper'

describe HomeController do

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      ap response
      response.should be_success
    end
  end

end
