class Stock < ApplicationRecord
  validates :ticker, presence: true, uniqueness: { case_sensitive: false }

  def ticker=(val)
    write_attribute(:ticker, val.upcase)
  end

end
