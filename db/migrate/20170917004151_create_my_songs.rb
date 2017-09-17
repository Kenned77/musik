class CreateMySongs < ActiveRecord::Migration[5.1]
  def change
    create_table :my_songs do |t|
      t.references :user, foreign_key: true
      t.references :song, foreign_key: true

      t.timestamps
    end
  end
end
