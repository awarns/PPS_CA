class MyFollowUpsPage
  include PageObject
  include DataMagic

  button(:go, :value => "Go")
  link(:add_a_follow_up_link, :id => "MasterContentBody1_content_rep_HyperLink1")
  link(:edit_follow_up_link, :text => "Edit", :index => 0)
  link(:delete_follow_up_link, :text => "Delete", :index => 0)
  select_list(:follow_up_code, :id => "MasterContentBody1_content_rep_ddl_follow_codes")
  select_list(:status, :id => "MasterContentBody1_content_rep_ddl_status_codes")
  table(:follow_up_table, :id => "MasterContentBody1_content_rep_data_followups")

  def click_add_a_follow_up

    add_a_follow_up_link

  end

  def verify_follow_up(status)

    self.status = status
    go
    sleep(3)
    follow_up_table_element[1][0].text.should == "Jessica Pearson"

  end

  def edit_follow_up

     edit_follow_up_link

  end

  def verify_edit_follow_up

    self.status = "Closed"
    go
    sleep(3)
    follow_up_table_element[1][0].text.should == "FollowUp CleanUp"

  end

  def delete_a_follow_up

    self.status = "Closed"
    go
    sleep(3)

    delete_follow_up_link
    sleep(3)

  end

  def verify_delete_follow_up

    follow_up_table_element[1][0].text.should_not == "FollowUp CleanUp"

  end




end