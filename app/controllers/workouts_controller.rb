class WorkoutsController < ApplicationController
  before_action :authenticate_user!
  def index
    @workouts = Workout.all
  end

  def show
    @workout = Workout.find(params[:id])
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(allowed_params)

    if @workout.save
      redirect_to workouts_path
    else
      render 'new'
    end
  end

  def edit
    @workout = Workout.find(params[:id])
  end

  def update
    @workout = Workout.find(params[:id])
    if @workout.update_attributes(allowed_params)
      redirect_to workouts_path
    else
      render 'new'
    end
  end

  def destroy
    @workout = Workout.find(params[:id])
    @workout.destroy
    redirect_to workouts_path
  end

  private
 def allowed_params
     params.require(:workout).permit(:id, :name)
 end

end
