class Contact < ActiveRecord::Base

  validates_presence_of :first_name,:last_name
  def self.by_letter(letter)
    where("last_name LIKE ?", "#{letter}%").order(:last_name)
  end

  def name
    [first_name, last_name].join " "
  end
end
