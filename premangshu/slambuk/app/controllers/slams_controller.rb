class SlamsController < ApplicationController
before_action :set_user, only: [:show, :edit, :update, :destroy]
def index
@slams = Slam.all
end
def new
@slam = Slam.new
end
def show
end
def create
@slam = Slam.create(slam_params)
flash[:notice]="record saved"
    redirect_to action: :index, notice: 'Record saved'
end
def edit
@slama= Slam.find(params[:id])
end
def update
@data=Slam.find(params[:id])
@data.update(slam_params)
flash[:notice]= "Record saved"
redirect_to action: :index
end
def destroy
@data=Slam.find(params[:id])
@data.destroy
flash[:notice]= "Record deleted"
redirect_to action: :index

end
def slam_params
      params.require(:slam).permit(:name, :email, :passyear)
    end
def set_user
      @slam = Slam.find(params[:id])
    end   
end
