class WishesController < ApplicationController

  def index
    @bucket = Wish.all
  end

  def new
    @bucket = Wish.new
  end

  def create
    @bucket = Wish.new
    @bucket.wish = params[:wish]
    @bucket.description = params[:description]
    @bucket.save
    redirect_to '/'
  end

  def show
    @bucket = Wish.find(params[:id])
  end

  def edit
    @bucket = Wish.find(params[:id])
  end

  def update
    @bucket = Wish.find(params[:id])
    @bucket.wish = params[:wish]
    @bucket.description = params[:description]
    @bucket.save
    redirect_to '/'
  end

  def destroy
    Wish.find(params[:id]).delete
    redirect_to '/'
  end
end