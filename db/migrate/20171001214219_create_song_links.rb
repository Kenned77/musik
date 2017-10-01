class CreateSongLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :song_links do |t|
      t.string :url
      t.text :notes
      t.references :song, foreign_key: true

      t.timestamps
    end
  end
end
