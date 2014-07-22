class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :artist
      t.text :description
      t.string :location

      t.timestamps
    end
  end
end
