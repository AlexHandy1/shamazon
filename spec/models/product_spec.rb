require 'rails_helper'

describe Product do

  it 'can be created' do
    expect { Product.create }.to change { Product.count }.by 1
  end

  it { should have_many(:order_items) }

end
