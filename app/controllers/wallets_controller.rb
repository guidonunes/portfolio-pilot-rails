class WalletsController < ApplicationController
  def destroy
    @wallet.destroy!
  end
end
