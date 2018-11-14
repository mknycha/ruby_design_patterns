# Builder (interface)

class ReportBuilder
  def initialize
    @content = []
  end

  def set_data(_data)
    raise 'Must be implemented in a sublcass'
  end

  def set_headers
    raise 'Must be implemented in a sublcass'
  end

  def generate_file
    report_file = File.new(@file_name, 'w')
    report_file.puts(@content)
    report_file.close
    report_file
  end
end
