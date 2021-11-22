class Song < ApplicationRecord
  validates :url, :name, :credits, presence:true
end