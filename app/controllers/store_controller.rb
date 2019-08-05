class StoreController < ApplicationController
  def index
    @store = Store.all
  end

  def destroy
    @store = Store.find(params[:id])
    @store.destroy
    redirect_to("/store/index")
  end

  def destroy_all
    @stores = Store.all
    @stores.destroy_all
    redirect_to("/store/index")
  end
end
