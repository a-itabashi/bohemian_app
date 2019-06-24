class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.references :music, foreign_key: true
      t.string :content, null: false

      t.timestamps
    end
  end
end
