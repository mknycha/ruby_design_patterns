# Concrete creator

class SalaryReport < BaseReport
  private

  def filename
    'employees_salary_report'
  end

  def headers_row
    %w(id name surname salary(EUR))
  end

  def query_results
    EmployeesQuery.new.results
  end
end
