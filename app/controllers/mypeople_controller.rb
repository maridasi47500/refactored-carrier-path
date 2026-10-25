class MypeopleController < ApplicationController
 def seesurnames
@surnames=Surname.findbyname(params[:nomsurname])
render :seesurnames
 end
 def seeattitudes
@attitudes=Attitude.findbyname(params[:s])
@attitude=Attitude.new(search: params[:s])
 end
 def seetasks
@tasks=Task.findbyname(params[:nomtache])
render :seetasks
 end
 def seeppl
@people=Person.pasceuxdestvseries.notfrommovies.find1ppl(params[:nomdumoussaillon])
render :see
 end
 def seeactor
@people=Person.findactor(params[:tvseriesid],params[:nomacteur],params[:filmid])
render :see
 end
end
