class Album < ActiveRecord::Base
  belongs_to :artist
  has_many :tracks, dependent: :destroy
  validates :name, presence: true
end
