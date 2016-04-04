# Implement the new web-based CRM here.
# Do NOT copy the CRM class from the old crm assignment, as it won't work at all for the web-based version!
# You'll have to implement it from scratch.

require_relative 'contact'
require 'sinatra'

get '/' do      # '/' matches the top level of my website
  @crm_app_name = "Ariane's CRM"
  erb :index
end

get '/contacts' do
  Contact.create('Ariane', 'Foucher', 'ariane@me.com', 'Loves coding')
  Contact.create('Kim', 'Oleiro', 'kim@her.com', 'New Bitmaker bestie')
  Contact.create('Arthur', 'Chayka', 'arthur@universe.ca', 'New Tinder crush')

erb :contacts
end

get '/contacts/new' do
  erb :new_contact
end
