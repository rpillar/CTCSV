# CTCSV
Load a CSV - into a dictionary ready for use.

Built on Pharo (SmallTalk) this is a small class that will enable the loading of a CSV into an image ready for processing. No special methods are supplied to enable manipulation of data - that will be down to the receiving class.

```
| csv |
csv := CTCSV new.
csv loadFromCSVFile: 'C:\Users\richa\temp\test.csv'.
csv inspect.
```

# Requires 

NeoCSV - load using - 
```
Gofer it
   smalltalkhubUser: 'SvenVanCaekenberghe' project: 'Neo';
   configurationOf: 'NeoCSV';
   loadStable.
```
