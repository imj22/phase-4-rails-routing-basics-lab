class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        grades = Student.order(grade: :desc)
        render json: grades
    end

    def highest_grade
        grades = Student.order(grade: :desc)
        best_graded_student = grades.first
        # byebug;
        render json: best_graded_student
    end

end
