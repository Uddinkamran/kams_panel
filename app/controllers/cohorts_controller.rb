class CohortsController < ApplicationController
  def index
    @cohorts = Cohort.all.reverse
    @new_cohort = Cohort.new
  end

  def create
    @temp = Cohort.create(post_params)
    if @temp.valid?
      flash[:notice] = "Cohort CREATED!"
    else
      flash[:notice] = "YOU TYPED TOO MUCH!"
    end
    redirect_to '/'
  end

  def edit
    @cohort = Cohort.find(params[:id])
  end

  def update
    @cohort = Cohort.find(params[:id])
    @cohort.update(post_params)
    @cohort.save
  end

  # /cohort/:id
  def destroy
    @cohort = Cohort.find(params[:id])
    @cohort.destroy
    redirect_to '/'
  end

  private

  def post_params
    params.require(:cohort).permit(:cohort_name, :start_date, :end_date)
  end

end

