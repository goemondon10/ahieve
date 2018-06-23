class ContactMailer < ApplicationMailer

def contact_mail(contact)
  @contact = contact

  mail to: "oki-kume.y@withe.ne.jp", subject: "お問い合わせの確認メール"
end

end
