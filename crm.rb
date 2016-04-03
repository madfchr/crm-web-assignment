# Implement the new web-based CRM here.
# Do NOT copy the CRM class from the old crm assignment, as it won't work at all for the web-based version!
# You'll have to implement it from scratch.

require 'sinatra'

get '/' do      # '/' matches the top level of my website
  @crm_app_name = "Ariane's CRM"
  erb :index
end
