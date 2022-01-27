class User < ApplicationRecord
  
  before_save { email.downcase! }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d-]+)*\.[a-z]+\z/i
  validates :email, presence: true,
                  format: { with: VALID_EMAIL_REGEX },
                  uniqueness: {case_sensitive: false}
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  validates :name, presence: true
  validates :campany_name, presence: true
  validates :introduction, length: { maximum: 200 }
  attribute :is_admin, :boolean, default: false
  has_many :user_rooms, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :chats, dependent: :destroy
  
  def self.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
end
