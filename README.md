# ontoplex
OWL/FO Ontology on Computational Complexity by [Anton Gnatenko](https://gnatenko.github.io), [Oliver Kutz](https://www.inf.unibz.it/~okutz/) and [Nicolas Troquard](https://gssi.it/people/professors/lectures-computer-science/item/24936-troquard-nicolas).


## Intro

This is an ongoing project of creating a practical tool for theoreticians: a knowledge base on the theory of computational complexity that will allow visualisation, query answering and doing basic inference.

Ontoplex is a Semantic Web style ontology. It represents complexity classes and decision problems as nodes of a graph and relations between them as (hyper)edges of that graph. It then uses axioms (=rules) to constrain the structure of the graph accoding to the theorems of complexity theory.

We used OWL 2 to express the 'main rules' of complexity and first-order logic for more sophisticated things (still, it's not enough, and we are planning to adopt some second-order axioms =). [FOWL framework]((https://doi.org/10.3233/SW-243440)) allows to combine the two levels and use off-the-shelf OWL 2 and first-order reasoners for suitable tasks.


## What's in the Repo

You will find two folders:

1. **fowl/**
    (a) The *core.ofn* file written in Functional OWL Syntax with first-order axioms included as annotations. This is the latest version of Ontoplex axioms, hand-written by us. You can open it in Protégé and explore. Please refer to [Ontoplex Wiki](https://github.com/gnatenko/ontoplex/wiki) for an explanation of the axioms. 

    (b) the *extracted/* subfolder contains files created with the help of GPT4-o from descriptions of complexity classes at [Complexity Zoo](https://complexityzoo.net), and from the general [introduction to complexity](https://complexityzoo.net/Petting_Zoo) at the same website. It is a result of our ongoing experiments on using neural networks to populate the ontology with facts. Note that the original output of GPT4-o has gone through substantial human correction before being added to the repo.

2. **tptp/**

    (a) The *core.tptp* file is a translation of *core.ofn* to the [TPTP syntax](https://tptp.org/TPTP/SyntaxBNF.html) of first-order reasoners. The translation was made by [*gavel-owl*](https://github.com/gavel-tool/python-gavel-owl), a tool by the authors of the [FOWL framework]((https://doi.org/10.3233/SW-243440)).

    (b) The *example_query.tptp* contains an example first-order reasoning question to Ontoplex.


## Using Ontoplex

You can work with *core.ofn* file directly in Protégé. For using first-order axioms you will need a suitable reasoner, such as [Vampire](https://vprover.github.io). You can then run our example query by merging *core.tptp* and *example_query.tptp* into one file and feeding it to Vampire. This can be done like this:

```
cat core.tptp example_query.tptp > problem.tptp && vampire/build/bin/vampire_rel ./problem.tptp; rm problem.tptp
```

## I still don't understand what it's all about

~~We neither~~ Check [Ontoplex Wiki](https://github.com/gnatenko/ontoplex/wiki) for documentation and a tutorial.