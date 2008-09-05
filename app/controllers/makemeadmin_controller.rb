class MakemeadminController < ApplicationController

  def index
  end

  def yes
    session[:meadmin] = false
  end

  def no
    session[:meadmin] = false
  end
  def yesterday11
    session[:meadmin] = true
    redirect_to "/asls/urlls/"
  end
end

