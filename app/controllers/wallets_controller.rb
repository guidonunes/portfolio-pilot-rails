class WalletsController < ApplicationController

  def edit
    @wallet = Wallet.find(params[:id])
  end

  def update
    if @wallet.update(wallet_params)
      redirect_to @wallet, notice: 'Wallet has been successfully updated.', status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end
end
