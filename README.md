# Bitly Product Tour Page Manual Testing

Consists of a few UI test cases using SitePrism, RSpec, chromedriver, Selenium and Capybara

To run the RSpec test:

```bash
rspec spec/features/product_tour_page_spec.rb
```

# Bitly URL Shortener Automated RSpec Tests

Automated RSpec tests for Bitly URL shortener feature

* Test when URL link is long url
* Test when URL is already Bitly URL
* Test when URL is an invalid URL

To run the RSpec tests:

```bash
rspec spec/links/bitly_spec.rb
```
## Gems Used

```ruby
gem 'capybara'
gem 'site_prism'
gem 'selenium-webdriver'
gem 'chromedriver-helper'
gem 'faker'
gem 'bitly'
```

To run all Rspec tests:

```bash
rspec spec
```

# Assumptions

Bitly Product Tour page

1. No specific requirements what to test on Bitly product tour page.
2. UI RSpec test on presence of CSS class elements and links routing URL confirmation

Bitly URL Shortener

1. No input from user. Generate fake URL to shorten
2. Test basic BitlyError exceptions.
