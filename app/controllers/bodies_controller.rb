class BodiesController < ApplicationController
  def new
    @guitar = Guitar.find(params[:guitar_id])
    @body = Body.new
  end

  def create
    @body = Body.new(body_params)
    @body.guitar = params[:guitar_id]
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
end
