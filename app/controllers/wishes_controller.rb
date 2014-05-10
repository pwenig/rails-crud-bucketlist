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

end