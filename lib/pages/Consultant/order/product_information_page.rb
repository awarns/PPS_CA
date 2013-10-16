class ProductInformationPage
  include PageObject
  include DataMagic


  button(:add_to_cart, :value => "Add To Cart")
  link(:back_to_products, :text => /.*Products.*/)
  link(:view_cart, :id => "lnk_view")
  link(:checkout, :id => "lnk_checkout")



  def add_product_to_cart

    sleep(5)
    add_to_cart

  end

  def go_back_to_products

   sleep(5)
   back_to_products

  end



end