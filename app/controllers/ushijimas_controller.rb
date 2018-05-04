class UshijimasController < ApplicationController
	before_action :forbid_login_user, {only: [:top]}
  def top
  	@user = User.new

  end

  def ushijima

  end
end
