#!/usr/bin/env ruby

# Use ruby 1.9's CSV
require 'csv'

# Example importer
class Importer
  
  def items
    i = 0
    CSV.foreach("items.txt", csv_options) do |row|    
      h = row.to_hash
      #puts h.inspect
      i += 1
    end
    
    puts "Processed #{i} items."
  end

  def reviews
    i = 0
    CSV.foreach("reviews.txt", csv_options) do |row|    
      h = row.to_hash
      #puts h.inspect
      i += 1
    end
  
    puts "Processed #{i} reviews."
  end

  def screenshots
    i = 0
    CSV.foreach("screenshots.txt", csv_options) do |row|    
      h = row.to_hash
      #puts h.inspect
      i += 1
    end
  
    puts "Processed #{i} screenshots."
  end

  protected
  
  def csv_options
    # Tab delimited
    {:col_sep => "\t", :headers => :first_row, :quote_char=>'"', :skip_blanks => true, :encoding => "utf-8"}
  end
  
end

# Run the importers
Importer.new.items()
Importer.new.reviews()
Importer.new.screenshots()