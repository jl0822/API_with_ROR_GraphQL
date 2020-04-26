class Article < ApplicationRecord
  belongs_to :author
  validates :title, :description, presence: true
  
end
