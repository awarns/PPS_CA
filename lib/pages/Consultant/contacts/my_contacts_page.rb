class MyContactsPage
  include PageObject
  include DataMagic


  button(:import_contacts_link, :value => "Import Contacts")
  button(:merge_contacts, :value => "Merge Contacts")
  button(:go_button, :value => "Go")
  button(:add_note, :value => "+ Add Note")
  link(:add_a_contact, :id => "MasterContentBody1_lnk_add_customer")
  link(:edit, :text => "Edit")
  link(:merge_contact, :id => "MasterContentBody1_lnk_merge")
  link(:save_contact, :id => "MasterContentBody1_customer_info_btn_save")
  link(:save_contact_add_another, :id => "MasterContentBody1_customer_info_btn_saveadd")
  link(:cancel, :id => "MasterContentBody1_customer_info_cancelButton")
  table(:customer_list, :id => "MasterContentBody1_grid_customers")
  text_area(:add_a_note_box, :id => "MasterContentBody1_customer_info_txt_new_note")
  text_field(:search, :id => "txt_search")
  text_field(:cust_f_name, :id => "MasterContentBody1_customer_info_txt_first_name")
  text_field(:cust_l_name, :id => "MasterContentBody1_customer_info_txt_last_name")
  text_field(:cust_address, :id => "MasterContentBody1_customer_info_shipping_info_txt_street_1")
  text_field(:cust_post_code, :id => "MasterContentBody1_customer_info_shipping_info_txtPostalCode")
  text_field(:cust_city, :id => "MasterContentBody1_customer_info_shipping_info_txt_city")
  text_field(:cust_email, :id => "MasterContentBody1_customer_info_txt_email")
  text_field(:contact_to_keep, :id => "MasterContentBody1_content_rep_txt_cust_tloc_keep")
  text_field(:contact_to_delete, :id => "MasterContentBody1_content_rep_txt_cust_tloc_delete")
  select_list(:search_in, :id => "MasterContentBody1_ddl_in_region")
  select_list(:from, :id => "MasterContentBody1_ddl_type")


  def add_contact(data ={})

    add_a_contact
    sleep(2)
    populate_page_with data_for(:contacts_page, data)
    save_contact
    sleep(3)

  end

  def search_contacts(data ={})

    populate_page_with data_for(:search_contact, data)
    go_button

  end

  def verify_contact_in_table

    customer_list_element[1][4].text.should == "Litt"

  end

  def edit_contact(data ={})

    edit
    sleep(2)
    populate_page_with data_for(:contacts_page, data)
    save_contact

  end

  def add_a_note

    edit
    sleep(2)
    self.add_a_note_box == "Add a note to this person"
    add_note

  end

  def import_contacts

    import_contacts_link

  end

  def merge_existing_contacts

    cust_1 = customer_list_element[2][2].text
    cust_2 = customer_list_element[3][2].text
    merge_contact

    self.contact_to_keep = cust_1
    self.contact_to_delete = cust_2
    merge_contacts



  end


end