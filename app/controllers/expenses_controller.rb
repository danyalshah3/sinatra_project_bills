class ExpensesController < ApplicationController
    
    #new
    get "/expenses/new" do
        @expense = Expense.new
        erb :"expenses/new.html"
    end
    
    #create
    post "/expenses" do
        @expense = current_user.expenses.create(params[:expense])
        redirect "/expenses/#{expense.id}"
    end 
    
    #index
    get "/expenses" do
        @expenses = Expense.all
        erb :"expenses/index.html"   
    end

    #show
    get "/expenses/:id" do
        @expense = Expense.find(params[:id])
        erb :"expenses/show.html"
    end


    #edit
    get "expenses/:id/edit" do
        @expense = Expense.find(parms[:id])
        erb :"expenses/edit.html"
    end

    patch "expenses/:id" do
        @expense = Expense.find(params[:id])
        expense.update(params[:expense])
        redirect "/expenses/#{expense.id}"
    end

    delete "/expenses/:id" do
        expense = Expense.find(params[:id])
        expense.destroy
        redirect "/expenses"
      end

end