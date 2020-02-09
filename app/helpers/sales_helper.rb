module SalesHelper
  def active_sale? 
    Sale.active.any?
  end
  def sale_name
  return Sale.active.first.name
  end
  def discount
    return Sale.active.first.percent_off
    end
end