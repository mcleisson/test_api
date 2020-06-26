class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :medicine
  before_save :remove_items

  def remove_items
    sql = "UPDATE medicines SET stock = (stock - #{quantity}) WHERE id = #{self.medicine_id}"
    ActiveRecord::Base.connection.execute(sql)
  end
end
