class Player < ApplicationRecord
  belongs_to :team
  delegate :name, :to => :team, :prefix => true, :allow_nil => true
end