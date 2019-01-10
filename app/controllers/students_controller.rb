class StudentsController < ApplicationController
  def index
    @students = Student.all.reverse
    @new_student = Student.new
  end

  def create
    @temp = Student.create(post_params)
    if @temp.valid?
      flash[:notice] = "Student CREATED!"
    else
      flash[:notice] = "YOU TYPED TOO MUCH!"
    end
    redirect_to '/'
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(post_params)
    @student.save
  end

  # /student/:id
  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to '/student'
  end

  private

  def post_params
    params.require(:student).permit(:first_name, :last_name, :age, :education, :user_id)
  end

end




