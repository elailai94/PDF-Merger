# PDF Merger

[![Ruby Badge](http://forthebadge.com/images/badges/built-with-ruby.svg)](http://forthebadge.com)

### About
PDF Merger is a simple script to combine multiple PDFs into one single PDF. It is written entirely in Ruby.

### Dependency Installation
This script depends on the gem '[CombinePDF](https://github.com/boazsegev/combine_pdf)' by Boaz Segev. Prior to running the script, you must install the gem by executing the following command:
```Bash
gem install combine_pdf
```

### Execution
```Bash
ruby pdf_merger.rb [text-file] [output-file]
```
> Note: **text-file** is a text file containing a list of the names of the individual PDFs and **output-file** is the name for the combined PDF to be saved as. For example, *ruby pdf_merger.rb myTextFile.txt myCombinedPDF* will combine each individual PDF in myTextFile.txt into myCombinedPDF.pdf.

### License
* PDF Merger is licensed under the [MIT license](https://github.com/elailai94/PDF-Merger/blob/master/LICENSE.md).
