class CreateChats < ActiveRecord::Migration[5.2]
  def change
    create_table :chats do |t|
      t.string :chat_message
      t.boolean :is_my_message

      t.timestamps
    end
  end
end
