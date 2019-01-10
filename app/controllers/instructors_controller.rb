class InstructorsController < ApplicationController
    def index
      @instructors = Instructor.all.reverse
      @new_instructor = Instructor.new
    end
  
    def create
      @temp = Instructor.create(post_params)
      @cohorts.instructor << (@temp)
      if @temp.valid?
        flash[:notice] = "Instructor CREATED!"
      else
        flash[:notice] = "YOU TYPED TOO MUCH!"
      end
      redirect_to '/'
    end
  
    def edit
      @instructor = Instructor.find(params[:id])
    end
  
    def update
      @instructor = Instructor.find(params[:id])
      @instructor.update(post_params)
      @instructor.save
    end
  
    # /instructor/:id
    def destroy
      @instructor = Instructor.find(params[:id])
      @instructor.destroy
      redirect_to '/'
    end
  
    private
  
    def post_params
      params.require(:instructor).permit(:first_name, :last_name, :age, :education, :salary)
    end
  
  end
  