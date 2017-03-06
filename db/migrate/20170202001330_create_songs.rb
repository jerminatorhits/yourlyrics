class CreateSongs < ActiveRecord::Migration[5.0]
  def change
  # Comment out this block if you have migration issues
    create_table :songs do |t|
      t.string :tid
      t.integer :mxmid
      t.string :title
      t.string :artist
      t.text :lyrics_hash

      t.timestamps
  # Up til here
    end

  end
end
