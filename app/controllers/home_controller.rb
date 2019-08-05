class HomeController < ApplicationController
  def index
    @expirations = Expiration.all
  end

  def show
  end

  def new
    @food = Food.new
  end

  def create
    @food= Food.new(id:params[:id],name:params[:name],deadline:params[:deadline])
    @food.save
    redirect_to("/foods/index")
  end

  def edit
    @food = Food.find(params[:id])
  end

  def destroy
    @expiration = Expiration.find(params[:id])
    store = Store.new
    store.name = @expiration.name
    store.count = @expiration.count
    store.deadline = @expiration.deadline
    store.save
    @expiration.destroy
    redirect_to("/")
  end

  def update
    @food = Food.find(params[:id])
    @food.name = params[:name]
    @food.deadline= params[:deadline]
    @food.save
    redirect_to("/foods/index")
  end

end
