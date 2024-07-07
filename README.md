# ontoplex
OWL/FO Ontology on Computational Complexity


## Intro

This is an ongoing project on creating a practical tool for theoreticians: a knowledge base on the theory of computational complexity that will allow visualisation, query answering and doing basic inference.

Ontoplex is a Semantic Web style ontology. It represents complexity classes and decision problems as nodes of a graph and relations between them as (hyper)edges of that graph. It then uses axioms (=rules) to constrain the structure of the graph accoding to the theorems of complexity theory.

We used OWL 2 to express the 'main rules' of complexity and first-order logic for more sophisticated things (still, it's not enough, and we are planning to adopt some second-order axioms =). FOWL framework [1] allows to combine the two levels and use off-the-shelf OWL 2 and first-order reasoners for suitable tasks.

--

[1] Simon Flügel, Martin Glauer, Fabian Neuhaus, and Janna Hastings. When one
logic is not enough: Integrating first-order annotations in OWL ontologies.
Preprint:1–16, 2024. https://doi.org/10.3233/SW-243440


## What's in the Repo

You will find two folders:

1. **fowl/**
    (a) The *core.ofn* file written in Functional OWL Syntax with first-order axioms included as annotations. This is the latest version of Ontoplex. You can open it in Protégé and explore.

    (b) the *extracted-from-petting-zoo.ofn* file created with the help of GPT4 from the webpage https://complexityzoo.net/Petting_Zoo. It is a result of our ongoing experiments on using neural networks to populate the ontology with facts.

2. **tptp/**

    (a) The *core.tptp* file is a translation of *core.ofn* to the TPTP syntax of first-order reasoners (https://tptp.org/TPTP/SyntaxBNF.html), obtained with the use of *gavel* (https://github.com/gavel-tool/python-gavel-owl).

    (b) The *example_query.tptp* contains an example first-order reasoning question to Ontoplex.


## Using Ontoplex

You can work with *core.ofn* file directly in Protégé. For using first-order axioms you will need a suitable reasoner, such as Vampire (https://vprover.github.io). You can then run our example query by merging *core.tptp* and *example_query.tptp* into one file and feeding it to Vampire. For example, like this:

```
cat $1 $2 > problem.tptp && vampire/build/bin/vampire_rel ./problem.tptp; rm problem.tptp
```

## I still don't understand what it's all about

~~We neither~~ We are working on documentation and a tutorial. Please come back a bit later.