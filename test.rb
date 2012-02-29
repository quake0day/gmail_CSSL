require 'gmail'
require 'mail'

begin
gmail = Gmail.new('quakezeroday@gmail.com','lara4chensi')
data = gmail.inbox.emails(:read,:to => "CSS-L@listserv.buffalo.edu", :after => Date.parse("2010-02-20"))
#puts "#{data[1].multipart?}"
if data[2].multipart? then
    content = data[2].parts[1].body.decoded
    puts content

#    res = content.force_encoding("UTF-8")
#    res = Iconv.iconv("UTF-8","GB2312",content)
    puts res
else
    puts data[2].body.decoded
end
gmail.logout

end
