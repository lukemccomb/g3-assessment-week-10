class GifController < ApplicationController

  def new
    @gif = Gif.new
    render :new
  end

  def create
    @gif = Gif.new(url: "#{params[:url]}", title: "#{params[:title]}")
    if @gif.save
      flash[:notice] = "gif created successfully"
      redirect_to root_path
    else
      render :new
    end
  end

end