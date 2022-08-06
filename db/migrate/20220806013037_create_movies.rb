class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :content
      t.integer :status, default: 0
      t.timestamp :publish_at

      t.timestamps
    end
  end
end
