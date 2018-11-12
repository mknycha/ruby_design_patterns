# Concrete builder

class SalesReportBuilder < ReportBuilder
  def set_data(employees_data)
    employees_data.each do |employee_data|
      row_values = []
      %w(id name surname sales).each do |column|
        row_values.push(employee_data[column.to_sym])
      end
      formatted_row = row_values.join(', ')
      @content.push(formatted_row)
    end
  end

  def set_headers
    headers_row = %w(id name surname sales).join(', ')
    @content.unshift(headers_row)
  end

  def generate_file
    report_file = File.new("sales_report.txt", "w")
    report_file.puts(@content)
    report_file.close
    report_file
  end
end
