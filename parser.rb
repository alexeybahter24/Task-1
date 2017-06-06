class XmlFile

  @@line_count = []

  def read_xml
    File.open('mddrive.xml').each do |line|
      if /template name/.match line
      @@line_count << line.scan(/template name="(.*)"/)
      end
    end
    @@line_count = @@line_count.join("\n")
    return @@line_count
  end

  def write_xml
    f = File.new('xml_file.txt', 'w')
    f.puts "#{@@line_count}"
  end

end

x = XmlFile.new
x.read_xml
x.write_xml