class MusicsController < ApplicationController
  def index
    @musics = Music.all
  end

  def new
    @music = Music.new
  end

  def create
    @music = Music.new(set_params)
    if @music.save!
      redirect_to musics_path
    else
      render 'new'
    end
  end

  def show
    @title = params[:title]
    @url = params[:url]

    @music = Music.find(params[:id])
    @posts = @music.posts.order(created_at: :desc).page(params[:page]).per(5)
    @post = @music.posts.build
    respond_to do |format|
      format.js{render :show} 
      format.html
    end    
  end

  def destroy
    @music = Music.find(params[:id])

  end

  private

  def set_params
    params.require(:music).permit(:title, :url, :image)
  end

end
