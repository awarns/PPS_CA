class CstEventDetailsPage
  include PageObject


  link(:rsvp, :id => "MasterContentBody1_btnRsvp")
  link(:shop_now_link, :id => "MasterContentBody1_btnShop")
  link(:back_to_events, :id => "MasterContentBody1_btnReturn")

  def shop_now

    shop_now_link
    sleep(2)

  end



end