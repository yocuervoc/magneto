class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :url
      t.date :date
      t.integer :chairs

      t.timestamps
    end
  end
end
