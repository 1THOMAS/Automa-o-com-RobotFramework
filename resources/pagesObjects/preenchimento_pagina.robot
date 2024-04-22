*** Settings ***

Resource    ../main.robot

*** Variables ***

${input_name}            //input[@id='name']
${input_phone}           //input[@id='phone']
${input_email}           //input[@id='email']
${input_password}        //input[@id='password']
${textarea_address}      //textarea[@id='address']
${button_submit}         //button[@name='submit']

${input_male}            //input[@id='male']

${input_monday}          //input[contains(@id,'monday')]
${input_Tuesday}         //input[contains(@id,'tuesday')]
${input_Wednesday}       //input[contains(@id,'wednesday')]
${input_Thursday}        //input[contains(@id,'thursday')]
${input_Friday}          //input[contains(@id,'friday')]
${input_Saturday}        //input[contains(@id,'saturday')]
${input_Sunday}          //input[contains(@id,'sunday')]

${input_country}         //option[contains(text(),'Italy')]

${input_year}            //label[contains(@for,'1year')]

${input_selenium}        //label[contains(@for,'selenium')]
${input_cucumber}        //label[contains(@for,'cucumber')]
${input_testng}          //label[contains(@for,'testng')]
${input_serenity}        //label[contains(@for,'serenity')]
${input_mabl}            //label[contains(@for,'mabl')]
${input_testim}          //label[contains(@for,'testim')]

${input_image}           https://picsum.photos/200/300

*** Keywords ***

E preencher campos
    ${Nome}          FakerLibrary.First Name
    Input Text       ${input_name}            ${Nome}
    ${Phone}         FakerLibrary.Phone Number 
    Input Text       ${input_phone}           ${Phone}
    ${Email}         FakerLibrary.Email
    Input Text       ${input_email}           ${Email}
    ${Password}      FakerLibrary.Password
    Input Text       ${input_password}        ${Password}
    ${Address}       FakerLibrary.Address
    Input Text       ${textarea_address}      ${Address}

E clicar no submit
    Click Element    ${button_submit}

E clicar nos campos genero
    Click Element    //input[@id='male']

E selecionar os dias da semana
    Click Element    ${input_monday}
    Click Element    ${input_Tuesday}
    Click Element    ${input_Wednesday}
    Click Element    ${input_Thursday}
    Click Element    ${input_Friday}
    Click Element    ${input_Saturday}
    Click Element    ${input_Sunday}

E selecionar um pais    
    Click Element    ${input_country}

E selecionar o ano
    Click Element    ${input_year}

E selecionar as automacoes e framework
    Click Element    ${input_selenium}
    Click Element    ${input_testng}      
    Click Element    ${input_serenity}    
    Click Element    ${input_mabl}        
    Click Element    ${input_testim}     

E fazer upload de uma foto no site
    Click Element    inputGroupFile02    https://picsum.photos/200/300  