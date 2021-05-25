class GuitarsController < ApplicationController
  def new
    @guitar = Guitar.new
  end

  def show
  end

  def index
  end

  def create
    @guitar = Guitar.new(guitars_params)
    if @guitar.save
      new_guitar_neck_path(@guitar)
    else
      render :new
    end
  end

  def edit
    @neck = Neck.new
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
