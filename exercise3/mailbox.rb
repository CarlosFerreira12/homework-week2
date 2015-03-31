class Email
  attr_accessor :subject, :date, :from
  def initialize(subject, info)
    @subject= subject
    @date=info[:date]
    @from=info[:from]
  end
end

class Mailbox
  attr_accessor :name, :emails
  def initialize(name, emails)
    @name= name
    @emails=emails
  end

  def mostraemails
    @emails.each do |email|
      puts "Date:    #{email.date}"
      puts "From:    #{email.from}"
      puts "Subject: #{email.subject}"
      puts
    end
  end
end

class MailboxTextFormatter
  attr_accessor :mailbox
  def initialize(mailbox)
    @mailbox= mailbox
  end
  

  def formating

      puts
      puts "Mailbox: #{@mailbox.name}"
      puts
      puts "+------------+----------------+---------------------------------+"
      puts "| Date       | From           | Subject                         |"
      puts "+------------+----------------+---------------------------------+"
      @mailbox.emails.each do |email|
        mydate=email.date
        myfrom=email.from
        while myfrom.length < 14  do
          myfrom += " "
        end
        mysubject=email.subject
        while mysubject.length < 31 do
          mysubject += " "
        end
        print "|#{mydate}  |"
        print "  #{myfrom}|"
        print "  #{mysubject}|"
        puts
      end
      puts "+------------+----------------+---------------------------------+"

  end
end


emails = [
    Email.new("Homework this week", { :date => "2014-12-01", :from => "Ferdous" }),
    Email.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Dajana" }),
    Email.new("Re: Homework this week", { :date => "2014-12-02", :from => "Ariane" })
]
mailbox = Mailbox.new("Ruby Study Group", emails)

formatter = MailboxTextFormatter.new(mailbox)

puts formatter.formating