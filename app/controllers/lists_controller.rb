class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def index
    @lists = List.all
  end

  def create
    @list = List.new(list_params)
    puts @list.photo
    puts "what I print out is above"
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

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    respond_to do |format|
      format.html { redirect_to lists_path, notice: "List was successfully destroyed." }
    end
  end

  private

  def list_params
    params.require(:list).permit(:name, :photo)
  end
end
