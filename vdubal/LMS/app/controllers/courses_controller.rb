class CoursesController < ApplicationController

    def new
        @course = Course.new
    end
    
    def create
        Course.create(course_params)
        redirect_to :students
    end
    
    private
        def course_params
            params.require(:course).permit(:name, :duration, :difficulty)
        end
        
end