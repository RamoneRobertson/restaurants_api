class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy

  normalizes :email_address, with: ->(e) { e.strip.downcase }

  encrypts :private_api_key
  blind_index :private_api_key

  before_create :set_private_api_key
  validates :private_api_key, uniqueness: true, allow_blank: true

  private

  def set_private_api_key
    self.private_api_key = SecureRandom.hex if self.private_api_key.nil?
  end
end
