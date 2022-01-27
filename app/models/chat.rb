class Chat < ApplicationRecord
    belongs_to :room
    belongs_to :user
    validates :chat_message, length: { maximum: 60 }
    
end
