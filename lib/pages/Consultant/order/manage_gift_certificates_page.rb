class ManageGiftCertificatesPage
  include PageObject
  include DataMagic



  button(:go, :value => "Go")
  select_list(:status, :id => "MasterContentBody1_content_rep_ddl_gc_status")
  select_list(:lookup_by, :id => "MasterContentBody1_content_rep_ddl_lookupby")
  table(:gift_cert_table, :id => "MasterContentBody1_content_rep_dg_gc")



  def validate_gift_cert_in_table(data ={})

    populate_page_with data_for(:gift_cert_status, data)
    go
    sleep(3)
    gift_cert_table_element[1][3].text.should == "$25.00"

  end

  def get_cert_number(data ={})

    populate_page_with data_for(:gift_cert_status, data)
    go
    sleep(3)


  end

  def verify_redeemed_card(giftcertnum,data ={})

    populate_page_with data_for(:gift_cert_status, data)
    gift_cert_table.should =~ /.*#{giftcertnum}.*/


  end



end