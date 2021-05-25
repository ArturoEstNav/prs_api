class NecksController < ApplicationController
  def new
    @guitar = Guitar.find(params[:guitar_id])
    @neck = Neck.new
  end

  def create
    @neck = Neck.new(neck_params)
    @guitar = Guitar.find(params[:guitar_id])
    @neck.guitar = @guitar
    if @neck.save
      redirect_to new_guitar_electronic_spec_list_path(@guitar, electronic_spec_list)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  private

  def neck_params
    params.require(:neck).permit(
      :binding,
      :construction,
      :depth_first_fret,
      :depth_twelfth_fret,
      :finish_type,
      :fret_material,
      :fret_number,
      :fretboard_radius,
      :fretboard_wood,
      :guitar_id,
      :headstock_angle,
      :inlay_style,
      :neck_profile,
      :neck_wood,
      :nut_type,
      :side_inlay_style,
      :scale_length,
      :truss_rod_type,
      :width_first_fret,
      :width_twelfth_fret
    )
  end
end

