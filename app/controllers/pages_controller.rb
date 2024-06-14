class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home about]

  def home
    @holdings = Holding.all
  end

  def about
  end
end
