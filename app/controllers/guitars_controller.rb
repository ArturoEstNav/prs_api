class GuitarsController < ApplicationController
  def new
    @guitar = Guitar.new
  end

  def create
    @guitar = Guitar.new(guitars_params)
    if @guitar.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  private

  def guitars_params
    params.require(:guitar).permit(
      :brand, 
      :model, 
      :weight,
      :string_number, 
      :unique_characteristics 
    )
  end
end
