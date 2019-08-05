class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def new
    @foods = Food.all
  end

  def create
    food = Food.find(params[:id])
    name = food.name
    today = DateTime.now
    f_deadline = food.deadline
    e_deadline = today + f_deadline
    count = params[:count]
    @expiration = Expiration.new(name:name,count:count,deadline:e_deadline)
    @expiration.save
    redirect_to("/")
  end

  def edit
    @expiration = Expiration.find(params[:id])
  end

  def update
    @expiration = Expiration.find(params[:id])
    @expiration.count = params[:count]
    @expiration.save
    redirect_to("/")
  end

  def destroy
    @foods =Food.find(params[:id])
    @foods.destroy
    redirect_to("/foods/index")
  end

  def over
    @food_list=[]
    @expirations = Expiration.all
    @expirations.each do |expiration|
      if expiration.deadline < DateTime.now
        @food_list << [expiration.name,expiration.count,expiration.deadline.strftime("%Y-%m-%d %H:%M"),expiration.created_at.strftime("%Y-%m-%d %H:%M")]
      end
    end
  end
end
