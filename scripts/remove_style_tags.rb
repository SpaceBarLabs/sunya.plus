#!/usr/bin/env ruby
#
# remove_styles.rb
#
# This script recursively finds all HTML files in the `_site` directory
# and removes all inline <style> tags from them.
#
# WARNING: This script modifies files in place. It is a destructive operation.
# Make sure you have a backup or can regenerate your site easily before running.
#
# --- Setup ---
#
# 1. Make sure you have bundler installed: `gem install bundler`
# 2. Place the `Gemfile` (provided separately) in your project's root directory.
# 3. Install the gem for this project: `bundle install` (run this once)
# 4. Run the script: `ruby scripts/remove_styles.rb`
#

# This line loads the gems listed in your Gemfile.
require 'bundler/setup'

require 'nokogiri'
require 'fileutils'

# --- Configuration ---
SITE_DIR = '.'

# --- Script Start ---
puts "▶️ Starting to remove <style> tags from HTML files..."
puts "🔴 WARNING: This script will modify files in place in the '#{SITE_DIR}' directory."

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

# 3. Process each HTML file
puts "🔎 Found #{html_files.count} HTML files to process..."
files_changed = 0

html_files.each do |file_path|
  doc = Nokogiri::HTML(File.open(file_path))

  # Find all <style> tags
  style_tags = doc.css('style')

  # If style tags are found, remove them and save the file
  unless style_tags.empty?
    puts "   - Removing #{style_tags.count} <style> tag(s) from: #{file_path}"
    style_tags.remove

    # Overwrite the original file with the modified content
    File.write(file_path, doc.to_html)
    files_changed += 1
  end
end

# --- Finish ---
puts "✅ Success! Processed all files."
puts "   #{files_changed} file(s) were modified."
puts "✨ Done."

