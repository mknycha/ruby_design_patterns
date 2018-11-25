# Concrete product

class SalesQuery
  # Imagine there is a complex sql query here
  # It returns number of items sold last month and the total sales amount
  # of these in each category, Total amount is in EUR
  def results
    [
      %w[id product_category sales_count total_amount],
      %w[2 tablets 100 3000],
      %w[3 phones 300 6000],
      %w[6 laptops 50 25000]
    ]
  end
end
