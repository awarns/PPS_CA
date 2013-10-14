class MyWebsiteInfoPage
  include PageObject
  include FigNewton
  include DataMagic


  link(:consultant_id, :id => "MasterContentBody1_lnkID")
  link(:consultant_name, :id => "MasterContentBody1_lnkName")
  link(:upload_photo, :text => "Upload Photo")
  link(:personalize, :text => "Personalize")
  in_frame(:id => "sm-frame") do |frame|
    link(:upload_file, :id => "MasterContentBody1_btnUploadFile", :frame => frame)
    form(:upload_your_photo, :id => "form2", :frame => frame)
    div(:message, :id => "MasterContentBody1_Message", :frame => frame)
    text_field(:name_to_show, :id => "MasterContentBody1_nametoshow", :frame => frame)
    text_field(:my_website_name, :id => "sitename", :frame => frame)
    text_area(:meta_description, :id => "MasterContentBody1_txt_meta_desc", :frame => frame)
    text_area(:meta_keywords, :id => "MasterContentBody1_txt_meta_keywords", :frame => frame)
    link(:save_changes, :id => "MasterContentBody1_btnUpdate", :frame => frame)
  end

  def upload_photo_to_profile

    upload_photo
    sleep(3)
    upload_file

  end

  def verify_upload_photo

    message.should == "No valid files were uploaded"

  end

  def personalize_website(data = {})

    personalize
    populate_page_with data_for(:personalize_website, data)
    save_changes


  end


end
