Dir['classes/**/*.rb'].each { |file| require_relative file }

data = [
  {
    id: 1,
    name: 'John',
    surname: 'Kovalsky',
    salary: 2000,
    sales: 10000
  },{
    id: 2,
    name: 'Jim',
    surname: 'Smith',
    salary: 3000,
    sales: 70000
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
