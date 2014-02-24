require 'spec_helper'

describe Product do
  context "validation" do
    let(:product){ FactoryGirl.create :product, name: "test prod", description: 'Super product!' }
    it 'raises an error if saved without a name' do
      product.name = ''
      expect(product.save).to eq(false)
    end
    it 'raises an error if saved without a value' do
      product.value = ''
      expect(product.save).to eq(false)
    end
    
  end
  
end
