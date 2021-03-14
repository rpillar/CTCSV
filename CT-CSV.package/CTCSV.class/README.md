Class to load a CSV file (with headers). Data stored as an OrderedCollection containing a set of dictionaries - one for each line -> keys are the header values and therefore are assumed to be the first row in the file.

Because NeoCSVReader processes all fields as strings (unless you specify otherwise) we need to parse the column strings to _try_ and ensure that strings / integers / floats are stored correctly in the underlying Dictionary objects.
