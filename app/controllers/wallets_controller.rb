class WalletsController < ApplicationController
  before_action :set_wallet, only: %i[show edit update destroy]

  def index
    @wallets = policy_scope(Wallet)
    @wallet_totals = calculate_wallet_totals(@wallets)
  end

  def show
    @wallet = Wallet.find(params[:id])
    @total_holdings = @wallet.total_holdings_value
    @all_time_profit = @wallet.all_time_profit
    performers = @wallet.best_and_worst_performers
    @percentage_change_total_holdings = @wallet.percentage_change_total_holdings
    @best_performer = performers[:best]
    @worst_performer = performers[:worst]
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
    redirect_to wallets_path, notice: "You succesfully deleted the wallet"
  end

  private

  def set_wallet
    @wallet = Wallet.find(params[:id])
    authorize @wallet
  end

  def wallet_params
    params.require(:wallet).permit(:name)
  end

  def calculate_wallet_totals(wallets)
    wallets.map do |wallet|
      wallet.operations.sum { |op| op.price * op.quantity }
    end
  end
end
