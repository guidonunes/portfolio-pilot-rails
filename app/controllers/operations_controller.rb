class OperationsController < ApplicationController
  before_action :set_operation, only: [:destroy]
  before_action :set_wallet, only: [:new, :create, :destroy]

  def new
    @operation = Operation.new
    @operation.wallet = @wallet
    authorize @operation
  end

  def create
    @operation = Operation.new(operation_params)
    @operation.wallet = @wallet
    authorize @operation
    if @operation.save
      redirect_to wallet_path(@wallet)
    else
      render :new
      @operation = Operation.new
    end
  end

  def destroy
    @operation.destroy
    authorize @operation
    redirect_to wallet_path(@wallet), notice: "You succesfully deleted the transaction"
  end

  private

  def set_wallet
    @wallet = Wallet.find(params[:wallet_id])
  end

  def operation_params
    params.require(:operation).permit(:holding_id, :quantity, :initial_price)
  end
end
