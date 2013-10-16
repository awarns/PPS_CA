class CstShopOnlinePage
  include PageObject


  link(:click_here_unrelated, :id => "MasterContentBody1_lnk_shop")
  link(:view_details, :id => "ctl00_MasterContentBody1_EventList1_RadGrid_events_ctl00_ctl04_DetailsLink")
  link(:shop_now_link, :id => "ctl00_MasterContentBody1_EventList1_RadGrid_events_ctl00_ctl04_lnkShopNow")

  def shop_now

    shop_now_link

  end



end