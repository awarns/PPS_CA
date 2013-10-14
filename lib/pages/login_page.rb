class LoginPage
  include PageObject
  include DataMagic

  page_url FigNewton.base_url

  checkbox(:option_1, :id => "MasterContentBody1_chk_follow_options_0")
  checkbox(:option_2, :id => "MasterContentBody1_chk_follow_options_1")
  checkbox(:option_3, :id => "MasterContentBody1_chk_follow_options_2")
  image(:locate_toggle, :id => "LocateToggle")
  image(:search_toggle, :id => "SearchToggle")
  link(:click_login, :id => "MasterContentBody1_btnLogin")
  link(:consultant_login, :text => "Consultant Login")
  link(:search_by_email_address, :id => "MasterContentBody1_btnEmailSearch")
  link(:search_by_name_and_location, :id => "MasterContentBody1_btnNameSearch")
  link(:connect_me_with_a_consultant, :id => "MasterContentBody1_btnFindSelect")
  link(:select_this_consultant, :text => "Select this Consultant")
  link(:continue_to_site_one_time, :id => "MasterContentBody1_VistaButton1")
  link(:continue_to_site_preferred_consultant, :id => "MasterContentBody1_VistaButton2")
  link(:not_your_consultant, :text => "Not your Consultant? Click here to find yours!")
  select_list(:consultant_state, :id => "MasterContentBody1_ddl_region_1")
  text_field(:consultantID, :id => "txt_username")
  text_field(:password, :id => "txt_password")
  text_field(:my_email_address, :id => "MasterContentBody1_txtLocateEmail")
  text_field(:consultant_f_name, :id => "MasterContentBody1_txtLocateFirstName")
  text_field(:consultant_l_name, :id => "MasterContentBody1_txtLocateLastName")
  text_field(:search_f_name, :id => "MasterContentBody1_txtSearchFirstName")
  text_field(:search_l_name, :id => "MasterContentBody1_txtSearchLastName")
  text_field(:search_address, :id => "MasterContentBody1_shipping_info_txt_street_1")
  text_field(:search_zip_code, :id => "MasterContentBody1_shipping_info_txtPostalCode")
  text_field(:search_email, :id => "MasterContentBody1_txtSearchEmail")


  def nav_to_virtual_office

    consultant_login

  end

  def login(data = {})

    populate_page_with data_for(:login_page, data)
    click_login

  end

  def i_have_a_consultant_email_search(data ={})

    locate_toggle_element.click
    populate_page_with data_for(:fac_email, data)
    search_by_email_address
    sleep(5)
    select_this_consultant

  end

  def i_have_a_consultant_name_search(data ={})

    locate_toggle_element.click
    populate_page_with data_for(:fac_her_name, data)
    search_by_name_and_location
    sleep(5)
    select_this_consultant


  end

  def i_need_a_consultant_search(data ={})

    search_toggle_element.click
    populate_page_with data_for(:fac_need_cns, data)
    connect_me_with_a_consultant

  end

  def switch_consultants

    not_your_consultant

  end

  def continue_to_site_for_one_time

    continue_to_site_one_time

  end

  def update_preferred_consultant

    continue_to_site_preferred_consultant

  end


end