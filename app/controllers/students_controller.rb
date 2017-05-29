class StudentsController < ApplicationController
  def index
    @students = Student.all

    render("students/index.html.erb")
  end

  def show
    @student = Student.find(params[:id])
    @case = Case.new

    render("students/show.html.erb")
  end

  def myfavorites
    render("/students/my_favorites.html.erb")
    end

end
