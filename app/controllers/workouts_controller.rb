class WorkoutsController < ApplicationController
  before_action :authenticate_user!
  def index
    @workouts = Workout.all
  end

  def show
    @workout = Workout.find(params[:number])
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
    @workout = Workout.find(params[:number])
  end

  def update
    @workout = Workout.find(params[:number])
    if @workout.update_attributes(allowed_params)
      redirect_to workouts_path
    else
      render 'new'
    end
  end

  def destroy
    @workout = Workout.find(params[:number])
    @workout.destroy
    redirect_to workouts_path
  end

  private
 def allowed_params
     params.require(:workout).permit(:number, :name)
 end

end
