class As::UrllsController < ApplicationController
  # I want to redirect you away from here if you are not admin
  before_filter :redirect_ifnot_admin
  layout 'nada'
  active_scaffold do |config|
    config.label = "URLs"
    config.columns[:ddesc].label = "Description"
    config.columns[:uurl].label = "URL"
    config.list.columns = [:categs, :uurl, :name, :ddesc, :created_at, :updated_at]
    config.list.per_page = 99
  end
end

