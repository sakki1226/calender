class BlogsController < ApplicationController

  
  def index
    @blogs = Blog.all
    @blog = Blog.new
    @expenses_by_date = Expense.group("DATE(date)").sum(:price)
  end

  def show
    date_string = params[:date]
    date_parts = date_string.split('/')
    formatted_date = "2023-#{(date_parts[0] || '01').rjust(2, '0')}-#{(date_parts[1] || '01').rjust(2, '0')}"
    @date = Date.parse(formatted_date)
    @incomes = Income.where("EXTRACT(MONTH FROM DATE(date)) = ? AND EXTRACT(DAY FROM DATE(date)) = ?", @date.month, @date.day)
    @expenses = Expense.where("EXTRACT(MONTH FROM DATE(date)) = ? AND EXTRACT(DAY FROM DATE(date)) = ?", @date.month, @date.day)
    binding.pry
  end

end
