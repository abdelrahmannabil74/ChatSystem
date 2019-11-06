class CreateApps < ActiveRecord::Migration[5.0]
  def change
    create_table :apps do |t|
      t.string :name, nullable: true
      t.string :token, unique: true
      t.integer :chats_count, :default => 0


      t.timestamps
    end
  end
end
