class Participation < ApplicationRecord
  after_create :attendance_send

  def attendance_send
    UserMailer.welcome_email(self).deliver_now
  end
end
