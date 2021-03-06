class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :gender
  belongs_to :category
  belongs_to :user_type

  has_many :competitions


  validates_presence_of :first_name, :last_name, :email, :dob, :gender_id
  
end
