class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient


  def human_readable_date
    appointment_datetime.strftime("%B %e, %Y at %k:%M")
  end

end
