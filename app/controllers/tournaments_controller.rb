class TournamentsController < InheritedResources::Base

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


def edit
  @tournament = Tournament.find(params[:id])
end


def index
  @tournaments = Tournament.all
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





  private

    def tournament_params
      params.require(:tournament).permit(:name, :tour_id, :course_id, :category_id, :gender_id, :level_id, :days, :start_date, :reg_deadline, :qual_required, :comments)
    end
end

