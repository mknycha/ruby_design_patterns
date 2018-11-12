# Builder (interface)

class ReportBuilder
  def initialize
    @content = []
  end

  def set_data(data)
    raise 'Must be implemented in a sublcass'
  end

  def set_headers
    raise 'Must be implemented in a sublcass'
  end

  def generate_file
    raise 'Must be implemented in a sublcass'
  end
end
