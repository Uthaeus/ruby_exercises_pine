line_width = 75

title = "Table of Contents"
chap1 = "Chapter 1:  Numbers"
chap1_page = "page 1"
chap2 = "Chapter 2:  Letters"
chap2_page = "page 72"
chap3 = "Chapter 3:  Variables"
chap3_page = "page 118"

puts title.center(line_width)
puts ""
puts chap1.ljust(line_width/2) + chap1_page.rjust(line_width/2)
puts chap2.ljust(line_width/2) + chap2_page.rjust(line_width/2)
puts chap3.ljust(line_width/2) + chap2_page.rjust(line_width/2)

