class StagesController < ApplicationController
  before_action :authenticate_user!
  def index
    @stages = current_user.stages
  end

  def show
  end

  def new
    @stage = current_user.stages.new
  end

  def create
    @stage = current_user.stages.new(allowed_params)
    if @stage.save
      redirect_to stages_path
    else
      render 'new'
    end
  end

  def edit
    @stage = current_user.stages.find(params[:id])
  end

  def update
    @stage = current_user.stages.find(params[:id])
    if @stage.update_attributes(allowed_params)
      redirect_to stages_path
    else
      render 'edit'
    end
  end

  def destroy
    @stage = current_user.stages.find(params[:id])
    @stage.destroy
    redirect_to stages_path
  end

  private
    def allowed_params
      params.require(:stage).permit(:weight, :height, :neck, :shoulders, :chest, :biceps, :waist, :hips, :thighs)
    end
end
