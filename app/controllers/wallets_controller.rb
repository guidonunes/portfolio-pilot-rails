class WalletsController < ApplicationController

  def index
    @wallets = Wallet.all
  end

  def show
    @wallet = Wallet.find(params[:id])
  end

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

  def destroy
    @wallet = Wallet.find(params[:id])
    @wallet.destroy!
    redirect_to wallets_path
  end

  private

  def wallet_params
    params.require(:wallet).permit(:name)
  end
end
