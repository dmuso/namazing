require 'digest'
require_relative 'wordup'

module Namazing

  WORDLIST = File.open(File.expand_path('../word_list_filtered.txt', __FILE__)).readlines.collect { |l| l.chomp! }
  WORDLIST_SIZE = WORDLIST.size

  def self.version
    "0.0.4"
  end

  def self.random
    random_line_number = 1 + rand(WORDLIST_SIZE - 1)
    WORDLIST[random_line_number]
  end

  def self.to_awesome boring
    wordup = Wordup.new boring
    wordup.split.each do |word|
      wordup.awesomes << Namazing.convert(word)
    end
    wordup.awesome
  end

  def self.convert boring_word
    digest = Digest::SHA256.hexdigest boring_word.downcase
    wordlist_line = (WORDLIST.size * digest[0..9].hex.to_f / ('F' * 10).hex).to_i
    WORDLIST[wordlist_line]
  end
end
