'''utility functions for dealing with our corpus'''

def dump(corpus_strings, filename):
    with open(filename, 'w') as f:
        for s in corpus_strings:
            f.write(s)
            f.write('\n')
