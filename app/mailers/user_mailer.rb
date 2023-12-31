class UserMailer < ApplicationMailer
  default from: "floriane.blanchard.pro@gmail.com"

  def welcome_email(user)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'http://eventbrite-saint-loup.fr/login'

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: "Bienvenue chez nous !")
  end

  def attendance_email(user)
    @user = user

    @url  = 'http://eventbrite-saint-loup.fr/login'

    mail(to: @user.email, subject: "Inscription à l'événement validée !")
  end
end
