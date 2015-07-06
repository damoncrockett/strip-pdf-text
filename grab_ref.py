import glob
import os
import sys

input_path = sys.argv[1]
output_file = sys.argv[2]

snippets = []
for input_file in glob.glob(os.path.join(input_path,'*.txt')):
    with open(input_file, "r") as input_file:
        page_string = input_file.read().replace('\n','')
    	page_string = page_string[:2500]
    	snippets.append(page_string)

print snippets

with open(output_file,'wb') as output_file:
    for item in snippets:        
        output_file.write("%s\n" % item)