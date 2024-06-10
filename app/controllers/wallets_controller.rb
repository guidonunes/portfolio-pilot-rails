class WalletsController < ApplicationController

  def index
    @wallets = Wallet.all
  end

  def show
    @wallet = Wallet.find(params[:id])
  end

  def edit
    @wallet = Wallet.find(params[:id])
  end

  def update
    if @wallet.update(wallet_params)
      redirect_to @wallet, notice: 'Wallet has been successfully updated.', status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end

  def destroy
    @wallet = Wallet.find(params[:id])
    @wallet.destroy!
    redirect_to wallets_path
  end
end
