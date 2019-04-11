class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  MONTHS = { 1 => 'January',
    2 => 'Febrauary',
    3 => 'March',
    4 => 'April',
    5 => 'May',
    6 => 'June',
    7 => 'July',
    8 => 'August',
    9 => 'September',
    10 => 'October',
    11 => 'November',
    12 => 'December'}


  def get_date
    datetime = self['appointment_datetime']
    datetime = datetime[0..9]
    year = datetime[0..3]
    day = datetime[8..9]
    month_number = datetime[5..6].to_i
    month = MONTHS[month_number]
    date = month+' '+day+', '+year
  end

  def get_time
    time = self['appointment_datetime'][11..15]
    return time
  end
end
