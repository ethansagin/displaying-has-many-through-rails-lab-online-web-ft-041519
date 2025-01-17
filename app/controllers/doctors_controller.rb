class DoctorsController < ApplicationController
    def index
        @doctors = Doctor.all
    end

    def show
        set_doctor
    end

    private

    def set_doctor
        @doctor = Doctor.find_by(id: params[:id])
    end
end
