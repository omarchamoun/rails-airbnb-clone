class Registration < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_one :user
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


end
