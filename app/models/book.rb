class Book < ApplicationRecord
  belongs_to :author
  def self.ransackable_attributes(auth_object = nil)
    ["author_id", "created_at", "genre", "id", "title", "updated_at"]
  end
  end

