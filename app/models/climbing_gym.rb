require 'pry'

class ClimbingGym < ActiveRecord::Base

  belongs_to :owner

  validates :name, :presence => true
  validates :owner_id, :presence => true

  def scream_word(word)
    word.upcase
  end

  def self.double_that_shit
    ClimbingGym.count * 2
  end


end
