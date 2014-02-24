require 'spec_helper'

describe WelcomeController do
  context "redirecting properly" do
    subject{ get :index }
    
    it "should redirect to products#index on load" do
      get 'index'
      subject.should redirect_to('/products')
    end
    
  end
  
end
