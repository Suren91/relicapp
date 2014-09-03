require 'rest_client'
require 'json'


h = {to: "Krishna <itskthere@gmail.com>", subject: "hello world", body: "Hi its k there! Sending you an email via this API I just made."}.to_json 

puts h
RestClient.post "http://lit-plateau-2174.herokuapp.com/emailit", h , :content_type => :json, :accept => :json
