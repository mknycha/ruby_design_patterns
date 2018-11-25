# Concrete product

class EmployeesQuery
  # Imagine there is a complex sql query here
  # It returns employees that are due to receive their salary this month, along with its amount in EUR
  def results
    [
      %w(id first_name surname  salary_amount),
      %w(1  John       Reyes    2000),
      %w(3  Jim        Kovalsky 3000),
      %w(6  Ann        Smith    2500)
    ]
  end
end
