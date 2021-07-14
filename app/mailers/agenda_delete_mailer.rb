class AgendaDeleteMailer < ApplicationMailer
    default from: 'from@example.com'

    def delete_agenda(who_delete, email, agenda_title)
        @email = email
        @who_delete = who_delete
        @agenda_title = agenda_title
        mail to: @email, subject: "#{@agenda_title} deleted"
    end
    
end
