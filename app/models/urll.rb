class Urll < ActiveRecord::Base
  has_and_belongs_to_many :categs
end
