class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  after_create :creatingProfileForUser       
  has_one :profile, dependent: :destroy


  def creatingProfileForUser
    create_profile if profile.nil?
  end
end
