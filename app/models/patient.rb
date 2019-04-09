class Patient < ApplicationRecord
  has_many :appointments
  has_many :doctors, through: :appointments

  def appointments_count
    self.appointments ? appointments.count : 0
  end
end
