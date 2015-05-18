class User < ActiveRecord::Base
  has_many :comments
  validates :name, presence: true
  validates_length_of :password, minimum: 6, on: :create
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
