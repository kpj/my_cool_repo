rule all:
    input:
        'result.txt'

rule generate:
    output:
        'result.txt'
    shell:
        """
        echo hello > {output[0]}
        """
