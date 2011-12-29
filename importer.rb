#!/usr/bin/env ruby

# Use ruby 1.9's CSV
require 'csv'

# Example importer
class Importer
  
  def items
    i = 0
    CSV.foreach("items.txt", csv_options) do |row|    
      h = row.to_hash
      puts h.inspect
      i += 1
    end
    
    puts "Imported #{i} entries."
  end
  
  protected
  
  def csv_options
    {:col_sep => "\t", :headers => :first_row, :quote_char=>'"', :skip_blanks => true, :encoding => "u"}
  end
  
end

# Run the importer
Importer.new.items()