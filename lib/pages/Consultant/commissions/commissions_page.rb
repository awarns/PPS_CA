class CommissionsPage
  include PageObject


  link(:commissions_mar_2013, :text => "MAR2013")
  link(:rebates, :text => "Rebates")
  select_list(:select_a_year, :id => "MasterContentBody1_CommissionSummary1_ddl_year")


  def view_specific_commission_period

    commissions_mar_2013

  end

  def view_rebates_info

    rebates

  end


end