class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         validates :password, confirmation: true
         validates :nickname, length: { maximum: 10 }
         validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
         validates :password, :email, :nickname, presence:true

    has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>", small: "50x50>" }, default_url: "/images/Default.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/


  has_many :posts     
  has_many :postcomments  


  
end
