class TournamentsController < InheritedResources::Base
before_action :authenticate_user!
before_action :selectors, only: [:new, :edit]


def new
	@tournament = Tournament.new
end


def create
  @tournament = Tournament.new(tournament_params)
  @tournament.tour_id = params[:tour_id]
  @tournament.course_id = params[:course_id]
  @tournament.category_id = params[:category_id]
  @tournament.gender_id = params[:gender_id]
  @tournament.tour_id = params[:tour_id]
  @tournament.level_id = params[:level_id]

  if @tournament.save
    redirect_to tournaments_path
  else
    render 'new'
  end
	
end




def show
  @tournament = Tournament.find(params[:id])

  if (registration = Competition.find_by user: current_user, tournament: @tournament)
    @registration_status = registration.status.name

  else
    @registration_status = "Not Registered"
    
  end

  competitions = Competition.all
  @registered_comps = @tournament.competitions


  
end




def edit
  @tournament = Tournament.find(params[:id])
end


def index


#  if (current_user.gender.name == "Girls")
#   gender_id = [1,3]
#  else
#   gender_id = [2,3] 
#  end

  case current_user.gender_id
    when 1 
      gender_id = [1,3]
    when 2
      gender_id = [2,3]
    when 3 
      gender_id = [1,2,3]
  end


  category_id = [31]

  #ATOM
  if (current_user.category_id.to_s(2).rjust(5, "0")[4])=="1" 
    (0..14).each {|i| category_id << 2*i+1}        
  end
  
  #PEE-WEE
  if (current_user.category_id.to_s(2).rjust(5, "0")[3])=="1" 
    (0..7).each do |i| 
      category_id << 4*i+2
      category_id << 4*i+3
    end        
  end

  #BANTAM
  if (current_user.category_id.to_s(2).rjust(5, "0")[2])=="1" 
    (0..3).each do |i| 
      category_id << 8*i+4
      category_id << 8*i+5
      category_id << 8*i+6
      category_id << 8*i+7
    end        
  end

  #JUV
  if (current_user.category_id.to_s(2).rjust(5, "0")[1])=="1" 
    (0..1).each do |i| 
      category_id << 16*i+8
      category_id << 16*i+9
      category_id << 16*i+10
      category_id << 16*i+11
      category_id << 16*i+12
      category_id << 16*i+13
      category_id << 16*i+14
      category_id << 16*i+15
    end        
  end

  #JUNIOR
  if (current_user.category_id.to_s(2).rjust(5, "0")[0])=="1" 
    (16..30).each {|i| category_id << i}        
  end


  category_id.sort!.uniq!


  @tournaments = Tournament.all.gender_filter(gender_id).
                  category_filter(category_id).order('start_time ASC')
  Tournament.reorder('reg_deadline')
  competitions = Competition.all
  @competitions_of_interest = current_user.competitions.joins(:tournament).reorder('tournaments.reg_deadline')

  @competitions_status = Hash.new

  competitions.each do |comp|

    if comp.status.name != "No" and comp.status.name != nil

      if @competitions_status[comp.tournament.id] == nil 
        @competitions_status[comp.tournament.id] = 1
      else  
        @competitions_status[comp.tournament.id] = @competitions_status[comp.tournament.id] + 1
      end
      
    end

  end



end


def registered
  change_status (1)
end

def in_consideration
  change_status (2)
end

def wait_listed
  change_status (3)
end

def donot_attend
  change_status (4)
end



  private
    def selectors
  		@tours = Tour.order('name ASC').map { |i| [i.name, i.id]}			
  		@courses = Course.order('name ASC').map { |i| [i.name, i.id]}			
  		@categories = Category.order('id ASC').map { |i| [i.name, i.id]}			
  		@genders = Gender.order('name ASC').map { |i| [i.name, i.id]}			
  		@tours = Tour.order('name ASC').map { |i| [i.name, i.id]}			
  		@levels = Level.order('id ASC').map { |i| [i.name, i.id]}			
  	end



  def change_status (status)
    @thisparticipation = Competition.all.find_by_tournament_id_and_user_id(params[:id], current_user.id)

    if @thisparticipation == nil
      @thisparticipation= Competition.create(:user_id => current_user.id,
                          :tournament_id => params[:id],
                          :status_id   => status)
    else
      @thisparticipation.status_id = status
    end

    @thisparticipation.save 
    redirect_to tournament_path
  end


    def tournament_params
      params.require(:tournament).permit(:name, :tour_id, :course_id, :category_id, :gender_id, :level_id, :days, :start_date, :reg_deadline, :qual_required, :comments)
    end
end

