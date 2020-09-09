class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.float :budget
      t.string :company
      t.string :country
      t.string :director
      t.string :genre
      t.float :gross
      t.string :rating
      t.string :name
      t.float :score
      t.integer :year
      t.date :released
      t.integer :runtime

      t.timestamps
    end
  end
end
