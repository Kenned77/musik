class Song < ApplicationRecord
  has_many :my_songs, dependent: :destroy
  has_many :song_links, dependent: :destroy
end
