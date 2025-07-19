# ontoplex
OWL/FO Ontology on Computational Complexity by [Anton Gnatenko](https://gnatenko.github.io), [Oliver Kutz](https://www.inf.unibz.it/~okutz/) and [Nicolas Troquard](https://gssi.it/people/professors/lectures-computer-science/item/24936-troquard-nicolas).

We rely on the materials of [Complexity Zoo](https://complexityzoo.net/Complexity_Zoo) and often use texts from there for annotations.


## Intro

This is an ongoing project of creating a practical tool for theoreticians: a knowledge base on the theory of computational complexity that will allow visualisation, query answering and doing basic inference.

Ontoplex is a Semantic Web style ontology. It represents complexity classes and decision problems as nodes of a graph and relations between them as (hyper)edges of that graph. It then uses axioms (=rules) to constrain the structure of the graph accoding to the theorems of complexity theory.

We used OWL 2 to express the 'main rules' of complexity and first-order logic for more sophisticated things. [FOWL framework](https://doi.org/10.3233/SW-243440) allows to combine the two levels and use off-the-shelf OWL 2 and first-order reasoners for suitable tasks.


## What's in the Repo

You will find two folders:

1. **fowl/**

    (a) The *core.ofn* file written in Functional OWL Syntax with first-order axioms included as annotations. This is the latest version of Ontoplex axioms, hand-written by us. You can open it in Protégé and explore.

2. **tptp/**

    (a) The *core.tptp* file is a translation of *core.ofn* to the [TPTP syntax](https://tptp.org/TPTP/SyntaxBNF.html) of first-order reasoners. The translation was made by [*gavel-owl*](https://github.com/gavel-tool/python-gavel-owl), a tool by the authors of the [FOWL framework](https://doi.org/10.3233/SW-243440).


### There is not much yet...    

There will be more. We are currently working on an automated approach to extract facts about complexity classes from natural language texts. 


## Using Ontoplex

You can work with *core.ofn* file directly in Protégé. For using first-order axioms you will need a suitable reasoner, such as [Vampire](https://vprover.github.io). 

## I still don't understand what it's all about

~~We neither~~ We are working on documentation and a tutorial, which will be available soon.
