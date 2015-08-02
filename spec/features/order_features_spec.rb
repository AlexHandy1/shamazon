require 'rails_helper'

feature 'Orders' do
  before do
    Product.create(name: "Almond Toe Court Shoes, Patent Black", category: "Women’s Footwear", price: 99.00, quantity: 5, :image => File.open('db/images/almond_toe.jpg', 'rb'))
  end

  scenario 'click on checkout to view order' do
    visit '/'
    click_link '0 Items in Cart ( £ )'
    expect(current_path).to eq('/order')
  end

  scenario 'view the order items that are in my order', js: true do
    visit '/'
    page.find('.btn-primary').click
    click_link '1 Items in Cart ( £99.00 )'
    expect(page).to have_content("Almond Toe Court Shoes, Patent Black")
  end

  scenario 'remove order items that are in my order', js: true do
    visit '/'
    page.find('.btn-primary').click
    click_link '1 Items in Cart ( £99.00 )'
    expect(page).to have_content("Almond Toe Court Shoes, Patent Black")
    click_link 'Delete'
    expect(page).to have_content("There are no items in your shopping cart")
  end

  scenario 'get a £5 discount Voucher to order by entering "Voucher 1"', js: true do
    visit '/'
    page.find('.btn-primary').click
    click_link '1 Items in Cart ( £99.00 )'
    within('.edit_order') do
      fill_in "voucher", with: "Voucher 1"
      click_button 'Add Voucher'
    end
    expect(page).to have_content("1 Items in Cart ( £94.00 )")
  end

  scenario 'get a £10 discount Voucher to order by entering "Voucher 2" if order over £50', js: true do
    visit '/'
    page.find('.btn-primary').click
    click_link '1 Items in Cart ( £99.00 )'
    within('.edit_order') do
      fill_in "voucher", with: "Voucher 2"
      click_button 'Add Voucher'
    end
    expect(page).to have_content("1 Items in Cart ( £89.00 )")
  end

  scenario 'get a £15 discount Voucher to order by entering "Voucher 3" if order over £75 and at least one footwear item', js: true do
    visit '/'
    page.find('.btn-primary').click
    click_link '1 Items in Cart ( £99.00 )'
    within('.edit_order') do
      fill_in "voucher", with: "Voucher 3"
      click_button 'Add Voucher'
    end
    expect(page).to have_content("1 Items in Cart ( £84.00 )")
  end

  scenario 'get an invalid voucher message when enter "Voucher 4"', js: true do
    visit '/'
    page.find('.btn-primary').click
    click_link '1 Items in Cart ( £99.00 )'
    within('.edit_order') do
      fill_in "voucher", with: "Voucher 4"
      click_button 'Add Voucher'
    end
    expect(page).to have_content("Invalid Voucher")
  end
end