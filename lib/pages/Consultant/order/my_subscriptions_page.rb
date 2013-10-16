class MySubscriptionsPage
  include PageObject

  button(:yes_cancel, :value => "Yes")
  div(:page_text, :class => "uic-main")
  link(:edit_sub, :text => "Edit")
  link(:cancel_sub, :text => "Cancel")
  link(:last_sub, :text => "Last")
  link(:next_sub, :text => "Next")
  link(:sub_1, :text => "Annual Website Subscription (Yearly)")


  def cancel_existing_subscriptions

    while page_text =~ /.*Below.*/

      cancel_sub
      sleep(2)
      yes_cancel

    end

  end

  def order_subscription

    sub_1

  end



end