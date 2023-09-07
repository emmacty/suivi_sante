class PagesController < ApplicationController
  def home
    session[:connexion_homepage] = session[:connexion_homepage].to_i + 1
  end

  def card
  end
end
