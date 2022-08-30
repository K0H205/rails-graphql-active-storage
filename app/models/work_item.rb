class WorkItem < ApplicationRecord
  belongs_to :work
  has_one_attached :image
end
