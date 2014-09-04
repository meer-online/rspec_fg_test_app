require 'spec_helper'
require 'rails_helper'

RSpec.describe Contact, :type => :model do
  #let(:contact) { Factory(:contact) }
  it "has a valid factory" do
    create(:contact).valid?
  end
  it "is invalid without a firstname" do
    build(:contact, first_name: nil).valid?
  end
  it "is invalid without a lastname" do
    build(:contact, last_name: nil).valid?
  end
  it "returns a contact's full name as a string" do
    contact = create(:contact, first_name: "John", last_name: "Doe")
    contact.name == "John Doe"
  end
end