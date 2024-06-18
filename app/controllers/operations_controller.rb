class OperationsController < ApplicationController
  before_action :set_operation, only: [:edit, :update, :destroy]
  before_action :set_wallet, only: [:new, :create]

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

  def edit
  end

  def update
    if @operation.update(operation_params)
      redirect_to wallet_path(@operation.wallet)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @operation.destroy!
    redirect_to wallet_path(@operation.wallet), notice: "You succesfully deleted the transaction"
  end

  private

  def set_operation
    @operation = Operation.find(params[:id])
    authorize @operation
  end

  def set_wallet
    @wallet = Wallet.find(params[:wallet_id])
  end

  def operation_params
    params.require(:operation).permit(:holding_id, :quantity, :price)
  end
end
