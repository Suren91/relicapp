class EmailerController < ApplicationController
   
   def send_email
     puts Time.now
     p params
     toaddr, sub, mbody = params["to"], params["subject"], params["body"]	 
     p toaddr
	 p sub
	 p mbody
	 
	 Mail.deliver do
       to        toaddr
	   from      'noreply@example.com' 
	   subject   sub 
	   body      mbody 
	 end
	 
	 respond_to do |format|
       format.json { render text: 'Email Sent'}
     end   
   end 
   
end
