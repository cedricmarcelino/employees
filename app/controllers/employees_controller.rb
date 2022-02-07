class EmployeesController < ApplicationController
    def index
        @employees = Employee.all
    end

    def show
        @employee = Employee.find params[:id]
    end

    def create
        @employee = Employee.new(post_params)

        if @employee.save
            redirect_to show_employee_path(:id => @employee.id)
        end
    end

    def edit
        @employee = Employee.find params[:id]
    end

    def update
        @employee = Employee.find params[:id]
        @employee.update(post_params)
        if @employee.save
            redirect_to show_employee_path(:id => @employee.id)
        end
    end

    def destroy
        @employee = Employee.find params[:id]
        @employee.destroy
        redirect_to show_all_employees_path
    end

    private

    def post_params
        params.require(:post).permit(:first_name, :middle_name, :last_name, :role, :salary)
    end
end
