module Namazing

  WORDLIST = File.open(File.expand_path("../word_list_filtered.txt", __FILE__)).readlines.collect { |l| l.chomp! }

  def self.version
    "0.0.1"
  end

  def self.random
    random_line_number = 1 + rand(WORDLIST.size - 1)
    WORDLIST[random_line_number]
  end

end