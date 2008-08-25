class Asls::UrllsController < ApplicationController
  # active_scaffold creates powerful JS based forms.  See http://activescaffold.com
  active_scaffold do |config|
    config.label = "A URL has-and-belongs-to-many Categories"
    config.columns[:uurl].label = "This URL"
    config.columns[:name].label = "Has This Name"
    config.columns[:ddesc].label = "And This Description"
    config.columns[:categs].label = "And These Categories"
    config.list.columns = [:uurl, :name, :ddesc, :categs]
    config.actions = [:list, :show, :search]
    config.list.per_page = 99
    # config.list.sorting = [{ :categs => :desc}, {:uurl => :desc}]
  end
end
