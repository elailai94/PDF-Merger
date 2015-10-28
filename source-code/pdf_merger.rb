#===================================================================
# PDF Merger
#
# @author: Elisha Lai
# @description: Program to combine multiple PDFs into one single PDF
# @version: 1.1 28/10/2015
#===================================================================

require 'combine_pdf'

text_file = ARGV[0]
combined_pdf_file = ARGV[1] + '.pdf'
combined_pdf = CombinePDF.new

IO.foreach(text_file) do |line|
   individual_pdf_file = "#{line.chomp}.pdf"
   puts "Loading #{individual_pdf_file} into #{combined_pdf_file}."
   combined_pdf << CombinePDF.load(individual_pdf_file)
end

puts "Saving #{combined_pdf_file} to the current directory."
combined_pdf.save(combined_pdf_file)
puts "#{combined_pdf_file} successfully saved."
