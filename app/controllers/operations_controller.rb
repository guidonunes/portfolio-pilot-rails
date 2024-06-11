class OperationsController < ApplicationController
  before_action :set_operation, only: [:destroy]
  def new
    @wallet = Wallet.find(params[:wallet_id])
    @operation = Operation.new
    @operation.wallet = @wallet
    authorize @operation
  end

  def create
    @wallet = Wallet.find(params[:wallet_id])
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
    redirect_to wallet_path(@wallet), notice: "You succesfully delete the transaction"
  end

  private

  def operation_params
    params.require(:operation).permit(:holding_id, :quantity, :initial_price)
  end
end
