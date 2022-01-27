class Message < ApplicationRecord
  validates :message, presence: true,
                      length: { maximum: 200 }
  attribute :is_admin_message, :boolean, default: false
  belongs_to :user
end
