class Outfit < ApplicationRecord
  belongs_to :user
  has_many_attached :photos

  SIZE = ['S', 'M', 'L']
  validates_inclusion_of :size, :in => SIZE

end
