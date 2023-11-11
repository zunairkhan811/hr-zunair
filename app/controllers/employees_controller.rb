class EmployeesController < ApplicationController
    def index
        @employees = Employee.all
    end
    def new
        @employee = Employee.new
    end
    def create
        @employee = Employee.new(employee_params)
        if @employee.save
            redirect_to employees_path, notice: 'Employee has been created successfully'
        else
            render :new
        end
    end

    def edit
        @employee = Employee.find(params[:id])
    end

    def update
        @employee = Employee.find(params[:id])
        if @employee.update(employee_params)
            redirect_to employees_path, notice: 'Employee has been updated successfully'
        else
            render :edit
        end
    end

    def show
        @employee = Employee.find(params[:id])
    end


    private
    def employee_params
        params.require(:employee).permit(:first_name, :middle_name, :last_name, :email, :city,:state, :country, :zipcode, :address_line_1, :address_line_2)
    end
end