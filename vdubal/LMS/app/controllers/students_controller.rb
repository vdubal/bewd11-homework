class StudentsController < ApplicationController

    def index
        @students = Student.all
    end


    def new 
        @student = Student.new
    end
    
        def create
        Student.create(student_params)
        redirect_to :students
    end
    
    
    def edit
       @student = Student.find(params[:id])
       render "edit"
    end 
    
    def update
        Student.find(params[:id]).update_attributes(student_params)
        redirect_to "/students"
    end 
    
    def destroy
        student = Student.find(params[:id])
        student.destroy
        redirect_to "/students"
    end  

    private
        def student_params
            params.require(:student).permit(:name, :email, :age)
        end

end
