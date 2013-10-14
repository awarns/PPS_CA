class VirtualOfficeHomePage
  include PageObject

  link(:profile, :text => "Profile")
  link(:incentives, :text => "Incentives")
  link(:co_events, :text => "Co. Events")
  link(:downline, :text => "Downline")
  link(:commissions, :text => "Commissions")
  link(:order_link, :text => "Order")
  link(:order_hist, :text => "Order Hist.")
  link(:acct_bal, :text => "Acct Bal.")
  link(:my_events, :text => "My Events")
  link(:email, :text => "Email")
  link(:our_catalog, :text => "Our Catalog")


  def click_profile

    profile

  end

  def click_incentives

    incentives

  end

  def click_order

    order_link

  end

  def click_order_history

    order_hist

  end

  def click_downline

    downline

  end

  def click_commissions

    commissions

  end

  def click_account_balance

    acct_bal

  end

  def click_my_events

    my_events

  end

  def click_email

    email

  end


end