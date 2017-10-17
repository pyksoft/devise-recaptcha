# Devise integration with Google reCaptcha authentication and Google OmniAuth Login (OAuth2)

This project covers the integration of Devise with Google reCaptcha and OAuth2.


## Gems
```ruby
# DotEnv
gem 'dotenv-rails', groups: [:development, :test]

# Devise
gem 'devise'

# reCaptcha Gem
gem "recaptcha", require: "recaptcha/rails"

# Mailgun
gem 'mailgun-ruby', '~>1.1.6'

# Omniauth
gem 'omniauth-google-oauth2'
```

## Models
### User (Devise)
- email : string

### Document
- title: string
- body: string

## Views
- Enabled devise views
```
rails g devise:views
```

## Controllers
### RegistrationsController
- Controls captcha for Devise sign up

### PasswordsController
- Controls captcha for Devise forgot password

### users/OmniauthCallbacksController
- Controls OAuth2 Google login for Devise


## References

### reCaptcha
- https://developers.google.com/recaptcha/intro?hl=en
- https://github.com/ambethia/recaptcha
- https://github.com/plataformatec/devise/wiki/How-To:-Use-Recaptcha-with-Devise

### OmniAuth
- https://github.com/zquestz/omniauth-google-oauth2
- https://developers.google.com/identity/protocols/OAuth2