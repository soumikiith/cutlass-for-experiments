# Count total files
total_files=$(ls -1 | wc -l)

# Count CUDA files
cuda_files=$(ls -1 *.cu 2>/dev/null | wc -l)

# Calculate percentage
if [ $total_files -gt 0 ]; then
    percentage=$(awk "BEGIN {print ($cuda_files / $total_files) * 100}")
    echo "Percentage of CUDA files: $percentage%"
else
    echo "No files in the directory."
fi
