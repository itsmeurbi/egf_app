class KeyResult < ApplicationRecord
  belongs_to :objective

  validates_presence_of :description
end
