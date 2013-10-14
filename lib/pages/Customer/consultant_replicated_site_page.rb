class ConsultantReplicatedSitePage
  include PageObject
  include FigNewton
  include DataMagic


  page_url "#{FigNewton.base_url}/102091"

  div(:header_text, :id => "header-rep-info")
  link(:my_parties, :text => "My Parties")
  link(:lets_party, :text => "Let's Party")
  link(:place_an_order, :text => "Place an Order")
  link(:monthly_specials, :text => "Monthly Specials")
  link(:becoming_a_consultant, :text => "Becoming a Consultant")
  link(:personalization, :text => "Personalization")

  def click_place_an_order

    place_an_order

  end

  def verify_personalized_website

    header_text.should =~ /.*Andy Warns.*/

  end



end