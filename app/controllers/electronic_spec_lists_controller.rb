class ElectronicSpecListsController < ApplicationController
  def new
    @guitar = Guitar.find(params[:guitar_id])
    @electronic_spec_list = ElectronicSpecList.new
  end

  def create
    @guitar = Guitar.find(params[:guitar_id])
    @electronic_spec_list = ElectronicSpecList.new(electronic_params)
    @electronic_spec_list.guitar = @guitar
    if @electronic_spec_list.save
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

  def electronic_params
    params.require(:electronic_spec_list).permit(
      :switch_type,
      :electronic_list,
      :capacitor_values,
      :potentiometer_values
    )
  end
end
