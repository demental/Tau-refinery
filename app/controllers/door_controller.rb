class DoorController < ActionController::Base
  include Refinery::ApplicationController
  before_filter :refinery_user_required?
  def index
    if current_refinery_user
      Net::HTTP.get_response(URI.parse ENV['DOOR_URL'])
      render :text => "<html><head><title>TAU DOOR</title></head><h1>PUSH THE DOOR !</h1></html>"
    else
      render :text => "FUCK OFF"
    end
  end
end
