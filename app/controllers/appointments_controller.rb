class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :edit, :update]

  def index
    @appointments = Appointment.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  private
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

end
