require 'rails_helper'

feature 'Orders' do
  before do
    Product.create(name: "Almond Toe Court Shoes, Patent Black", category: "Women’s Footwear", price: 99.00, quantity: 5, :image => File.open('db/images/almond_toe.jpg', 'rb'))
  end

  scenario 'click on checkout to view order' do
    visit '/'
    click_link '0 Items in Cart ( )'
    expect(current_path).to eq('/order')
  end

  scenario 'view the order items that are in my order', js: true do
    visit '/'
    page.find('.btn-primary').click
    click_link '1 Items in Cart ( 99.0 )'
    expect(page).to have_content("Almond Toe Court Shoes, Patent Black")
  end
end