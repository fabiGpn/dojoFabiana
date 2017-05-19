Dado(/^que estou na home no site enterprise demo$/) do                                 
 visit "https://enterprise-demo.orangehrmlive.com/auth/login"         
end                                                                                    
                                                                                       
Dado(/^faco login com usuario 'Admin' e senha 'admin'$/) do                            
  fill_in("txtUsername", :with => "Admin") 
  fill_in("txtPassword", :with => "admin") 
  click_button("btnLogin")      
end                                                                                    
                                                                                       
Quando(/^entro na pagina Add employee$/) do                                           
  click_link("menu_pim_viewPimModule")
  click_link("menu_pim_addEmployee")
end                                                                                    

Quando(/^preencho o formulario com os dados do novo funcionario e salvo$/) do        
  fill_in("firstName", :with => "Guy")    
  fill_in("lastName", :with => "Fawkes") 
  select("British Development Center", :from => "location")   
  click_button('btnSave')    
end                                                                                   
                                                                                       
Então(/^o cadastro deve ser efetuado com sucesso$/) do                                 
  assert_text("Successfully Saved")
end                                                                                                                                                                     
                                                                                       
Dado(/^entro na pagina que contém a lista de funcionarios$/) do 
  click_link("menu_pim_viewPimModule")
  click_link("menu_pim_viewEmployeeList")                                
end                                                                                    
                                                                                       
Quando(/^entro para editar o funcionario$/) do                                      
  click_link("0044") 
  click_button("btnSave")                                     
end                                                                                    
                                                                                       
Quando(/^preencho o formulario com as novas informações e salvo$/) do                  
  fill_in("personal[txtEmpFirstName]", :with => "Guy")
  fill_in("personal[txtEmpLastName]", :with => "Fawkes")  
  fill_in("personal_txtEmpNickName", :with => "GF") 
  click_button("btnSave")     
end                                                                                    
                                                                                                                                                                          
                                                                                       