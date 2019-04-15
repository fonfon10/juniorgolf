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
  
end




def edit
  @tournament = Tournament.find(params[:id])
end


def index
  @tournaments = Tournament.all.order('days DESC')
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

    puts("****** ****** status"+status.to_s)


    if @thisparticipation == nil
      @thisparticipation= Competition.create(:user_id => current_user.id,
                          :tournament_id => params[:id],
                          :status_id   => status)
    else
      @thisparticipation.status_id = status
    end

    puts("****** ****** participation_status"+@thisparticipation.status.id.to_s)



    @thisparticipation.save 
    redirect_to tournament_path
  end


    def tournament_params
      params.require(:tournament).permit(:name, :tour_id, :course_id, :category_id, :gender_id, :level_id, :days, :start_date, :reg_deadline, :qual_required, :comments)
    end
end

