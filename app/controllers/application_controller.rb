class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller? 


  private

    def clock_in?(attendance)
      return false if attendance.nil?
      !attendance.clock_in_at.nil?
    end

    def clock_out?(attendance)
      return false if attendance.nil?
      !attendance.clock_out_at.nil?
    end

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up,keys:[:email]) # 注目
    end
end
