class Book < ApplicationRecord
  belongs_to :author

  def self.ransackable_associations(auth_object = nil)
    ["author"]
  end

  def self.ransackable_attributes(auth_object = nil)
    super + ["title", "genre"]
  end
end