# Concrete builder
require_relative 'report_builder'

class PayrollReportBuilder < ReportBuilder
  TAX_PERCENTAGE_STAKE = 19

  def set_data(employees_data)
    salary_sum = 0
    tax_sum = 0
    employees_data.each do |employee|
      row_values = []
      %w(id name surname salary).each do |column|
        row_values.push(employee[column.to_sym])
      end
      tax_amount = calculate_tax(employee[:salary])
      row_values.push(tax_amount)
      formatted_row = row_values.join(', ')
      @content.push(formatted_row)
      salary_sum += employee[:salary]
      tax_sum += tax_amount
    end
    summary_row_values = ['SUM', nil, nil, salary_sum, tax_sum]
    @content.push(summary_row_values.join(', '))
  end

  def set_headers
    headers_row = %w(id name surname salary tax).join(', ')
    @content.unshift(headers_row)
  end

  def generate_file
    report_file = File.new("payroll_report.txt", "w")
    report_file.puts(@content)
    report_file.close
    report_file
  end

  private

  def calculate_tax(salary)
    salary * TAX_PERCENTAGE_STAKE / 100
  end
end
