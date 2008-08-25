class MakemeadminController < ApplicationController

  def index
  end

  def yes
    session[:meadmin] = true
  end

  def no
    session[:meadmin] = false
  end
end

