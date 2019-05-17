class StagesController < ApplicationController
  def index
    @stages = Stage.all
  end

  def show
  end

  def new
    @stage = Stage.new
  end

  def create
    @stage = Stage.new(allowed_params)

    if @stage.save
      redirect_to stages_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def allowed_params
      params.require(:stage).permit(:weight, :height, :neck, :shoulders, :chest, :biceps, :waist, :hips, :thighs)
    end
end
