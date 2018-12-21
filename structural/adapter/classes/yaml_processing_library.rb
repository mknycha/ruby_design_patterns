# frozen_string_literal: true

class YamlProcessingLibrary
  def process_service_data(service)
    data = service.yaml_data
    puts ''
    puts 'Received the following data:'
    puts data
    # Let's imagine there is some data processing going on here...
  end
end
