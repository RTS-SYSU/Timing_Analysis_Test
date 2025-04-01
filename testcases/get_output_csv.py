import re
import csv

input_file_1 = 'Zhao_Output.txt'
input_file_2 = 'out.txt'
output_file = 'output.csv'

task_pattern = re.compile(r'/workspaces/llvmta/testcases/batchtest/(\w+)')
max_ceop_pattern = re.compile(r'main_MAX_CEOP_: (\d+)')

data = []
with open(input_file_2, 'r') as file:
    measurements = [line.strip() for line in file if line.strip().isdigit()]

with open(input_file_1, 'r') as file:
    lines = file.readlines()
    task_name = None
    max_ceop = None
    measurement_index = 0

    for line in lines:
        task_match = task_pattern.search(line)
        if task_match:
            task_name = task_match.group(1)

        max_ceop_match = max_ceop_pattern.search(line)
        if max_ceop_match and task_name:
            max_ceop = int(max_ceop_match.group(1))
            if measurement_index < len(measurements):
                measurement = int(measurements[measurement_index])
                pessimism = round(max_ceop / measurement, 2) if measurement != 0 else float('inf')
                data.append([task_name, measurement, max_ceop, pessimism])
                measurement_index += 1
            task_name = None

with open(output_file, 'w', newline='') as csvfile:
    writer = csv.writer(csvfile)
    writer.writerow(['Task Name', 'Measurement Time', 'Analysis Time', 'Pessimism']) 
    writer.writerows(data)

print(f'CSV: {output_file}')
