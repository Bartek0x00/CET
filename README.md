Cpp Essentials Translated is the C implementation of some STL concepts.

The "library" is header based and designed with C23 in mind, however 
you can make it work for older C standards by defining CET_FORCE symbol 
before including the header (more details discussed individually)

The "library" uses something in form of a namespace. 
To not interfere with other code, every symbol is prefixed with CET_
By default CET_names are mapped to names e.g. CET_Pair is defined as Pair.
To override this behaviour, define CET_LONG_NAMES before including the header.


