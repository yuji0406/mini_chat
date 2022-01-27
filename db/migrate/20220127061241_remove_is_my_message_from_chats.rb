class RemoveIsMyMessageFromChats < ActiveRecord::Migration[5.2]
  def change
    remove_column :chats, :is_my_message, :boolean
    add_reference :chats, :user, foreign_key: true
  end
end
