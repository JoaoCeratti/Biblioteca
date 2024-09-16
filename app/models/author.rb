class Author < ApplicationRecord
  has_many :books

  def self.ransackable_attributes(auth_object = nil)
    super + ["name"]
  end
end