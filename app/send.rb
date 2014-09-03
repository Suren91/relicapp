require 'rest_client'
require 'json'


h = {to: "Siva Krishna <sivakr39@yahoo.com>", subject: "hello world", body: "Hi Siva! Sending you an email via this API I just made."}.to_json 

puts h
RestClient.post "http://lit-plateau-2174.herokuapp.com/emailit", h , :content_type => :json, :accept => :json
