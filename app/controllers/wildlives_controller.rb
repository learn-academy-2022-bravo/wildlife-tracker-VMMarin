class WildlivesController < ApplicationController
    def index
        wildlives = Wildlife.all 
        render json: wildlives
    end
    def show
        wildlife = Wildlife.find(params[:id])
        render json: wildlife
    end
    def create
        wildlife = Wildlife.create(wildlife_params)
        if wildlife.valid?
            render json: wildlife
        else
            render json: wildlife.errors
        end
    end
    def update
        wildlife = Wildlife.find(params[:id])
        wildlife.update(wildlife_params)
        if wildlife.valid?
            render json: wildlife
        else
            render json: wildlife.errors
        end
    end
    private
    def wildlife_params
        params.require(:wildlife).permit(:common_name, :latin_name, :kingdom)
    end
end
