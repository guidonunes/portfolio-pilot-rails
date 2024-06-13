class HoldingsController < ApplicationController
  def index
    # @holdings = Holding.all
    @holdings = policy_scope(Holding)
  end

  def show
    @holding = Holding.find(params[:id])
    authorize @holding
  end

  def new
    @holding = Holding.new
  end

  def create
    @holding = Holding.new(holding_params)
    @holding.save!
  end

  private

  def holding_params
    params.requiere(:holding).permit(:name, :price, :asset_type)
  end
end


# As an user I can see a holding(asset)
# As an user I can add a chosen holding to a wallet
