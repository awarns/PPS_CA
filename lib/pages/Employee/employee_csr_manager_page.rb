class EmployeeCsrManagerPage
  include PageObject
  include DataMagic

  page_url "#{FigNewton.base_url}/employee/admin/frm_CSR_Frames.aspx"


  link(:edit_profile, :text => "Edit Profile")
  link(:view_profile, :text => "View Profile")
  link(:view_downline, :text => "View Downline")
  link(:auto_login, :text => "Auto Login")
  link(:send_email, :text => "Send Email")
  link(:refresh_link, :id => "ContentPlaceHolder1_btn_load")
  text_field(:id_number, :id => "ContentPlaceHolder1_txt_idno")



  def search_csr_manager(data ={})

    populate_page_with data_for(:csr_search, data)
    refresh_link

  end

  def edit_profile_as_csr

    edit_profile
    attach_to_window(:url => "frm_dist_entry")

  end

  def csr_auto_login

    auto_login

  end



end