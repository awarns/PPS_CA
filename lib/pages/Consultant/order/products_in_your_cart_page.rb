class ProductsInYourCartPage
  include PageObject
  include FigNewton


  link(:back_to_products, :id => "MasterContentBody1_content_rep_HyperLink1")
  link(:checkout_link, :id => "MasterContentBody1_content_rep_lnk_checkout")
  link(:personalize, :text => "Personalize")
  link(:update_link, :text => "Update")


  def click_checkout

    checkout_link

  end

  def remove_product(index)

    index = index.to_i
    index = index - 1
    link_element(:text => "Remove", :index => index).click


  end

  def click_update_prod_in_cart

    update_link

  end

  def update_product_personalization(index)

    index = index.to_i
    index = index - 1
    link_element(:text => "Personalize", :index => index).click
    sleep(2)
    link_element(:text => "None").click

  end





end