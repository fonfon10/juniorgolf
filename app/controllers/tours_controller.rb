class ToursController < InheritedResources::Base

  private

    def tour_params
      params.require(:tour).permit(:name, :country, :province)
    end
end

