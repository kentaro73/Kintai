class StaticPagesController < ApplicationController
  # before_action :authenticate_user!
  
  def home
    if user_signed_in?
      @attendance = current_user.attendances.new
      @feed_items = current_user.today_feed
      last_attendance = current_user.today_attendance
      @is_clocked_in = clock_in?(last_attendance)
      @is_clocked_out = clock_out?(last_attendance)
    end
  end

end
