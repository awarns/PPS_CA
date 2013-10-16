Given(/^I am on the Employee Admin site$/) do


  visit EmployeeLoginPage

  on(EmployeeLoginPage).employee_login

end

Given(/^I login to a virtual office in production$/) do

  visit EmployeeLoginPage

  on(EmployeeLoginPage).employee_login

  visit EmployeeCsrManagerPage

  on(EmployeeCsrManagerPage).search_csr_manager(:id_number => '81515')
  on(EmployeeCsrManagerPage).csr_auto_login


end