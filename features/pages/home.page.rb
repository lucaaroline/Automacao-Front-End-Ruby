class HomePage < SitePrism::Page
                                                                    #Mapeando elementos que aparecem após login
    element :userName, :xpath, "//div[@class='t-16 t-black t-bold']"                         #Nome do perfil abaixo da foto
    element :navBarHome, :id, "global-nav"                              #Barra de navegação da Home
    element :myIcon, :id, "ember17"                                     #ícone de perfil da Home

    def checkLoginSucessful
        expect(userName.text).to eql "Luiza Caroline Ribeiro"
        expect(navBarHome.text).to include "Início"
        expect(myIcon.text).to eql "Eu"
    end


end