class WalletsController < ApplicationController

  def new
    @wallet = Wallet.new
  end

  def create
    @wallet = Wallet.new(params[:wallet_params])
    @wallet.user = current_user
    if @wallet.save
      redirect_to @wallet, notice: "Wallet was successfully created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def wallet_params
    params.require(:wallet).permit(:name, :user_id)
  end
end
