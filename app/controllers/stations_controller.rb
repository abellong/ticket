# -*- coding: utf-8 -*-
class StationsController < ApplicationController
  def index
    # Station list
    @stations = Station.all
  end

  def new
    @station = Station.new
  end

  def create
    @station = Station.new(params.require(:station).permit(:name, :city, :province))
    if @station.save
      flash[:success] = "创建站点成功！"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    # show a station
    @station = Station.find(params[:id])
  end

  def edit
    # the page to edit a station
    @station = Station.find(params[:id])
  end
  
  def update
    # edit a station
    @station = Station.find(params[:id])
    if @station.update_attributes(params.require(:station).permit(:name, :city, :province))
      flash[:success] = "编辑成功"
      redirect_to @station
    else
      render 'edit'
    end
  end

  def destroy
    @station = Station.find(params[:id])
    @station.destroy
    redirect_to root_url
    # delete a station
  end
end
