class NecksController < ApplicationController
  def new
  end

  def create
    @guitar = Guitar.find(params[:guitar_id])
  end

  def edit
  end

  def update
  end
end
