class CoursesController < ApplicationController
  def index
    @courses = Course.all.reverse
    @new_course = Course.new
  end

  def create
    @temp = Course.create(post_params)
    if @temp.valid?
      flash[:notice] = "Course CREATED!"
    else
      flash[:notice] = "YOU TYPED TOO MUCH!"
    end
    redirect_to '/'
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    @course.update(post_params)
    @course.save
  end

  # /course/:id
  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to '/'
  end

  private

  def post_params
    params.require(:course).permit(:course_name, :hours, :user_id)
  end

end


