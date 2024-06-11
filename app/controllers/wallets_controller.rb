class WalletsController < ApplicationController
  before_action :set_wallet, only: %i[show edit update destroy]

  def index
    @wallets = policy_scope(Wallet)
  end

  def show
  end

  def new
    @wallet = Wallet.new
    authorize @wallet
  end

  def create
    @wallet = Wallet.new(wallet_params)
    authorize @wallet
    @wallet.user = current_user
    if @wallet.save
      redirect_to @wallet, notice: "Wallet was successfully created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @wallet.update(wallet_params)
      redirect_to @wallet, notice: 'Wallet has been successfully updated.', status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @wallet.destroy!
    redirect_to wallets_path
  end

  private

  def set_wallet
    @wallet = Wallet.find(params[:id])
    authorize @wallet
  end

  def wallet_params
    params.require(:wallet).permit(:name)
  end
end
