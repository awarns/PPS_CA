class DownlinePage
  include PageObject
  include DataMagic

  div(:page_text, :id => "ctl00_ctl00_MasterContentBody1_content_rep_rmpDownline")
  select_list(:downline_type, :id => "MasterContentBody1_content_rep_ddl_type")
  link(:run_downline_report, :id => "MasterContentBody1_content_rep_btnRunDownline")
  link(:delete_filter, :text => "Delete")
  text_field(:save_filter_as, :id => "MasterContentBody1_content_rep_txt_filter_name")
  table(:saved_filters_box, :id => "MasterContentBody1_content_rep_data_saved_filters")

  def run_downline(data ={})

    populate_page_with data_for(:downline_page, data)
    run_downline_report

  end

  def setup_filter(data ={})

    populate_page_with data_for(:downline_filer, data)
    run_downline_report

  end

  def saved_filters_box_text

    saved_filters_box

  end

  def delete_a_filter

    delete_filter
    sleep(5)

  end

  def delete_all_filters

    while page_text =~ /.*Delete.*/

      delete_filter
      sleep(4)

    end



  end


end