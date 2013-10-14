class IncentivesHomePage
  include PageObject
  include DataMagic

  link(:startswell, :id => "MasterContentBody1_lnkstartswell")
  link(:believe_and_achieve, :id => "MasterContentBody1_lnkBelieveAchieve")
  link(:summer_dream_rewards, :id => "MasterContentBody1_lnkdreamRewards")
  link(:incentive_tracker, :text => "Incentive Tracker Report")
  link(:national_conf_bucks, :id => "MasterContentBody1_lnkNatConfBucks")

  def click_startswell

    sleep(1)
    startswell

  end

  def click_believe_and_achieve

    sleep(1)
    believe_and_achieve
    sleep(5)

  end

  def click_summer_dream_rewards

    sleep(1)
    summer_dream_rewards

  end

  def click_incentive_tracker

    sleep(1)
    incentive_tracker
    sleep(5)

  end

  def click_national_conference_bucks

    sleep(1)
    national_conf_bucks
    sleep(5)

  end



end