class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :campany_name
      t.text :introduction
      t.string :user_image_id
      t.boolean :is_admin
      t.string :password_digest
      t.string :remember_digest

      t.timestamps
    end
  end
end
