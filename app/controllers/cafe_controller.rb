class CafeController < ApplicationController

  def new
  end

  def record
    @cafe = Cafe.new
    @cafe.title = params[:cafe][:title]
    @cafe.content = params[:cafe][:time]
    @cafe.img_url = params[:cafe][:image]
    @cafe.save
    
    redirect_to '/cafe/index'
  end

  def index
    @cafes = Cafe.all
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
    cafe.title = params[:cafe][:title]
    cafe.content = params[:cafe][:time]
    cafe.img_url = params[:cafe][:image]
    cafe.save
    
    redirect_to '/cafe/index'
  end
end
