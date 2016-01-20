class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title
      t.string :summary
      t.string :url
      t.string :entry_id
      t.datetime :published
      t.integer :user_id

      t.timestamps
    end
  end
end
