class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  private

    def clock_in?(attendance)
      return false if attendance.nil?
      !attendance.clock_in_at.nil?
    end

    def clock_out?(attendance)
      return false if attendance.nil?
      !attendance.clock_out_at.nil?
    end
end
