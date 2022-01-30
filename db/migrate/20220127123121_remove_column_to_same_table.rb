class RemoveColumnToSameTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :messages, :is_admin_message, :boolean
    remove_column :users, :campany_name, :string
    remove_column :users, :is_admin, :boolean
  end
end
