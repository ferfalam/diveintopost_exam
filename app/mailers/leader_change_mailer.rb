class LeaderChangeMailer < ApplicationMailer
  default from: 'from@example.com'

  def authority_change(email, last_leader)
    @last_leader = last_leader
    @email = email
    mail to: @email, subject: I18n.t('views.messages.complete_transfer_authority')
  end
  
end
