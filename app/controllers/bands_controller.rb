class BandsController < ApplicationController
    def index
        # render plain: "hello"
        render json: Band.all
    end 

    def create
        # debugger
        band = Band.new(band_params)
        if band
            band.save
            redirect_to bands_url
        else
            flash[:error] = "That is an awful name for a band"
            redirect_to new_band_url
        end
    end

    def new
        render :new
    end 

    def edit
    end 

    def show
    end

    def update
    end 

    def destroy

    end 

    private

    def band_params
        params.require(:band).permit(:name)
    end
end
