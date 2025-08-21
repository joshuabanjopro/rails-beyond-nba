class ClubsController < ApplicationController
  def index
    @clubs = Club.all
  end

  def show
    @club = Club.find(params[:id])
  end

  def new
    @club = Club.new()
  end

  def create
    @club = Club.new(club_params)
    @club.save
    redirect_to club_path(@club)
  end

  def edit
    @club = Club.find(params[:id])
  end

  def update
    @club = Club.find(params[:id])
    @club.update(club_params)
    redirect_to club_path(@club)
  end

  def destroy
    @club = Club.find(params[:id])
    @club.destroy

    redirect_to clubs_path, status: :see_other
  end

  private

  def club_params
    params.require(:club).permit(:name, :location, :championships)
  end
end
