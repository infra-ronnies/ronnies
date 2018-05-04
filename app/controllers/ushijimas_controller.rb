class UshijimasController < ApplicationController
  def top
  	@user = User.new

  end

  def ushijima
  	@event =Event.find(params[:id])
  	@users = @event.
  end
end
