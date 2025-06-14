#!/usr/bin/env ruby
#
# consolidate_styles.rb (Final Version)
#
# This script finds all CSS from inline <style> tags within a Jekyll `_site`
# directory, consolidates them, optimizes/minifies them, and saves the result
# into a single, clean CSS file.
#
# --- Setup ---
#
# 1. Make sure you have bundler installed: `gem install bundler`
# 2. Place the `Gemfile` (provided separately) in your project's root directory.
# 3. Install the gems for this project: `bundle install` (run this once)
# 4. Run the script directly: `ruby scripts/consolidate_styles.rb`
#

# This line loads the gems listed in your Gemfile.
require 'bundler/setup'

require 'nokogiri'
require 'crass'
require 'fileutils'

# --- Configuration ---
SITE_DIR = '_site'
OUTPUT_DIR = 'dist'
FINAL_CSS_FILE = File.join(OUTPUT_DIR, 'inline-styles.css')

# --- Script Start ---
puts "▶️ Starting inline style consolidation with Ruby..."

# 1. Check if the source directory exists
unless Dir.exist?(SITE_DIR)
  puts "❌ Error: Source directory '#{SITE_DIR}' not found."
  puts "   Please run 'jekyll build' first."
  exit 1
end

# 2. Find all HTML files in the site directory
html_files = Dir.glob(File.join(SITE_DIR, '**', '*.html'))

if html_files.empty?
  puts "⚠️ No HTML files found in '#{SITE_DIR}'. Exiting."
  exit 0
end

# 3. Extract all inline CSS content
puts "🔎 Finding and extracting inline styles from #{html_files.count} HTML files..."
all_styles = []

html_files.each do |file_path|
  doc = Nokogiri::HTML(File.open(file_path))
  doc.css('style').each do |style_tag|
    all_styles << style_tag.content
  end
end

if all_styles.empty?
  puts "⚠️ No inline <style> tags found. Output file was not created."
  exit 0
end

# 4. Consolidate and clean the CSS with the Crass gem
puts "🚀 Consolidating and optimizing all styles..."
consolidated_css = all_styles.join("\n")

# Use Crass.parse to create an array of nodes, then map over the array
# calling .to_s on each node, and finally join them into a single string.
clean_css = Crass.parse(consolidated_css, minify: true).map(&:to_s).join

# 5. Save the final CSS file
FileUtils.mkdir_p(OUTPUT_DIR)
File.write(FINAL_CSS_FILE, clean_css)

# --- Finish ---
puts "✅ Success! Consolidated CSS saved to '#{FINAL_CSS_FILE}'."
puts "   Final file size: #{File.size(FINAL_CSS_FILE)} bytes."
puts "✨ Done."

