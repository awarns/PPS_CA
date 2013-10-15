class MyEventsHomePage
  include PageObject


  link(:non_party_event, :text => "Non-Party Event")
  link(:party_event, :text => "Party Event")
  link(:party_event_hostess, :text => "Party Event with Hostess Portal Options")
  link(:add_follow_up, :text => "+ Add Follow-Up")
  link(:mange_follow_up_list, :text => "Manage My Follow-Up List")
  link(:edit_event, :text => "Edit")
  link(:cancel_event, :text => "Cancel")
  div(:table_events, :class => "full content")



  def click_non_party_event

    non_party_event

  end

  def click_party_event

    party_event

  end

  def click_party_event_hostess

    party_event_hostess

  end

  def edit_existing_event

    edit_event

  end

  def cancel_existing_events

    sleep(3)

    while table_events =~ /.*Cancel.*/

      cancel_event
      @browser.alert.ok
      sleep(3)

    end


  end


end