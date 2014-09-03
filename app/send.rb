require 'rest_client'
require 'json'


h = {to: "Surendra <suren8990@gmail.com>", subject: "hello world", body: "Hi Surendra! Sending you an email via this API I just made."}.to_json 

puts h
RestClient.post "http://lit-plateau-2174.herokuapp.com/emailit", h , :content_type => :json, :accept => :json
