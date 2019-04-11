class PatientsController < ApplicationController

  def index
    @patients = Patient.all
  end

  def show

    if Patient.exists?(params[:id])
      @patient = Patient.find(params[:id])
    else
      redirect_to patients_path(@patients)
    end
  end

end
