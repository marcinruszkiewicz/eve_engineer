class CreateCharacters < ActiveRecord::Migration[7.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :eveid
      t.string :thumbnail_url
      t.string :picture_url
      t.string :token
      t.string :refresh_token
      t.datetime :expires_at
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
