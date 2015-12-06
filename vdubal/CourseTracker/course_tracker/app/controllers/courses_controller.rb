class CoursesController < ApplicationController

    def new 
        @course = Course.new
         render "new"
    end


    def create
         course = Course.create(course_params)
         redirect_to "/students"
    end


    private
        def course_params
            params.require(:course).permit(:name)
        end



end
