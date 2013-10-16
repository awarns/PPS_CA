class EmailPage
  include PageObject


  link(:create_an_invite, :text => "Create an Invitation")
  link(:create_a_branded_email_link, :text => "Create a Branded email")
  link(:manage_my_contacts_link, :text => "Manage My Contacts")
  link(:import_contacts, :text => "Import Contacts")
  link(:training_and_support, :text => "Training and Support")
  link(:contact_us_link, :text => "Contact Us")


  def create_an_invitation

    create_an_invite
    sleep(4)

  end

  def create_a_branded_email

    create_a_branded_email_link

  end

  def manage_my_contacts

    manage_my_contacts_link

  end

  def import_my_contacts

    import_contacts

  end

  def contact_us

    contact_us_link

  end


end