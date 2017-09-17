class Song < ApplicationRecord
  has_many :my_songs, dependent: :destroy
end
