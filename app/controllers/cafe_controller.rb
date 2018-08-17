class CafeController < ApplicationController

  def new
  end

  def record
    @cafe = Cafe.new
    @cafe.cafename = params[:cafe][:cafename]
    @cafe.time = params[:cafe][:time]
    @cafe.recommend = params[:cafe][:recommend]
    @cafe.img_url = params[:cafe][:img_url]
    @cafe.save
    
    redirect_to '/cafe/index'
  end

  def index
    @caves = Cafe.all
  end

  def destroy
    cafe = Cafe.find(params[:cafe_id])
    cafe.destroy

    redirect_to '/cafe/index'
  end

  def edit
    @cafe = Cafe.find(params[:cafe_id])
  end

  def update
    cafe = Cafe.find(params[:cafe_id])
    cafe.cafename = params[:cafe][:cafename]
    cafe.time = params[:cafe][:time]
    cafe.recommend = params[:cafe][:recommend]
    cafe.img_url = params[:cafe][:img_url]
    cafe.save
    
    redirect_to '/cafe/index'
  end
end
