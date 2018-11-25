puts "INCLUDE \"macros.asm\"\n\n"
puts "SECTION \"ROM Bank 00\", ROM0"
puts "    dr $0000, $3FFF\n\n"

(1..63).each do |n|
  offset = n - 1
  bank_size = 0x4000
  bank_start = 0x4000 + (offset * bank_size)
  bank_end = bank_start + bank_size
  puts "SECTION \"ROM BANK #{"%02d" % n}\", ROMX[$#{"%04x" % 0x4000}], BANK[$#{("%02x" % (n)).upcase}]"
  puts "    dr $#{"%04x" % bank_start}, $#{"%04x" % bank_end}"
  puts ""
end
