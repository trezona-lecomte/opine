class Artist < ActiveRecord::Base
  has_many :albums
  has_many :tracks
  validates :name, presence: true,
                   uniqueness: { case_sensitive: false }
end
