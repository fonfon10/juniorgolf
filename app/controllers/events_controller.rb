class EventsController < InheritedResources::Base

before_action :selectors, only: [:new, :edit]


def new
	@event = Event.new
end


def create
  @event = Event.new(event_params)
  @event.tour_id = params[:tour_id]
  @event.course_id = params[:course_id]
  @event.category_id = params[:category_id]
  @event.gender_id = params[:gender_id]
  @event.tour_id = params[:tour_id]
  @event.level_id = params[:level_id]

  if @event.save
    redirect_to events_path
  else
    render 'new'
  end
	
end


def edit
  @event = Event.find(params[:id])
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

    def event_params
      params.require(:event).permit(:name, :tour_id, :course_id, :category_id, :gender_id, :level_id, :days, :start_date, :reg_deadline, :qual_required, :comments)
    end
end

