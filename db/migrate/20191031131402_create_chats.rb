class CreateChats < ActiveRecord::Migration[5.0]
  def change
    create_table :chats do |t|
      t.integer :messages_count, default: 0
      t.string :name
      t.references :app
      t.timestamps
    end
  end
end
