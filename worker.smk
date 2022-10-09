rule all:
    input:
        'result.txt'

rule generate:
    output:
        fname = 'result.txt'
    run:
        import numpy as np

        with open(output.fname, 'w') as fd:
            fd.write(str(np.std(np.random.normal(size=100))))
