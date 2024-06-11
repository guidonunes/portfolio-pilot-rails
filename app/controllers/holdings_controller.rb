class HoldingsController < ApplicationController
  def index
    # @holdings = Holding.all
    @holdings = policy_scope(Holding)
  end

  def show
    @holding = Holding.find(params[:id])
    authorize @holding
  end
end


# As an user I can see a holding(asset)
# As an user I can add a chosen holding to a wallet
