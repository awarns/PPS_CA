class StartswellPage
  include PageObject
  include DataMagic

  link(:view_gen_0, :id => "MasterContentBody1_content_rep_linkButtonGen0")
  link(:visit_startswell, :href => "http://www.thirtyonetoday.com/Incentive/startswell.aspx")
  table(:gen_0_table, :id => "ctl00_ctl00_MasterContentBody1_content_rep_team_grid_ctl00")



  def view_generation_0

    view_gen_0

  end

  def click_visit_startswell

    sleep(3)
    visit_startswell

  end

  def verify_gen_0_results


    sleep(5)
    gen_0_table.should =~ /.*Consultant Name.*/
    gen_0_table.should =~ /.*ID.*/
    gen_0_table.should =~ /.*Title.*/
    gen_0_table.should =~ /.*Current Level.*/
    gen_0_table.should =~ /.*Current Level End Date.*/
    gen_0_table.should =~ /.*PV.*/
    gen_0_table.should =~ /.PEQA Count.*/
    gen_0_table.should =~ /.*Level Achieved.*/
  end



end