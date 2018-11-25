# Concrete creator

class SalesReport < BaseReport
  private

  def filename
    'products_sales_report'
  end

  def headers_row
    ['id', 'category', 'sales count', 'sales amount(EUR)']
  end
  
  def query_results
    SalesQuery.new.results
  end

end
