#!/usr/bin/env bash
# Convert multiple images to optimized JPEG for web (quality 80%)
# Save output in a 'jpeg' directory in the same location as the input image

# Usage: convert-to-jpeg-v3.sh <input_file1> [<input_file2> ...]

# Function to convert a single image
convert_image() {
  local input="$1"
  local output_dir
  local output

  # Get the directory of the input file
  input_dir=$(dirname "$input")
  
  # Define the output directory
  output_dir="$input_dir/jpeg"
  
  # Create the output directory if it doesn't exist
  mkdir -p "$output_dir"
  
  # Extract filename without extension and add .jpg
  local filename="${input##*/}"
  filename="${filename%.*}"
  output="$output_dir/${filename}.jpg"
  
  # Convert using ImageMagick with 80% quality
  convert "$input" -quality 80 "$output"
  
  # Return success or failure status
  return $?
}

# Check if at least one argument is provided
if [ $# -eq 0 ]; then
  echo "Usage: $0 <input_file1> [<input_file2> ...]"
  exit 1
fi

# Process each input file
for input in "$@"; do
  # Check if file exists
  if [ ! -f "$input" ]; then
    echo "Error: File does not exist: $input"
    continue
  fi
  
  # Convert the image
  convert_image "$input"
  if [ $? -eq 0 ]; then
    echo "Successfully converted $input to ${input##*/}.jpg"
  else
    echo "Failed to convert $input"
  fi
done

# Exit with failure status if any conversion failed
for input in "$@"; do
  if [ ! -f "$input" ]; then
    echo "Error: File does not exist: $input"
    exit 1
  fi
  convert_image "$input"
  if [ $? -ne 0 ]; then
    exit 1
  fi
done

# All conversions successful
exit 0