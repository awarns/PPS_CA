class BusinessExpressionPage
  include PageObject

  button(:begin_new_order, :value => "Begin a New Order")

  def verify_page

    BusinessExpressionPage.attach_to_window(:title => "Thirty-One Gifts Online")
    begin_new_order

  end




end