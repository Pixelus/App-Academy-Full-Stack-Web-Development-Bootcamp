require "employee"

class Startup
    attr_reader :name, :funding, :salaries, :employees

    def initialize(name, funding, salaries)
        @name = name
        @funding = funding
        @salaries = salaries
        @employees = []
    end

    def valid_title?(title)
        return true if @salaries.has_key?(title)
        false
    end

    def >(startup)
        return true if self.funding > startup.funding
        false
    end

    def hire(employee_name, title)
        if self.valid_title?(title)
            @employees << Employee.new(employee_name, title)
        else
            raise "title is invalid!"
        end
    end

    def size
        @employees.length
    end

    def pay_employee(employee)
        money_owed = @salaries[employee.title]
        if @funding >= money_owed
            employee.pay(@salaries[employee.title])
            @funding -= money_owed
        else
            raise "no more funding"    
        end
    end

    def payday
        @employees.each { |employee| self.pay_employee(employee) }
    end

    def average_salary
        average = 0
        @employees.each do |employee|
            average += employee.pay(@salaries[employee.title])
        end 
        average / employees.length
    end

    def close
        @employees = []
        @funding = 0
    end

    def acquire(startup)
        # add funding
        @funding += startup.funding

        # merge salaries
        startup.salaries.each do |title, salary|
            if !@salaries.has_key?(title)
                @salaries[title] = salary 
            end
        end
        # hire employees
        @employees += startup.employees

        # close startup
        startup.close
    end
end