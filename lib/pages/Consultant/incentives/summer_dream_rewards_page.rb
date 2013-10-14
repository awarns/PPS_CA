class SummerDreamRewardsPage
  include PageObject


  link(:view_gen_0, :id => "MasterContentBody1_content_rep_linkButtonGen0")
  table(:gen_0_table, :id => "ctl00_ctl00_MasterContentBody1_content_rep_team_grid_ctl00")

  def view_generation_0

    view_gen_0

  end

  def verify_gen_0_summer_dream

    sleep(5)
    gen_0_table.should =~ /.*Name.*/
    gen_0_table.should =~ /.*ID.*/
    gen_0_table.should =~ /.*Title.*/
    gen_0_table.should =~ /.*PV Points.*/
    gen_0_table.should =~ /.*Total Point Accumulation.*/
    gen_0_table.should =~ /.PEQA.*/
    gen_0_table.should =~ /.*Level Earned.*/


  end





end