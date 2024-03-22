class LoginPage < SitePrism::Page      #extendendo siteprism para a class
    
    set_url ' '                 #também podemos usar um path especifico colando o restante da url do caminho a seguir
    element :emailField, :id, "session_key"            
    element :passwordField, :id, "session_password"                             #elementos mapeados no html da página
    element :loginButton, :xpath, "//button[@data-id ='sign-in-form__submit-btn']"
    element :emptyPassword, :xpath, "//p[@class='input-helper mt-1.5']"


    def userLogin (email, password)               #criado método que realiza o login
        emailField.set (email)
        passwordField.set (password)
        loginButton.click                       #ações do framework capybara
    end


   def checkInvalidUser
        expect(emptyPassword.text).to eql "Insira uma senha."
    end




end

