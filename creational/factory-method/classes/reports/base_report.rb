# Creator

class BaseReport
  def generate_file
    ::CSV.open("#{filename}.csv", 'wb') do |csv|
      csv << headers_row
      raw_data.each do |raw_data_row|
        csv << format_last_column_amount(raw_data_row)
      end
      csv << summary_row(raw_data)
    end
    puts "Report saved to a file #{filename}.csv"
  end

  private

  def filename
    raise 'Must be implemented in a subclass'
  end

  def headers_row
    raise 'Must be implemented in a subclass'
  end

  def raw_data
    data = query_results
    data = remove_sql_headers(data)
    data
  end

  def query_results # Factory method
    raise 'Must be implemented in a subclass'
  end

  def remove_sql_headers(data)
    data[1..-1]
  end

  def format_last_column_amount(row)
    amount = row[-1].to_f
    formatted_amount = sprintf('%.2f', amount)
    formatted_row = row.dup
    formatted_row[-1] = formatted_amount
    formatted_row
  end

  def summary_row(raw_data)
    last_column_sum = raw_data.map { |row| row[-1].to_f }.reduce(:+)
    row = [nil, nil, 'SUM', last_column_sum]
    format_last_column_amount(row)
  end
end
