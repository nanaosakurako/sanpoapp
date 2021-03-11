class AreasController < ApplicationController
    before_action:authenticate_user
    def index
        @areas = Area.all
    end
    def show
        @user = User.find_by(id: params[:id])
        @area = Area.find_by(id: params[:id])
    end
end