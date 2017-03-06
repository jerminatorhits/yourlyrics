class Cipher < ApplicationRecord
  belongs_to :Song
  validates_presence_of :word
  validates_numericality_of :bag_id
end
