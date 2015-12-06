class StudentsController < ApplicationController

    def index
        @students = Student.all
        @student = Student.new
        render "index" 
    end


	def enrollmentsz
		@enrollments = Student.find(params[:id]).enrollments
	end


	def enrollments
	    @student2 = Student.find(params[:id])
		@enrolled_courses = Student.find(params[:id]).courses
	end


#def create  CREATE ENROLLMENT
#  Book.find(params[:book_id]).stores.create(store_params)
   
  # redirect_to books_path
#end   



#def index
#   @stores = Book.find(params[:book_id]).stores 
#end    

#def new
#   @book = Book.find(params[:book_id])
#   @store = Store.new
   
#end    
    
#def create
#  Book.find(params[:book_id]).stores.create(store_params)
   
  # redirect_to books_path
#end    











    def new 
        @student = Student.new
         render "new"
    end


    def create
         student = Student.create(student_params)
         redirect_to "/students"
    end
    

    def edit 
        @student = Student.find(params[:id])
    end


    def update
        student = Student.find(params[:id])
        student.update_attributes(student_params)
        redirect_to "/students"
    end
    
    def destroy
        student = Student.find(params[:id])
        student.destroy
        redirect_to "/students"
    end

    private
        def student_params
            params.require(:student).permit(:name)
        end

end