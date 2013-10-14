class OrderDetailsPage
  include PageObject
  include DataMagic


  DEFAULT_DATA ={
      'icon_select_icon' => 'Football',
      'icon_select_color' => 'Black',
      'icon_thread_color' => 'Maroon',
      'icon_font_color' => '30',
      'pers_text' => 'ICN'
  }


  text_field(:item_code, :id => "Itemcode")
  text_field(:quantity, :id => "QuantityList")
  button(:add_lookup, :value => "Add/Lookup")
  select_list(:customer_list, :id => "CustomerList")
  link(:add_guest_link, :id => "lnk_add_guest")

  in_frame(:id => "frm_bottom") do |frame|
    button(:add_to_order, :value => "Add To Order", :frame => frame)
    link(:remove_1, :text => "Remove", :index => 4, :frame => frame)
    link(:remove_2, :text => "Remove", :index => 7, :frame => frame)
    link(:change_information, :text => "Change Information", :index => 1, :frame => frame)
    link(:none, :text => "None", :frame => frame)
    link(:personalize, :text => "Personalize", :frame => frame)
    select_list(:select_pers_option, :index => 0, :frame => frame)
    select_list(:icon_select_icon, :index => 1, :frame => frame)
    select_list(:icon_select_color, :index => 2, :frame => frame)
    select_list(:icon_thread_color, :index => 3, :frame => frame)
    select_list(:icon_font_color, :index => 4, :frame => frame)
    text_field(:pers_text, :index => 0, :frame => frame)
    link(:done_personalizing, :id => "btn_save", :frame => frame)
    table(:order_summary, :class => "table_style", :index => 4, :frame => frame)
    button(:payments, :value => "Payments", :frame => frame)
  end
  link(:ok_pop_up) { |page| page.div_element(:id => "simplemodal-container").link_element(:text => "Ok")}

  def click_add_guest

    add_guest_link

  end


  def add_item_to_party_order(data ={})

    populate_page_with data_for(:add_party_item, data)
    add_lookup

  end

  def add_item_to_business_supply_order

    self.item_code = "3057"
    self.quantity = "1"
    add_lookup

  end

  def party_personalize_item_with_icon_it(data ={})
    data = DEFAULT_DATA.merge(data)

    add_to_order
    sleep(2)
    self.select_pers_option = "Icon-It with Text - add $10"
    sleep(2)
    self.icon_select_icon = data['icon_select_icon']
    sleep(2)
    self.icon_select_color = data['icon_select_color']
    sleep(2)
    self.icon_thread_color = data['icon_thread_color']
    sleep(2)
    self.icon_font_color = data['icon_font_color']
    sleep(2)
    self.pers_text = data['pers_text']
    sleep(2)
    done_personalizing

  end

  def party_personalize_item_with_none

    sleep(2)
    add_to_order
    sleep(2)
    self.select_pers_option = "None"
    sleep(2)
    done_personalizing

  end

  def order_summary_text

    sleep(2)
    order_summary

  end

  def remove_a_product

    remove_1

  end

  def change_guests_shipping_info

    change_information

  end

  def change_personalization(data ={})
    data = DEFAULT_DATA.merge(data)

    personalize
    sleep(2)
    none

    self.select_pers_option = "Icon-It with Text - add $10"
    sleep(2)
    self.icon_select_icon = data['icon_select_icon']
    sleep(2)
    self.icon_select_color = data['icon_select_color']
    sleep(2)
    self.icon_thread_color = data['icon_thread_color']
    sleep(2)
    self.icon_font_color = data['icon_font_color']
    sleep(2)
    self.pers_text = data['pers_text']
    sleep(2)
    done_personalizing

  end

  def click_payments

    payments

  end

  def click_ok_in_popup

    sleep(5)
    ok_pop_up

  end



end