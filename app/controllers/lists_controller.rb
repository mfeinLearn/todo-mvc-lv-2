class ListsController < ApplicationController
  def index
    @list = List.new
    @lists = List.all
    # render 'lists/index.html.erb'
  end

  def show
    # I need to load the list
    # Which list?

    params # have all the data passed by a user
                  #   /lists/:id
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(list_params)
    @list.name = params[:list][:name]
    @list.save

    redirect_to list_url(@list)
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

end
