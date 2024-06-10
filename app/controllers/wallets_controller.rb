class WalletsController < ApplicationController
  def index
    @wallets = Wallet.all
  end

  def show
    @wallet = Wallet.find(params[:id])
  end

  def destroy
    @wallet = Wallet.find(params[:id])
    @wallet.destroy!
    redirect_to wallets_path
  end
end
