# Simple Rails Api with Okta

Simple Rails Api with Oauth 2 JWT security with Okta

## Getting started
### Install gems and Create a Config file with figaro

```bash
run bundle install
bundle exec figaro install
```
Now add your okta_url to your config > application.yml with key value of okta_url(this will be your own okta URL you obtain signing up for a free trial at developer.okta.com)

```ruby
# 
# other stuff if you want
okta_url: "https://{{your domain}}.okta.com"
```

## Start the Api
```bash
rails s
```

## Make API requests 
Either with postman, curl, or some other client make get requests to http://localhost:3000/animes

## Look for scopes

in app > controllers > application_controller.rb comment line 29 of return true, and uncomment lines 30 - 32

```ruby
  # comment this out if you want to try the scopes example below
        #return true
        # uncomment this if you want to check for scopes
        scopes = token_payload[0]["scp"]
        return scopes.include? 'profile'
```


Thats it!  Also, to learn more about this sample read the blog!

