 #!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo -e "\n#==========================================================="
echo "Start Times"

# Check for rplpl and rplspl slurm output files
for file in rplpl-slurm*.out rs1-slurm*.out rs2-slurm*.out rs3-slurm*.out rs4-slurm*.out ; do
        echo "==> $file <=="
        head -n 1 "$file"  # Display the first line (Start Time)
done

echo "End Times"

for file in rplpl-slurm*.out rs1-slurm*.out rs2-slurm*.out rs3-slurm*.out rs4-slurm*.out; do
        echo "==> $file <=="
        tail -n 5 "$file"  # Display the last line (End Time) and messageID
done

echo "#==========================================================="
