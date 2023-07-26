import os
import re

# source dir for .log files
folder_path = "./"

# regex
query_time_regex = r"Query_time: ([0-9]+\.[0-9]+)"

# collect
slow_queries = []

# get file list
file_list = [f for f in os.listdir(folder_path) if f.endswith(".log")]

# parsing
for file_name in file_list:
    input_file_path = os.path.join(folder_path, file_name)

    with open(input_file_path, "r") as file:
        log_content = file.read()
        # separate files ";"
        queries = re.split(r"\s*;\s*", log_content)
        for query in queries:
            # find query_time
            match = re.search(query_time_regex, query)
            if match:
                query_time = float(match.group(1))
                #SET QUERY TIME
                if query_time > 10.0:
                    slow_queries.append((file_name, query.strip()))

# save res
for i, result in enumerate(slow_queries, start=1):
    file_name, query_text = result
    output_file_path = os.path.join(folder_path, f"slow_query_{i}.txt")
    with open(output_file_path, "w") as file:
        file.write(f"File: {file_name}\n")
        file.write(f"Query: {query_text}\n\n")

print(f"All done {len(slow_queries)} queries.")

