require 'sinatra'

get '/' do
  "Move along..."
end
                 
post '/send' do 
  Pony.mail({
    :to             => "daniel@qubator.com", 
    :via            => :smtp, 
    :via_options    => {
      :address      => "smtp.postmarkapp.com", 
      :port         => "25", 
      :user_name    => "1422b1cc-7666-4f7c-9958-34e8247189cf", 
      :password     => "1422b1cc-7666-4f7c-9958-34e8247189cf", 
      :authentication => :login, 
      :domain       => ""
    }
  
  })
end