require 'rails_helper'

feature 'Products' do
  before(:each) do
    Product.create(name: "Almond Toe Court Shoes, Patent Black", category: "Women’s Footwear", price: 99.00, quantity: 5, :image => File.open('db/images/almond_toe.jpg', 'rb'))
  end

  scenario 'shows first product on home-page' do
    visit '/'
    expect(page).to have_content("Almond Toe Court Shoes, Patent Black")
    expect(page).to have_content("Category: Women’s Footwear")
    expect(page).to have_content("Price: £99.0")
    expect(page).to have_content("Amount left: 5")
  end

  scenario 'shows multiple products on home-page' do
    Product.create(name: "Suede Shoes, Blue", category: "Women’s Footwear", price: 42.00, quantity: 4, :image => File.open('db/images/almond_toe.jpg', 'rb'))
    visit '/'
    expect(page).to have_content("Almond Toe Court Shoes, Patent Black")
    expect(page).to have_content("Category: Women’s Footwear")
    expect(page).to have_content("Price: £99.0")
    expect(page).to have_content("Amount left: 5")
    expect(page).to have_content("Suede Shoes, Blue")
    expect(page).to have_content("Category: Women’s Footwear")
    expect(page).to have_content("Price: £42.0")
    expect(page).to have_content("Amount left: 4")
  end
end