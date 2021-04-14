class WeathersController < ApplicationController
    
    before_action :set_weather, only: [:show, :edit, :update, :destroy]
    
    def index
        @weather = Weather.all
    end
    
    def show
    end
    
    def new
        @weather = Weather.new
    end
    
    def create
        weather_params = params.require(:weather).permit(:day, :weather, :temperture, :rainy_percent)
        @weather = Weather.new(weather_params)
        if @weather.save
            flash[:notice] = "天気のデータを一件登録しました。"
        redirect_to weathers_path
        else
            flash[:alert] = "データの登録に失敗しました。"
        render :new
        end
    end
    
    def edit
    end
    
    def update
        weather_params = params.require(:weather).permit(:day, :weather, :temperture, :rainy_percent)
        if @weather.update(weather_params)
            flash[:notice] = "データを一件更新しました。"
            redirect_to weathers_path
        else
            flash.now[:alert] = "データの更新に失敗しました。"
            render :edit
        end
    end
    
    def destroy
        @weather.destroy
        flash[:notice] = "削除しました。"
        redirect_to weathers_path
    end
    
    private
    
    def set_weather
        @weather = Weather.find(params[:id])
    end
end