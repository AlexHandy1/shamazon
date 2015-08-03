Summary
=================

* My implementation of a responsive website for a clothing retailer : Shamazon developed using TDD and Agile methodologies.

* Based on the specification, I made a number of key implementation decisions:

  * Chose to build the website in Rails, primarily to further explore how to implement one-page, AJAX features within the framework that would commonly be used within a larger web app.  Ordinarily, I would have elected to use a stand-alone front-end framework (e.g. Angular (see [Subredditor](https://github.com/AlexHandy1/subredditor)) to allow for quicker development and greater flexibility given the limited scale of the app.

  * Modelled domain with 3 key objects - Products (to manage the stock of products), OrderItems (to manage the transfer of products to orders) and Orders (to aggregate and sum OrderItems into one consolidated Order).

  * Chose to use Active Record to store Product and Order data - this was particularly helpful when used in concert with the Paperclip gem to store images for the products.

  * Interpreted vouchers as being designed to be redeemed one at a time e.g. would not allow someone to have £10 off and £15 on an order over £75 with footwear. As a result, implemented discount vouchers as an Order class attribute (vs an Active Record attribute) with a series of methods applied that update the discount attribute and update the total order cost.

  * Used AJAX javascript calls for adding to cart and removing items through adding ```remote: true``` to forms and implementing correlating js.erb files for create and destroy routes.

  * To support the clarity around what was being rendered through these javascript calls I implemented a range of partials for the total order text (top right of homepage), the shopping cart and the individual shopping cart order items.

  * Implemented the CSS Bootstrap framework to meet the mobile responsive specification and adopted a clean, 2*2 grid layout

  * Test driven development through unit tests and feature tests using Rspec, Capybara and Selenium (for javascript). Heavier focus on using feature tests to drive the functionality and delivery of use cases.

* One of the major challenges I had to overcome was testing javascript with Selenium within the Rails environment. I discovered that with the Selenium driver my tests were running in a different thread and my test database was not being loaded before the relevant tests. To solve, I had to customise my database_cleaner.rb set-up to remove the use of transactional_fixtures so the truncation strategy was deployed effectively.

* Further detail on areas where I would extend the application can be found listed below in 'Further improvements'

![Shamazon](https://github.com/AlexHandy1/shamazon/blob/master/app/assets/images/Shamazon.png)

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
bin/rake db:seed
bin/rails s

#to run tests
rspec

```

Technologies used
----

* Production - Ruby-on-Rails, Javascript, jQuery, HTML, CSS (Bootstrap), Paperclip (for Image file handling)
* Testing - Rspec, Capybara, Selenium

Further Improvements
----

*  Enhance voucher flexibility and validations e.g. currently validations covers only the core use cases and each additional voucher would require a new method implementation in the Order class

*  Add extended out of stock quantity validation and clearer UX

*  Add checkout functionality so users can actually complete their orders (e.g. using Stripe) from the shopping cart

*  Develop a sorting algorthim/ logic for displaying items and implement filters e.g. show most expensive items first

*  Extend test suite for edge cases and explore improving coverage of unit tests

*  Improve layout and styling to ensure consistent UX

