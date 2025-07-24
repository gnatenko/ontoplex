# ontoplex
OWL/FO Ontology on Computational Complexity by [Anton Gnatenko](https://gnatenko.github.io), [Oliver Kutz](https://www.inf.unibz.it/~okutz/) and [Nicolas Troquard](https://gssi.it/people/professors/lectures-computer-science/item/24936-troquard-nicolas).


## Intro

This is an ongoing project of creating a practical tool for theoreticians: a knowledge base of computational complexity that will allow visualisation, query answering and basic inference.

Ontoplex is a Semantic Web style ontology. It represents complexity classes and decision problems as nodes of a graph and relations between them as (hyper)edges of that graph. It then uses axioms (=rules) to constrain the structure of the graph accoding to the theorems of complexity theory.

We used OWL 2 to express the 'main rules' of complexity and first-order logic for more sophisticated things. [FOWL framework](https://doi.org/10.3233/SW-243440) allows to combine the two levels and use off-the-shelf OWL 2 and first-order reasoners for suitable tasks.


## What's in the Repo

The folder *fowl/* contains the following:

1. *schema.ofn* contains the relations that we use, their hierarchy, their properties (reflexivity, symmetry, assymetry, etc) and their descriptions.

2. *axioms.ofn* contains axioms, both in OWL 2 DL and first-order logic, about these relations. Some of the properties declared in *schema.ofn* had to go first-order here, so that the rest adhere to the restrictions of OWL 2 DL.

3. *data/* folder contains example files with facts of complexity theory expressed using the relations of *schema.ofn*. These facts are rather scarce: it is not an easy task to convert them, by hand, from natural-language texts to OWL syntax. We are working on it.

These *.ofn* files are written in Functional OWL Syntax with first-order axioms included as annotations.  You can open it in Protégé and explore.

The folder *tptp/* contains the following:

1. *axioms.tptp* obtained by translating from FOWL to TPTP syntax of first-order logic with [gawel](https://github.com/gavel-tool/python-gavel-owl).

2. *example/* folder (see below).

The *.tptp* files can be fed to any first-order reasoner that understands TPTP syntax, e.g. [Vampire](https://vprover.github.io).

## A reasonable example of reasoning

1. Merge the ontologies *fowl/axioms.ofn* and *data/example.ofn*. You can simply copy the content of *example.ofn* under the line "Named Individuals" and until the last closing parenthesis of the file to the end (but before the closing parenthesis) of *axioms.ofn*.

2. Translate the resulting file to TPTP syntax (you will need to install [gawel](https://github.com/gavel-tool/python-gavel-owl) for that):

```
python -m gavel translate fowl tptp your-ontology.owl
```

Alternatively, you can take the ready file *tptp/axioms.tptp*.

3. Add the conjecture from *tptp/example/query.tptp* after the axioms and save the file with the extension *.p*. You can find a prepared variant in *tptp/example/axioms-plus-query.p*

4. Use Vampire to check that the conjecture follows from the axioms (you will need to [install](https://github.com/vprover/vampire) it):

```
vampire example-plus-query.p | grep "status"
```

The expected output is

```
SZS status Theorem for example
```

meaning that *query.tptp* is a theorem of theory *axioms.tptpt*. Learn more about SZS statuses [here](https://tptp.org/TPTPTParty/2007/PositionStatements/GeoffSutcliffe_SZS.html).



## I still don't understand what it's all about

~~We neither~~ We are working on documentation and a tutorial, which will be available soon.
