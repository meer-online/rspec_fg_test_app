require 'spec_helper'
require 'rails_helper'

RSpec.describe Contact, :type => :model do
  it "has a valid factory" do
    contact = create(:contact)
    contact.should be_valid
  end
  it "is invalid without a firstname" do
    build(:contact, first_name: nil).should_not be_valid
  end
  it "is invalid without a lastname" do
    build(:contact, last_name: nil).should_not be_valid
  end
  it "returns a contact's full name as a string" do
    contact = create(:contact, first_name: "John", last_name: "Doe")
    contact.name.should == "John Doe"
  end
end