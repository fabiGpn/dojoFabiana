#language: pt
#uft-8

Funcionalidade: Gerenciar funcionarios
	Eu como usuario final
	Efetuo login como administrador no site enterprise demo
	Para administrar meus funcionarios

Cenario: Cadastrar novo funcionario
	Dado que estou na home no site enterprise demo
	E faco login com usuario 'Admin' e senha 'admin' 
	Quando entro na pagina Add employee
	E preencho o formulario com os dados do novo funcionario e salvo
	Então o cadastro deve ser efetuado com sucesso

Cenario: Editar cadastro de funcionario
	Dado que estou na home no site enterprise demo
	E faco login com usuario 'Admin' e senha 'admin'
	E entro na pagina que contém a lista de funcionarios
	Quando entro para editar o funcionario
	E preencho o formulario com as novas informações e salvo
	Então o cadastro deve ser efetuado com sucesso

