require 'rest_client'
require 'json'


h = {:to => "Surendra Koripella <suren8990@gmail.com>", :body => "test body", :subject => "Hello Testing, Relic app interview task"}.to_json 
puts h
RestClient.post "http://lit-plateau-2174.herokuapp.com/emailit", h , :content_type => :json, :accept => :json
