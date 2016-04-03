# Copy your entire Contact class from the old crm assignment here.
# Then, run the following at the command line:
#
#   ruby test/contact_test.rb
## If your implementation of the Contact class is 'right', then you should see that all tests pass
class Contact
  attr_accessor :first_name, :last_name, :email, :note
  attr_reader :id

  @@contacts = []
  @@id = 1

  def initialize(first_name, last_name, email, note)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
    @id = @@id
    @@id += 1
  end

  def self.create(first_name, last_name, email, note)
    new_contact = Contact.new(first_name, last_name, email, note)
    @@contacts << new_contact
    new_contact
  end

  def self.all
    @@contacts
  end

  def self.find(id)
    @@contacts.find {|contact| contact.id == id}
  end

  def self.find_by(attribute, value)
    if ["first_name", "last_name", "email", "note", "id"].include?(attribute)
      @@contacts.select { |contact| contact.send(attribute) == value}
    else
      []
    end
  end

  def self.delete_all
    @@contacts = []
  end

  def full_name
    "#{ first_name } #{ last_name }"
  end

  def update(attribute, value)
    if attribute == "first_name"
      self.first_name = value
    elsif attribute == "last_name"
      self.last_name = value
    elsif attribute == "email"
      self.email = value
    elsif attribute == "note"
      self.note = value
    end
  end

  def delete
    @@contacts.delete_if { |contact| contact.id == self.id }
  end
end

# require 'sinatra'
#
# get '/' do
#   'Hello World'
# end
