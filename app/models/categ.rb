class Categ < ActiveRecord::Base
  has_and_belongs_to_many :urlls
end
