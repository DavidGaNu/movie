class CreatePelis < ActiveRecord::Migration[5.0]
  def change
    create_table :pelis do |t|
      t.string :title
      t.text :description
      t.string :movie_length
      t.string :director
      t.string :main_actor
      t.string :rating

      t.timestamps
    end
  end
end
