class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  belongs_to :department
  has_many :tickets
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
