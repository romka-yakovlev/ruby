class Employee
    attr_reader :name

    def initialize(name = "Nobody")
        self.name = name
    end

    def name=(name)
        if name == ""
            raise "Name can't be empty"
        end
        @name = name
    end

    def report_name 
        puts "Name is #{name}"
    end

end

class SalariedEmployee < Employee
    attr_reader :salary

    def initialize (salary = 0.0, name)
        super(name)
        self.salary = salary
    end

    def salary=(salary)
        if salary < 1
            raise "Salary is invalid"
        end
        @salary = salary
    end

    def print_pay
        report_name
        final_pay = salary / 365.0 * 14
        formatted_pay = format('%.2f', final_pay)
        puts "Salary for 2 weeks is: #{formatted_pay}"
    end
end

class HourlyEmployee < Employee
    attr_reader :hourly_wage, :hours_per_week

    def initialize(name, hourly_wage = 0.0, hours_per_week = 0.0)
        super(name)
        self.hourly_wage = hourly_wage
        self.hours_per_week = hours_per_week
    end

    def hourly_wage=(hourly_wage)
        @hourly_wage = hourly_wage
    end

    def hours_per_week=(hours_per_week)
        @hours_per_week = hours_per_week
    end

    def print_pay
        report_name
        final_pay = hours_per_week * hourly_wage * 2.0
        formatted_pay = format("%.2f", final_pay)
        puts "The pay for two weeks is: #{formatted_pay}"
    end

end

ammy = SalariedEmployee.new(50000, "Ammy")
ammy.print_pay

dima = HourlyEmployee.new("Dima", 8, 40)
dima.print_pay