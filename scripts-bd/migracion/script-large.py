import csv
import os
import datetime

def format_field(field):
    if not field:
        return 'NULL'
    # Try to convert to integer
    try:
        int(field)
        return field
    except ValueError:
        pass

    # Try to convert to float
    try:
        float(field)
        return field
    except ValueError:
        pass

    # Try to convert to date
    try:
        datetime.datetime.strptime(field, '%Y-%m-%d')
        return f"'{field}'"
    except ValueError:
        pass

    # It's a string, quote it if it's not empty
    if field:
        return f'"{field}"'
    else:
        raise ValueError("Unable to format field")
        

try:
    with open(r'scripts-bd\migracion\libro.csv', 'r', encoding='utf-8-sig') as f, open('scripts-bd\migracion\sql_queries.sql', 'w', encoding='utf-8') as out:
        csv_reader = csv.reader(f, delimiter=',', quotechar='"')
        headers = next(csv_reader)  # Skip the header
        print(f"Headers: {headers}")  # Print the headers
        out.write(f'INSERT INTO pais ({", ".join(headers)}) VALUES\n')
        for i, row in enumerate(csv_reader, start=1):
            # Format each field correctly
            out.write(f"({', '.join([format_field(field) for field in row])}),\n")
            print(f"Wrote row {i} to file")  # Print a message after writing each row
        print(f"Processed {i} rows")  # Print the number of rows processed

    # Remove the last comma and newline, and add a semicolon at the end
    if os.path.getsize('sql_queries.sql') > 0:
        print("Removing the last comma and newline, and adding a semicolon at the end")
except Exception as e:
    print(f"A Error occurred: {e}")