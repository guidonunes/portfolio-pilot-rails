class HoldingsController < ApplicationController
  def index
    @holdings = Holding.all
  end

  def show
    @holding = Holding.find(params[:id])
  end
end


#As an user I can see a holding(asset)
#As an user I can add a chosen holding to a wallet
