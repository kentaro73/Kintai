class AttendancesController < ApplicationController
  # before_action :authenticate_user!, only: [:create, :destroy, :update, :edit]
  

  def create
    @attendance = current_user.today_attendance
    is_clocked_in = clock_in?(@attendance)
    is_clocked_out = clock_out?(@attendance)

    if (!is_clocked_in && !is_clocked_out) || (is_clocked_in && is_clocked_out)
      @attendance = current_user.attendances.build(clock_in_at: Time.zone.now)
      flash[:success] = "出勤しました！おはようございます！"
    elsif is_clocked_in && !is_clocked_out
      @attendance.clock_out_at = Time.zone.now
      flash[:success] = "退勤しました！おつかれさまです！"
    end

    if @attendance.save
      redirect_to root_path
    else
      @feed_items = []
      flash.clear
      render 'static_pages/home'
    end
  end
end
