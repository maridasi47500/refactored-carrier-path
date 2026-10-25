class TorolananaController < ApplicationController
#`protect_from_forgery except: [:all]
def showmy
@sector=Sector.find(params[:id])

end
def add
@sector=Sector.find(params[:id])
current_user.sectors << [@sector]
redirect_to mytorolanana_path
end
def allto
@sectors=Sector.findbycriterion(params[:city],params[:myfield],params[:seriebac])
render :all

end
def mytorolanana
@sectors=current_user.sectors
end
  def index
  end
end
