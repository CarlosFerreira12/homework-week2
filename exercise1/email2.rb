class Email

  attr_accessor :subject, :date, :from

  def initialize(subject, info)
    @subject= subject
    @date=info[:date]
    @from=info[:from]
  end
  def Read
    puts "O email com o seguinte assunto: #{@subject} foi enviado por #{@from} na data #{@date}"
  end
end

email_1 = Email.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Ferdous" })
email_1.Read

email_1.from="Me"
email_1.date="23-09-2013"
email_1.subject="Other"
email_1.Read
