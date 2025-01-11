class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def index
    @lists = List.all
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to lists_path
    else
      render :new
    end
  end

  def show
    @list = List.find(params[:id])
    puts @list
    puts "what I print out is above"
    @movies = @list.movies
    puts @movies
    puts "what I print out is above"
    @bookmark = Bookmark.new
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
