class DemoController < ApplicationController
  def index
    @student = Student.all
  end
  def new
    @student = Student.new
  end
  def show 
    @student = Student.all
    redirect_to action: "index"
  end
  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to action: "index"
    end
  end
  def edit    
    @student = Student.find(params[:id])   
  end
  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      flash[:notice] = "Update new student successfull"
      redirect_to action: "index"
      else
        flash[:notice] = "Update new student not successfull"
        render action: "edit"
      end
  end
  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to action: "index"
  end
  def search
    @query = params[:query]
    @student = Student.where("students.name LIKE ?",["%#{@query}%"])
    render "index"
  end
  private
  def student_params
      params.require(:student).permit(:name,:nclass)
  end
end
