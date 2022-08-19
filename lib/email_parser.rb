# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_accessor :emails

    def initialize(emails)
        @emails = emails
    end

    def parse
        @emails.split(/[\s,]+/).uniq
    end
end

your_first_email = EmailAddressParser.new("john@doe.com, person@somewhere.org")
your_second_email = EmailAddressParser.new("john@doe.com person@somewhere.org")

puts your_first_email.parse
puts your_second_email.parse
