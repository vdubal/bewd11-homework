class EnrollmentsController < ApplicationController

	def new
	
	    @student = Student.find(params[:id])
		@courses = Course.all
		@enrolled_courses = Student.find(params[:id]).courses
		render "enrollments"
	end
	
	
	def create
		courses_selected = params[:student][:course]
		
		Enrollment.where(student_id: params[:id]).destroy_all
		
		courses_selected.each do |course_id|
			if course_id != ""
				Enrollment.create(student_id: params[:id], course_id: course_id)
			end
		end
		
		redirect_to :students
	end


	
end

