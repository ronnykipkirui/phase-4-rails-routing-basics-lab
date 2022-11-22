class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end
    def grades
        s =  Student.order("grade").reverse
        render json: s
    end
    def highest_grade
        render json: Student.order("grade").reverse.first
    end
end