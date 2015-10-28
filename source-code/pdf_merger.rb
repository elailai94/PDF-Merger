#===================================================================
# PDF Merger
#
# @author: Elisha Lai
# @description: Program to combine multiple PDFs into one single PDF
# @version: 1.1 28/10/2015
#===================================================================

require 'combine_pdf'

text_file = ARGV[0]
combined_pdf_file = ARGV[1]
combined_pdf = CombinePDF.new

IO.foreach(text_file) do |line|
   individual_pdf_file = "#{line}.pdf"
   puts "Loading #{individual_pdf_file.chomp} into the combined PDF."
   combined_pdf << CombinePDF.load(individual_pdf_file)
end

puts 'Saving the combined PDF to the current directory.'
combined_pdf.save(combined_pdf_file)
puts 'Combined PDF successfully saved.'
