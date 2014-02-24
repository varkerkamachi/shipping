require 'spec_helper'

describe ProductsController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
    
    it "contains product data" do
      expect(assigns(:products)).to_not be_nil
    end
  end

end
