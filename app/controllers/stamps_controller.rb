class StampsController < ApplicationController
  def index
    @stamps = Stamp.all
  end

  def new
    @stamp = Stamp.new
  end

  def create
    @stamp = Stamp.new(stamp_params)
    # arrive = arrive?(@stamp)
    # leave = leave?(@stamp)

    # if (!arrive && !leave) || (arrive && leave)
    #   @stamp = current_user.stamps.build()
    # end
    if @stamp.save
      redirect_to stamps_url, notice: "#{@stamp.stamping.in_time_zone('Tokyo').strftime('%m月%d日 %H:%M')}"
    else
      render :new
    end
  end

  private

    def stamp_params
      params.require(:stamp).permit(:stamping, :arrive_flg)
    end
end
