class Email

  attr_accessor :subject, :date, :from

  def initialize(subject, date, from)
    @subject= subject
    @date=date
    @from=from
  end


  def Read
    puts "O email com o seguinte assunto: #{@subject} foi enviado por #{@from} na data #{@date}"
  end

  $email= "Um email é uma mensagem eletrónica"

end

email_1= Email.new("Assunto", "28/03/2015", "Carlos Ferreira")
email_1.Read

email_1.subject="Other"
email_1.date ="23/05/2015"
email_1.from="Me"

puts $email


email_1.Read