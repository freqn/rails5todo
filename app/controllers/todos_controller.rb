class TodosController < ApplicationController
  def index 
    @todos = Todo.all
    @recurring_levels = Todo.priority_counts
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def new 
    @todo = Todo.new
  end

  def create 
    @todo = Todo.new(todo_params)
    if @todo.save
      flash[:success] = "#{@todo.title.upcase} task created"
      redirect_to @todo
    else
      flash[:danger] = "Something went wrong"
      render 'new'
    end
  end

  def edit 
    @todo = Todo.find(params[:id])
  end

  def update 
    @todo = Todo.find(params[:id])
    if @todo.update(todo_params)
      flash[:success] = "#{@todo.title.upcase} task updated"
      redirect_to todo_path(@todo)
    else
      flash[:error] = "Something went wrong with #{@todo.title.upcase}"
      redirect_to todo_path(@todo)
    end
  end

  def destroy 
    @todo = Todo.find(params[:id])
    title = @todo.title
    if @todo.destroy
      flash[:notice] = "#{title.upcase} destroyed!"
      redirect_to root_path
    else
      redirect_to todo_path(@todo)
    end
  end

  private
  
  def todo_params
    params.require(:todo).permit(:title, :description, :priority_level)
  end
end
