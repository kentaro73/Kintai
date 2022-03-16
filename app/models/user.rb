class User < ApplicationRecord
  has_many :attendances, dependent: :destroy
  # has_secure_password
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  
  def today_feed
    Attendance.where(created_at: Time.zone.today.beginning_of_day..Time.zone.today.end_of_day)
  end

  def today_attendance
    Attendance.where(created_at: Time.zone.today.beginning_of_day..Time.zone.today.end_of_day, user_id: id).first
  end
  
end
