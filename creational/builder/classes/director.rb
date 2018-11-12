class Director
  def prepare_report(builder, data)
    builder.set_data(data)
    builder.set_headers
  end
end
