class XmlFile

  def read_and_write_xml(file_name='mddrive.xml')
    file = []
    File.open(file_name).each { |line| file << line.scan(/template name="(.*)"/) if (/template name/.match line) }
    File.open('xml_file.txt', 'w') { |f| f.puts "#{file.join("\n")}" }
  end

end

x = XmlFile.new
x.read_and_write_xml()