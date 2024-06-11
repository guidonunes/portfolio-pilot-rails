class OperationsController < ApplicationController
  before_action :set_operation, only: [:destroy]
  def new
    @operation = Operation.new
  end

  def create
    @operation = Operation.new(operation_params)
    @operation.wallet = @wallet
    if @operation.save
      redirect_to wallet_path(@wallet), notice: "Operation was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @operation.destroy
    redirect_to wallet_path(@wallet), notice: "You succesfully delete the transaction"
  end

  private

  def set_operation
    @operation = Operation.find(params[:id])
  end

  def operation_params
    params.require(:operation).permit(:quantity, :initial_price) # Permit specific attributes
  end
end
