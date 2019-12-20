class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show, :edit, :update]

  def index
    @doctors = Doctor.all
  end

  def show
    # byebug
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
    def set_doctor
      @doctor = Doctor.find(params[:id])
    end

end
