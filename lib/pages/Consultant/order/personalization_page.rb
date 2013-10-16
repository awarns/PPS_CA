class PersonalizationPage
  include PageObject
  include DataMagic



  DEFAULT_DATA = {
      'emb_thread_color' => 'Orange',
      'emb_font_style' => '30',
      'emb_text' => 'EMB',
      'icon_it_icon' => 'Football',
      'icon_it_color' => 'Navy Blue'
  }


  select_list(:select_pers_option, :index => 0)
  text_field(:pers_text, :index => 0)
  link(:done_personalizing, :id => "btn_save")

  #Layout for Embroidery#######################

  select_list(:emb_thread_color, :index => 1)
  select_list(:emb_font_style, :index => 2)

  #############################################

  #Layout for Icon-It No Text##################

  select_list(:icon_it_icon, :index => 1)
  select_list(:icon_it_color, :index => 2)


  def personalize_with_embroidery(data ={})
    data = DEFAULT_DATA.merge(data)

    sleep(2)
    self.select_pers_option = "Embroidery - add $7"
    sleep(2)
    self.emb_thread_color = data['emb_thread_color']
    sleep(2)
    self.emb_font_style = data['emb_font_style']
    sleep(2)
    self.pers_text = data['emb_text']
    sleep(2)

    done_personalizing

  end

  def personalize_with_icon_it_no_text(data ={})
    data = DEFAULT_DATA.merge(data)

    sleep(2)
    self.select_pers_option = "Icon-It w/o Text - add $7"
    sleep(2)
    self.icon_it_icon = data['icon_it_icon']
    sleep(2)
    self.icon_it_color = data['icon_it_color']
    sleep(2)
    done_personalizing


  end

  def personalize_with_none

    sleep(5)
    self.select_pers_option = "None"
    sleep(2)
    done_personalizing

  end


end