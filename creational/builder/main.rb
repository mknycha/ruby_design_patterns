Dir['classes/**/*.rb'].each { |file| require_relative file }

data = [
  {
    id: 1,
    name: 'John',
    surname: 'Kovalsky',
    salary: 2_000,
    sales: 10_000
  }, {
    id: 2,
    name: 'Jim',
    surname: 'Smith',
    salary: 3_000,
    sales: 70_000
  }
]

director = Director.new

sales_builder = SalesReportBuilder.new
director.prepare_report(sales_builder, data)
file = sales_builder.generate_file
puts "Report saved under #{file.path}"

payroll_builder = PayrollReportBuilder.new
director.prepare_report(payroll_builder, data)
file = payroll_builder.generate_file
puts "Report saved under #{file.path}"
