class Item < ApplicationRecord
  belong_to :User
  has_one_attached :image

end
