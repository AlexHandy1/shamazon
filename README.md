Summary
=================

* My implementation of a responsive website for a clothing retailer : Shamazon developed using TDD and Agile methodologies.

* Based on the specification, I made a number of key implementation decisions:

  * Chose to build in Rails to better understand how would approach integrating for typical one-page app/ including Javascript .  Ordinarily I would have elected to use a front-end framework (e.g. Angular (see [Subredditor](https://github.com/AlexHandy1/subredditor)) to allow for quicker development and greater flexibility given the scale of the app.

  * Modelled domain with 3 key objects - Products, Orders and OrderItems (briefly summarise how calculated within this)

  * Chose to use a database to hold products - used Paperclip to load up with images

  * Implemented vouchers as a method applied to the order class - use one at a time, not multiple, validations

  * JS calls across adding and removing order items from the cart

  * Significant use of partials to tie in with JS to load pages

  * Bootstrap to ensure basic responsive website within grid layout

  * Unit tests because of XYZ

* Challenges - JS testing with Selenium, JS overlay on Rails generally, linking up vouchers to correct route without re-structuring the JS

* Further detail on areas where I would extend the application can be found listed below in 'Further improvements'

![Shamazon](https://github.com/AlexHandy1/shamazon/blob/master/Shamazon.png)

Use Cases:
-------

```
- [x] As a User,
      I can view the products and their category, price and availability information.

- [x] As a User,
      I can add a product to my shopping cart.

- [x] As a User,
      I can view the total price for the products in my shopping cart.

- [x] As a User,
      I can apply a voucher to my shopping cart.

- [x] As a User,
      I can view the total price for the products in my shopping cart with discounts applied.

- [x] As a User,
      I am alerted when I apply an invalid voucher to my shopping cart.

- [x] As a User,
      I am unable to Out of Stock products to the shopping cart.

```

How to run
----

### Local Installation

Run the below commands in your command line interface to view the web page and run the test suite.

```
git clone https://github.com/AlexHandy1/shamazon.git
cd shamazon
bundle
bin/rake db:create RAILS_ENV=test
bin/rake db:create RAILS_ENV=development
bin/rake db:migrate RAILS_ENV=test
bin/rake db:migrate RAILS_ENV=development
bin/rails s

#to run tests
rspec

```

Technologies used
----

* Production - Ruby-on-Rails, Javascript, jQuery, HTML, CSS (Bootstrap), Paperclip
* Testing - Rspec, Capybara, Selenium

Further Improvements
----

*  More flexible vouchers and improved validation

*  Sortign algorthim/ logic for displaying items

*  Out of stock use case + validations

*  Extended test suite for edge cases

*  Improve layout/ styling

