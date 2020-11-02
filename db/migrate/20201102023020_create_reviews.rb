class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :content
      t.string :genre
      t.text :img_url

      t.timestamps
    end
  end
end
