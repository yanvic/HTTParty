Dado('que o usuario consulte informacoes de funcionario') do      
    @getlist = Employee_Requests.new
end

Quando('ele realizar a Pesquisa') do
    @list_employee = @getlist.find_employee
end

Entao('uma lista de funcionario deve retornar') do
    expect(@list_employee.code).to eql 200
    expect(@list_employee.message).to eql 'OK'
end

#cenario_dois
Dado('que o usuario cadastre um novo funcionario') do
   @create = Employee_Requests.new
end
  
Quando('ele inserir as informacoes do funcionario') do
    @create_employee = @create.create_employee(DATABASE[:name][:name3], DATABASE[:salary][:salary3], DATABASE[:age][:age3])
    puts @create_employee
end
  
Entao('esse funcionario sera cadastrado') do
    expect(@create_employee.code).to eql (200)
    expect(@create_employee.msg).to eql "OK"
    expect(@create_employee["status"]).to eql "success"
    expect(@create_employee["message"]).to eql "Successfully! Record has been added."
    expect(@create_employee['data']["employee_name"]).to eql DATABASE[:name][:name3]
    expect(@create_employee['data']["employee_salary"]).to eql DATABASE[:salary][:salary3]
    expect(@create_employee['data']["employee_age"]).to eql DATABASE[:age][:age3]
end

#cenario_tres
Dado('que o usuario altere informacoes de um funcionario') do
  @request = Employee_Requests.new
end
  
  Quando('ele inserir as novas informacoes') do
    @update_employee = @request.update_employee(@request.find_employee['data'][0]['id'], 'victor', 310800, 20)
    puts @update_employee
  end
  
  Entao('as informacoes serao alteradas') do
    expect(@update_employee.code).to eql (200)
    expect(@update_employee.msg).to eql "OK"
    expect(@update_employee["status"]).to eql "success"
    expect(@update_employee["message"]).to eql "Successfully! Record has been updated."
    expect(@update_employee['data']["employee_name"]).to eql "victor"
    expect(@update_employee['data']["employee_salary"]).to eql (310800)
    expect(@update_employee['data']["employee_age"]).to eql (20) 
  end

  #cenario_quatro
  Dado('que o usuario delete informacoes de um funcionario') do
    @request = Employee_Requests.new
  end
  
  Quando('ele inserir o id do funcionario') do
    @delete_employee = @request.delete_employee(@request.find_employee['data'][0]['id'])
  end
  
  Entao('as informacoes serao deletadas') do
    expect(@delete_employee.code).to eql (200)
    expect(@delete_employee.msg).to eql "OK"
    expect(@delete_employee["status"]).to eql "success"
    expect(@delete_employee["data"]).to eql '1'
    expect(@delete_employee["message"]).to eql "Successfully! Record has been deleted"
  end