#coding:utf-8
require 'sinatra'
require 'pony'

get '/' do
  "Move along..."
end
                 
post '/send' do 
  Pony.mail({
    :to             => "jesper.astrom@qubator.com", 
    :via            => :sendmail, 
    :from           => params[:from], 
    :subject        => "Rör inte mitt snus!", 
    :body           => %{
      Det finns en bred politisk enighet i Sverige om att snus ska få tillverkas, användas och exporteras inom EU.

      Nu vill EU-kommissionen förbjuda det svenska snuset helt och hållet. Detta är oacceptabelt.

      Vad kommer du att göra för att rädda det svenska snuset?

      Med vänliga hälsningar

      #{params[:first_name]} #{params[:last_name]}
    }
  })                                
  redirect "http://rorintemittsnus.nu/"
end