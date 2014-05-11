class WishesController < ApplicationController

  def index
    @bucket = Wish.all
  end

  def new

  end

  def create
    create_bucket = Wish.new
    create_bucket.wish = params[:wish]
    create_bucket.description = params[:description]
    create_bucket.save
    redirect_to '/'


  end

  def show
    @bucket = Wish.find(params[:id])
  end

  def edit
    @bucket = Wish.find(params[:id])
  end

  def update
    update_bucket = Wish.find(params[:id])
    update_bucket.wish = params[:wish]
    update_bucket.description = params[:description]
    update_bucket.save
    redirect_to '/'
  end

  def destroy
    @bucket = Wish.find(params[:id])
   @bucket.destroy
    redirect_to '/'
  end
end