class EnrollmentsController < ApplicationController


	def new
		@courses = Course.all
		@student = Student.find(params[:id])
		@enrolled_courses = Student.find(params[:id]).courses
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
	
	def destroy
		Enrollment.where(student_id: params[:id]).destroy_all
		redirect_to :students
	end

	
end



