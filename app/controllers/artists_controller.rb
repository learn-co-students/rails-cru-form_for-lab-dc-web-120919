class ArtistsController < ApplicationController

    def index
      @artist = Artist.all
    end

    def show
      @artist = Artist.find(params[:id])
    end

    def new
      @artist = Artist.new
    end

    def create
      @artist = Artist.new(params.require(:artist).permit(:name))
      # @artist.name = params[:name]
      # @artist.bio = params[:bio]
      @artist.save
      redirect_to artist_path(@artist)
    end

    def edit
      @artist = Artist.find(params[:id])
    end

    def update
      @artist = Artist.find(params[:id])
      @artist = Artist.update(params.require(:artist).permit(:name))
      redirect_to artist_path(@artist)
    end


    private

		def artist_params
			params.require(:artist).permit(:name, :bio)
		end
end
