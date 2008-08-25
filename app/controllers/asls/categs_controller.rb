class Asls::CategsController < ApplicationController
  # active_scaffold creates powerful JS based forms.  See http://activescaffold.com
  active_scaffold do |config|
    config.label = "A Category has-and-belongs-to-many URLs"
    config.actions = [:list, :show, :search]
    config.columns[:name].label = "This Category"
    config.columns[:urlls].label = "Has These URLs"
    config.list.columns = [:name, :urlls]
    config.list.per_page = 99
    # config.list.sorting = [{ :name => :asc}]
  end
end
