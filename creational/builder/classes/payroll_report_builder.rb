require_relative 'report_builder'
# Concrete builder

class PayrollReportBuilder < ReportBuilder
  TAX_PERCENTAGE_STAKE = 19

  def initialize
    @file_name = 'payroll_report.txt'
    super
  end

  def set_data(employees_data)
    salary_sum = 0
    tax_sum = 0
    employees_data.each do |employee|
      tax_amount = calculate_tax(employee[:salary])
      employee[:tax] = tax_amount
      salary_sum += employee[:salary]
      tax_sum += tax_amount
      @content.push(formatted_row(employee))
    end
    @content.push(formatted_summary_row(salary_sum, tax_sum))
  end

  def set_headers
    headers_row = columns.join(', ')
    @content.unshift(headers_row)
  end

  def generate_file
    report_file = File.new('payroll_report.txt', 'w')
    report_file.puts(@content)
    report_file.close
    report_file
  end

  private

  def columns
    %w[id name surname salary tax]
  end

  def formatted_row(employee)
    row_values = []
    columns.each do |column|
      row_values.push(employee[column.to_sym])
    end
    row_values.join(', ')
  end

  def calculate_tax(salary)
    salary * TAX_PERCENTAGE_STAKE / 100
  end

  def formatted_summary_row(salary_sum, tax_sum)
    ['SUM', nil, nil, salary_sum, tax_sum].join(', ')
  end
end
