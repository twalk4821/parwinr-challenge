require 'spec_helper'

describe RequestController do

  describe "GET 'youtube'" do
    it "returns http success" do
      get 'youtube'
      response.should be_success
    end
  end

end
