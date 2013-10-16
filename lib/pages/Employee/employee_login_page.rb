class EmployeeLoginPage
  include PageObject
  include FigNewton
  include DataMagic


  page_url "#{FigNewton.base_url}/employee/admin/frm_admin_login.aspx"


  link(:login, :id => "ContentPlaceHolder1_btnLogin")
  text_field(:employee_id, :id => "ContentPlaceHolder1_txt_username")
  text_field(:employee_password, :id => "ContentPlaceHolder1_txt_password")


  def employee_login(data ={})

    populate_page_with data_for(:employee_login, data)
    login



  end



end