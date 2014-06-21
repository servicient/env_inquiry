# EnvInquiry

Use dot notation to access ENV vars. A handy companion to dotenv-* gems

EnvInquiry::Env.https_enabled? instead of ENV['HTTPS_ENABLED'] == 'true'

## Installation

Add this line to your application's Gemfile:

    gem 'env_inquiry'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install env_inquiry

In Rails (optional)

```
# auto-load in config/initializers/whatever.rb
require 'env_inquiry'
EnvInquiry::Env.inquire
```

## Usage

```
require 'env_inquiry'

EnvInquiry::Env.inquire

EnvInquiry::Env.https_enabled?

# feel free to shorten in your app with something like:
Env = EnvInquiry::Env
Env.https_enabled?
```

## Run Tests

    $ bundle exec rspec spec

## Contributing

1. Fork it ( http://github.com/servicient/env_inquiry/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
