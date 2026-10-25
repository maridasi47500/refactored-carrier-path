class LaundrycaptainsController < ApplicationController
  def show
@laundry=Laundryjiramaperson.find(params[:laundryjiramaperson_id])
@laundrycaptain=Laundrycaptain.find(params[:id])
  end
end
