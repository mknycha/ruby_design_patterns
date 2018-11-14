# Concrete builder

class SalesReportBuilder < ReportBuilder
  def initialize
    @file_name = 'sales_report.txt'
    super
  end

  def set_data(employees_data)
    employees_data.each do |employee|
      @content.push(formatted_row(employee))
    end
  end

  def set_headers
    headers_row = columns.join(', ')
    @content.unshift(headers_row)
  end

  private

  def formatted_row(employee)
    row_values = []
    columns.each do |column|
      row_values.push(employee[column.to_sym])
    end
    row_values.join(', ')
  end

  def columns
    %w[id name surname sales]
  end
end
