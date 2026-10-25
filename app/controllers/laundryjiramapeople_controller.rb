class LaundryjiramapeopleController < ApplicationController
layout false, only: [:jiramapeople]
  def capitaine
int=Laundryjiramaperson.all.ids.map {|x| [params["#{x}laundry.x"],x]}.select{|x|x[0]}[0][1]
@laundry1=Laundryjiramaperson.find(params[:id])
@laundry2=Laundryjiramaperson.find(int)
@captain=Laundrycaptain.create(laundryjiramaperson: @laundry1,laundryjiramaotherperson: @laundry2)
redirect_to laundryjiramaperson_laundrycaptain_path(id: @captain.id,laundryjiramaperson_id: @laundry1)

  end
  def jsonjirama
@laundry=Laundryjiramaperson.findbyname(params[:name])
render json: @laundry
    
  end
  def jiramapeople
@laundry=Laundryjiramaperson.find(params[:id])
@person=Person.find(params[:person_id])
@grade=Grade.find(params[:grade_id])
@armygrade=Armygrade.find(params[:armygrade_id])
@epoch=Epoch.find(params[:epoch_id])
@user=User.find(params[:user_id])
  end
  def show
@laundry=Laundryjiramaperson.find(params[:id])
@person=Person.find(params[:person_id])
@grade=Grade.find(params[:grade_id])
@armygrade=Armygrade.find(params[:armygrade_id])
@epoch=Epoch.find(params[:epoch_id])
@user=User.find(params[:user_id])

  end
end
