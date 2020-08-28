class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.create(params.require(:course).permit(:name, :age))
    if @course.valid?
      redirect_to courses_path
    else
      flash[:errors] = @course.errors.full_messages
      redirect_to new_course_path
    end
  end
end
