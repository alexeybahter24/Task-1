class XmlFile

  @@line_count = []

  def read_xml
    File.open('mddrive.xml').each { |line| @@line_count << line.scan(/template name="(.*)"/) }
    @@line_count = @@line_count.uniq
    puts @@line_count.delete_at(0)
    @@line_count = @@line_count.join("\n")
    puts 'вызван метод read_xml'
    return @@line_count
  end

  def write_xml
    f = File.new('xml_file.txt', 'w')
    f.puts "#{@@line_count}"
    puts 'вызван метод write_xml'
  end

end

x = XmlFile.new
x.read_xml
x.write_xml