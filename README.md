# ontoplex
OWL/FO Ontology on Computational Complexity by [Anton Gnatenko](https://gnatenko.github.io), [Oliver Kutz](https://www.inf.unibz.it/~okutz/) and [Nicolas Troquard](https://gssi.it/people/professors/lectures-computer-science/item/24936-troquard-nicolas).

We rely on the materials of [Complexity Zoo](https://complexityzoo.net/Complexity_Zoo) and often use texts from there for annotations.


## Intro

This is an ongoing project of creating a practical tool for theoreticians: a knowledge base of computational complexity that will allow visualisation, query answering and basic inference.

Ontoplex is a Semantic Web style ontology. It represents complexity classes and decision problems as nodes of a graph and relations between them as (hyper)edges of that graph. It then uses axioms (=rules) to constrain the structure of the graph accoding to the theorems of complexity theory.

We used OWL 2 to express the 'main rules' of complexity and first-order logic for more sophisticated things. [FOWL framework](https://doi.org/10.3233/SW-243440) allows to combine the two levels and use off-the-shelf OWL 2 and first-order reasoners for suitable tasks.


## What's in the Repo

The (only, for now) folder *fowl/* contains two subfolders:

1. The *axioms/*, where you will find *validation.ofn*, for a sanity-check of the data, and *reasoning.ofn*, for query answering.

2. The *data/*, containing facts of complexity theory, encoded in OWL. These facts are rather scarce: it is not an easy task to convert them, by hand, from natural-language texts to OWL syntax. We are working on it.

These *.ofn* files are written in Functional OWL Syntax with first-order axioms included as annotations. This is the latest version of Ontoplex axioms, hand-written by us. You can open it in Protégé and explore.


## I still don't understand what it's all about

~~We neither~~ We are working on documentation and a tutorial, which will be available soon.
