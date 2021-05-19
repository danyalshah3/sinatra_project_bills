class ExpensesController < ApplicationController
    
    #new
    get "/expenses/new" do
        @expense = Expense.new
        erb :"expenses/new.html"
    end
    
    #create
    post "/expenses" do
        expense = current_user.expenses.create(params[:expense])
        if expense.valid?
        redirect "/expenses/#{expense.id}"
        else 
            flash[:errors] = expense.errors.full_messages
            redirect "/expenses/new"
        end
    end 
    
    #index
    get "/expenses" do
        if params[:search]
         @expenses = Expense.where("vendor LIKE ?", "%#{params[:search]}%")
        else
            @expenses = Expense.all
        end
        erb :"expenses/index.html"   
    end   

    #show
    get "/expenses/:id" do
        @expense = Expense.find(params[:id])
        erb :"expenses/show.html"
    end


    #edit
    get "/expenses/:id/edit" do
        @expense = Expense.find(params[:id])
        erb :"expenses/edit.html"
    end

    patch "/expenses/:id" do
        expense = Expense.find(params[:id])
        expense.vendor = params[:vendor]
        expense.date = params[:date]
        expense.description = params[:description]
        expense.total_amount = params[:total_amount]
        expense.update(params[:expense])
        redirect "/expenses/#{expense.id}"
    end

    delete "/expenses/:id" do
        expense = Expense.find(params[:id])
        expense.destroy
        redirect "/expenses"
      end

end