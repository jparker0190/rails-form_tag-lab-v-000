class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end
  
  def create
  Student.create(title: params[:student][:title], description: params[:student][:description])
  redirect_to students_path
end

end
