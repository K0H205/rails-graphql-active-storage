class Work < ApplicationRecord
  has_many :work_items, dependent: :destroy
end
