class BodiesController < ApplicationController
  def new
    @guitar = Guitar.find(params[:guitar_id])
    @body = Body.new
  end

  def create
    @body = Body.new(body_params)
    @guitar = Guitar.find(params[:guitar_id])
    @body.guitar = @guitar
    if @body.save
      redirect_to new_guitar_neck_path(@guitar, @neck)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  private

  def body_params
    params.require(:body).permit(
      :back_wood,
      :binding,
      :body_type,
      :construction,
      :finish_type,
      :strap_button_type,
      :top_wood,
      :weight_relief_type
    )
  end
end

