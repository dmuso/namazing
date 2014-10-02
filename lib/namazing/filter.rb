module Namazing

  class Filter

    def self.run
      input = File.open("./lib/namazing/word_list_filtered.txt")
      output_path = "./lib/namazing/word_list_filtered_out.txt"
      File.delete(output_path) if File.exists?(output_path)
      output = File.open(output_path, 'w')
      input.readlines.each do |line|
        write_line = false
        write_line = true if line =~ /[^s]\n$/
        write_line = false if line =~ /oo/
        write_line = false if line =~ /emo/
        write_line = false if line =~ /phil/
        write_line = false if line =~ /ss/
        write_line = false if line =~ /mam/
        write_line = false if line =~ /mum/
        write_line = false if line =~ /mom/
        write_line = false if line =~ /oun/
        write_line = false if line =~ /ette/
        write_line = false if line =~ /ism\n$/
        write_line = false if line =~ /lly\n$/
        write_line = false if line =~ /^non/
        write_line = false if line =~ /gey\n$/
        write_line = false if line =~ /ing\n$/
        write_line = false if line =~ /aun/
        write_line = false if line =~ /ered/
        write_line = false if line =~ /tly/
        write_line = false if line =~ /ory/
        write_line = false if line =~ /ier\n$/
        write_line = false if line =~ /est\n$/
        write_line = false if line =~ /ice/
        write_line = false if line =~ /ora\n$/
        write_line = false if line =~ /ingly\n$/
        write_line = false if line =~ /ately\n$/
        write_line = false if line =~ /aria/
        write_line = false if line =~ /ary\n$/
        output.write line if write_line
      end
    end

  end

end