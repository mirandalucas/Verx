Given("I am in the Correios site") do                                        
    visit '/sistemas/buscacep/'
  end

  When("I insert a CEP {string}") do |cep|          
    fill_in(name: 'relaxation', with: cep)
  end                                                                          
                                                                               
  When("click on search button") do                                            
    click 'Buscar'
  end                                                                          
                                                                               
  Then("I shall see the information of the address") do                        
    expect(page).to have_content("Rua Conceição da Barra")
  end                                                                          
                                                                               
  When("I insert a an invalid CEP {string}") do |invalidCEP|                       
    fill_in(name: 'relaxation', with: invalidCEP)
  end                                                                          
                                                                               
  Then("I shall see the error message") do                                     
    expect(page).to have_content("DADOS NAO ENCONTRADOS")
  end                                                                          