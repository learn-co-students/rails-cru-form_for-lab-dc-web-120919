class ArtistsController < ApplicationController
    before_action :find_id, only: [:show, :edit, :update]

    def show
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.create(artist_params)
        redirect_to artist_path(@artist)
    end

    def edit
    end

    def update
        @artist.update(artist_params)
        redirect_to artist_path(@artist)
    end
    
    private

    def find_id
        @artist = Artist.find(params[:id])
    end

    def artist_params
        params.require(:artist).permit(:name, :bio)
    end
end
