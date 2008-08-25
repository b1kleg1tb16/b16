class As::CategsController < ApplicationController
  # I want to redirect you away from here if you are not admin
  before_filter :redirect_ifnot_admin
  layout 'nada'
  # active_scaffold creates powerful JS based forms.  See http://activescaffold.com
  active_scaffold do |config|
    config.label = "Categories"
    config.list.columns = [:urlls, :name, :created_at, :updated_at]
    config.list.per_page = 99
#    config.list.sorting = [{ :name => :asc}]
#    config.actions = [:list, :show]
  end
end

