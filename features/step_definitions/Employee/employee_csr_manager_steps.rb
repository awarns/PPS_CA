When(/^I edit a consultants profile$/) do

  visit EmployeeCsrManagerPage
  on(EmployeeCsrManagerPage).search_csr_manager
  on(EmployeeCsrManagerPage).edit_profile_as_csr

end