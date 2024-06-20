class OperationsController < ApplicationController
  before_action :set_operation, only: [:new, :edit, :update, :destroy, :render_oedit]
  before_action :set_wallet, only: [:new, :create]
  skip_forgery_protection only: [:render_oedit]

  def new
    @operation = Operation.new
    @operation.wallet = @wallet
    authorize @operation
  end

  def create
    @operation = @wallet.operations.find_by(holding_id: operation_params[:holding_id])
    if @operation
      authorize @operation
      update_existing_operation(@operation, operation_params)
    else
      @operation = Operation.new(operation_params)
      @operation.wallet = @wallet
      authorize @operation
      if @operation.save
        redirect_to wallet_path(@wallet)
      else
        flash[:alert] = "Ouch! Invalid Asset Name"
        redirect_to new_wallet_operation_path(@wallet)
      end
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
    redirect_to wallet_path(@operation.wallet), notice: "You successfully deleted the transaction"
  end

  def render_oedit
    respond_to do |format|
      format.json {
        render json: {
          content: render_to_string(
            partial: 'oedit',
            formats: :html,
            locals: { operation: @operation })
        }
      }
    end
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

  def update_existing_operation(operation, params)
    new_quantity = operation.quantity + params[:quantity].to_f
    new_total_investment = (operation.quantity * operation.price) + (params[:quantity].to_f * params[:price].to_f)
    new_price = new_total_investment / new_quantity

    operation.update(quantity: new_quantity, price: new_price)
    redirect_to wallet_path(operation.wallet)
  end
end
