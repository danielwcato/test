class GuestsController < ApplicationController
  
  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
  end

  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.new(article_params)

    if @guest.save
      redirect_to @guest
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @guest = Guest.find(params[:id])
  end

  def update
    @guest = Guest.find(params[:id])

    if @guest.update(article_params)
      redirect_to @guest
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @guest = Guest.find(params[:id])
    @guest.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def article_params
      params.require(:guest).permit(:name, :email)
    end
end