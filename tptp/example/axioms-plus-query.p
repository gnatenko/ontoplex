% ![X, Y]:(('Class'(X) & 'Problem'(Y)) => ( ?[Z]:('hasBase'(Z, X) & 'hasPower'(Z, Y) ) ) )
fof(annotation_axiom0,axiom,(![X,Y]:(('class'(X)&'problem'(Y))=>?[Z]:('hasBase'(Z,X)&'hasPower'(Z,Y))))).
% ![X, Y]:(~ ('lessless'(X, Y) & 'lessless'(Y, X) ) )
fof(annotation_axiom1,axiom,(![X,Y]:~('lessless'(X,Y)&'lessless'(Y,X)))).
% ![X, Y, Z]:(('isStrictSubClassOf'(X, Y) & 'isSubClassOf'(Y, Z)) => 'isStrictSubClassOf'(X, Z))
fof(annotation_axiom2,axiom,(![X,Y,Z]:(('isStrictSubClassOf'(X,Y)&'isSubClassOf'(Y,Z))=>'isStrictSubClassOf'(X,Z)))).
% ![X, Y]:(~ ('extends'(X, Y) & 'extends'(Y, X) ) )
fof(annotation_axiom3,axiom,(![X,Y]:~('extends'(X,Y)&'extends'(Y,X)))).
% ![X, Y, Z, U, V]:(('hasPower'(X, Z) & 'hasPower'(Y, Z) & 'hasBase'(X, U) & 'hasBase'(Y, V) & 'isSubClassOf'(U, V)) => 'isSubClassOf'(X, Y) )
fof(annotation_axiom4,axiom,(![X,Y,Z,U,V]:(('hasPower'(X,Z)&'hasPower'(Y,Z)&'hasBase'(X,U)&'hasBase'(Y,V)&'isSubClassOf'(U,V))=>'isSubClassOf'(X,Y)))).
% ![X] : (~ 'isNotSubClassOf'(X, X) )
fof(annotation_axiom5,axiom,(![X]:~'isNotSubClassOf'(X,X))).
% ![X]:(~ 'isStrictSubClassOf'(X, X))
fof(annotation_axiom6,axiom,(![X]:~'isStrictSubClassOf'(X,X))).
% ![X]:(~ 'lessless'(X, X) )
fof(annotation_axiom7,axiom,(![X]:~'lessless'(X,X))).
% ![X]:(~ 'extends'(X, X))
fof(annotation_axiom8,axiom,(![X]:~'extends'(X,X))).
% ![X, Y]:(~ ( 'isSubClassOf'(X, Y) & 'isNotSubClassOf'(X, Y) ) )
fof(annotation_axiom9,axiom,(![X,Y]:~('isSubClassOf'(X,Y)&'isNotSubClassOf'(X,Y)))).
% ![X, Y, Z]:(('isSubClassOf'(X, Y) & 'isStrictSubClassOf'(Y, Z)) => 'isStrictSubClassOf'(X, Z))
fof(annotation_axiom10,axiom,(![X,Y,Z]:(('isSubClassOf'(X,Y)&'isStrictSubClassOf'(Y,Z))=>'isStrictSubClassOf'(X,Z)))).
% background axiom: domain consists of objects and data
fof(axiom0,axiom,(![X]:('http___www_w3_org_2002_07_owl_Thing'(X)|'http___www_w3_org_2000_01_rdf_schema_Literal'(X)))).
% background axiom: object domain and data domain are disjoint
fof(axiom1,axiom,(![X]:('http___www_w3_org_2002_07_owl_Thing'(X)=>~'http___www_w3_org_2000_01_rdf_schema_Literal'(X)))).
% background axiom: there are things
fof(axiom2,axiom,(?[X]:'http___www_w3_org_2002_07_owl_Thing'(X))).
% background axiom: there are literals
fof(axiom3,axiom,(?[X]:'http___www_w3_org_2000_01_rdf_schema_Literal'(X))).
% facets can only be applied to literals
fof(axiom4,axiom,(![X,Y]:('http___www_w3_org_2001_XMLSchema_minExclusive'(X,Y)=>('http___www_w3_org_2000_01_rdf_schema_Literal'(X)&'http___www_w3_org_2000_01_rdf_schema_Literal'(Y))))).
% facets can only be applied to literals
fof(axiom5,axiom,(![X,Y]:('http___www_w3_org_2001_XMLSchema_fractionDigits'(X,Y)=>('http___www_w3_org_2000_01_rdf_schema_Literal'(X)&'http___www_w3_org_2000_01_rdf_schema_Literal'(Y))))).
% facets can only be applied to literals
fof(axiom6,axiom,(![X,Y]:('http___www_w3_org_2001_XMLSchema_pattern'(X,Y)=>('http___www_w3_org_2000_01_rdf_schema_Literal'(X)&'http___www_w3_org_2000_01_rdf_schema_Literal'(Y))))).
% facets can only be applied to literals
fof(axiom7,axiom,(![X,Y]:('http___www_w3_org_2001_XMLSchema_minLength'(X,Y)=>('http___www_w3_org_2000_01_rdf_schema_Literal'(X)&'http___www_w3_org_2000_01_rdf_schema_Literal'(Y))))).
% facets can only be applied to literals
fof(axiom8,axiom,(![X,Y]:('http___www_w3_org_2001_XMLSchema_minInclusive'(X,Y)=>('http___www_w3_org_2000_01_rdf_schema_Literal'(X)&'http___www_w3_org_2000_01_rdf_schema_Literal'(Y))))).
% facets can only be applied to literals
fof(axiom9,axiom,(![X,Y]:('http___www_w3_org_2001_XMLSchema_totalDigits'(X,Y)=>('http___www_w3_org_2000_01_rdf_schema_Literal'(X)&'http___www_w3_org_2000_01_rdf_schema_Literal'(Y))))).
% facets can only be applied to literals
fof(axiom10,axiom,(![X,Y]:('http___www_w3_org_2001_XMLSchema_length'(X,Y)=>('http___www_w3_org_2000_01_rdf_schema_Literal'(X)&'http___www_w3_org_2000_01_rdf_schema_Literal'(Y))))).
% facets can only be applied to literals
fof(axiom11,axiom,(![X,Y]:('http___www_w3_org_2001_XMLSchema_maxExclusive'(X,Y)=>('http___www_w3_org_2000_01_rdf_schema_Literal'(X)&'http___www_w3_org_2000_01_rdf_schema_Literal'(Y))))).
% facets can only be applied to literals
fof(axiom12,axiom,(![X,Y]:('http___www_w3_org_2001_XMLSchema_maxLength'(X,Y)=>('http___www_w3_org_2000_01_rdf_schema_Literal'(X)&'http___www_w3_org_2000_01_rdf_schema_Literal'(Y))))).
% facets can only be applied to literals
fof(axiom13,axiom,(![X,Y]:('http___www_w3_org_1999_02_22_rdf_syntax_ns_langRange'(X,Y)=>('http___www_w3_org_2000_01_rdf_schema_Literal'(X)&'http___www_w3_org_2000_01_rdf_schema_Literal'(Y))))).
% facets can only be applied to literals
fof(axiom14,axiom,(![X,Y]:('http___www_w3_org_2001_XMLSchema_maxInclusive'(X,Y)=>('http___www_w3_org_2000_01_rdf_schema_Literal'(X)&'http___www_w3_org_2000_01_rdf_schema_Literal'(Y))))).
% TransitiveObjectProperty(<isReducibleTo>)
fof(axiom15,axiom,(![X0,X1,X2]:(('isReducibleTo'(X0,X1)&'isReducibleTo'(X1,X2))=>'isReducibleTo'(X0,X2)))).
% TransitiveObjectProperty(<lessless>)
fof(axiom16,axiom,(![X0,X1,X2]:(('lessless'(X0,X1)&'lessless'(X1,X2))=>'lessless'(X0,X2)))).
% SubObjectPropertyOf(<isClassOfComplementsFor> <modifierRelation>)
fof(axiom17,axiom,(![X0,X1]:('isClassOfComplementsFor'(X0,X1)=>'modifierRelation'(X0,X1)))).
% SubObjectPropertyOf(<isStrictSubClassOf> <isSubClassOf>)
fof(axiom18,axiom,(![X0,X1]:('isStrictSubClassOf'(X0,X1)=>'isSubClassOf'(X0,X1)))).
% SymmetricObjectProperty(<isEqualTo>)
fof(axiom19,axiom,(![X0,X1]:('isEqualTo'(X0,X1)=>'isEqualTo'(X1,X0)))).
% ObjectPropertyDomain(<isNextLevel> <LevelOfHierarchy>)
fof(axiom20,axiom,(![X0,X1]:('isNextLevel'(X0,X1)=>'levelOfHierarchy'(X0)))).
% SubObjectPropertyOf(<bpTime> <definitionRelation>)
fof(axiom21,axiom,(![X0,X1]:('bpTime'(X0,X1)=>'definitionRelation'(X0,X1)))).
% Declaration(ObjectProperty(<hasBase>))
fof(axiom22,axiom,(![X,Y]:('hasBase'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<hasBase>))
fof(axiom23,axiom,(![X,Y]:('hasBase'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% Declaration(ObjectProperty(<isClassOfComplementsFor>))
fof(axiom24,axiom,(![X,Y]:('isClassOfComplementsFor'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<isClassOfComplementsFor>))
fof(axiom25,axiom,(![X,Y]:('isClassOfComplementsFor'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% FunctionalObjectProperty(<isFunctionVersionOf>)
fof(axiom26,axiom,(![X0,X1,X2]:(('isFunctionVersionOf'(X0,X1)&'isFunctionVersionOf'(X0,X2))=>(X1=X2)))).
% ObjectPropertyRange(<isHardFor> <Class>)
fof(axiom27,axiom,(![X0,X1]:('isHardFor'(X0,X1)=>'class'(X1)))).
% Declaration(Class(<LevelOfHierarchy>))
fof(axiom28,axiom,(![X]:('levelOfHierarchy'(X)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% FunctionalObjectProperty(<isParityVersionOf>)
fof(axiom29,axiom,(![X0,X1,X2]:(('isParityVersionOf'(X0,X1)&'isParityVersionOf'(X0,X2))=>(X1=X2)))).
% FunctionalObjectProperty(<dTime>)
fof(axiom30,axiom,(![X0,X1,X2]:(('dTime'(X0,X1)&'dTime'(X0,X2))=>(X1=X2)))).
% InverseFunctionalObjectProperty(<isNextLevel>)
fof(axiom31,axiom,(![X0,X1,X2]:(('isNextLevel'(X1,X0)&'isNextLevel'(X2,X0))=>(X1=X2)))).
% SubObjectPropertyOf(<rTime> <definitionRelation>)
fof(axiom32,axiom,(![X0,X1]:('rTime'(X0,X1)=>'definitionRelation'(X0,X1)))).
% SubObjectPropertyOf(<extends> <isSubClassOf>)
fof(axiom33,axiom,(![X0,X1]:('extends'(X0,X1)=>'isSubClassOf'(X0,X1)))).
% Declaration(ObjectProperty(<hasPower>))
fof(axiom34,axiom,(![X,Y]:('hasPower'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<hasPower>))
fof(axiom35,axiom,(![X,Y]:('hasPower'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% Declaration(ObjectProperty(<extendsByAdvice>))
fof(axiom36,axiom,(![X,Y]:('extendsByAdvice'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<extendsByAdvice>))
fof(axiom37,axiom,(![X,Y]:('extendsByAdvice'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% FunctionalObjectProperty(<extendsByAdvice_logarithmic>)
fof(axiom38,axiom,(![X0,X1,X2]:(('extendsByAdvice_logarithmic'(X0,X1)&'extendsByAdvice_logarithmic'(X0,X2))=>(X1=X2)))).
% SubObjectPropertyOf(<isLevelOf> <AbstractRelation>)
fof(axiom39,axiom,(![X0,X1]:('isLevelOf'(X0,X1)=>'abstractRelation'(X0,X1)))).
% Declaration(Class(<AbstractEntity>))
fof(axiom40,axiom,(![X]:('abstractEntity'(X)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% SubObjectPropertyOf(<extendsByAdvice_logarithmic> <extendsByAdvice_polynomial>)
fof(axiom41,axiom,(![X0,X1]:('extendsByAdvice_logarithmic'(X0,X1)=>'extendsByAdvice_polynomial'(X0,X1)))).
% ObjectPropertyAssertion(<isSubClassOf> <QMA> <PP>)
fof(axiom42,axiom,('isSubClassOf'('qMA','pP'))).
% ObjectPropertyAssertion(<isSubClassOf> <QMA> <PP>)
fof(axiom43,axiom,('http___www_w3_org_2002_07_owl_Thing'('qMA'))).
% ObjectPropertyAssertion(<isSubClassOf> <QMA> <PP>)
fof(axiom44,axiom,('http___www_w3_org_2002_07_owl_Thing'('pP'))).
% SubObjectPropertyOf(ObjectPropertyChain( <isMemberOf> ObjectInverseOf(<isHardFor_wrtPolyTimeReductions>) ) <isReducibleTo_inPolyTime>)
fof(axiom45,axiom,(![X0,X1]:(?[X2]:('isMemberOf'(X0,X2)&'isHardFor_wrtPolyTimeReductions'(X1,X2))=>'isReducibleTo_inPolyTime'(X0,X1)))).
% ObjectPropertyAssertion(<hasPower> <AM^Ver> <Ver>)
fof(axiom46,axiom,('hasPower'('aM^Ver','ver'))).
% ObjectPropertyAssertion(<hasPower> <AM^Ver> <Ver>)
fof(axiom47,axiom,('http___www_w3_org_2002_07_owl_Thing'('aM^Ver'))).
% ObjectPropertyAssertion(<hasPower> <AM^Ver> <Ver>)
fof(axiom48,axiom,('http___www_w3_org_2002_07_owl_Thing'('ver'))).
% Declaration(ObjectProperty(<isMemberOf>))
fof(axiom49,axiom,(![X,Y]:('isMemberOf'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<isMemberOf>))
fof(axiom50,axiom,(![X,Y]:('isMemberOf'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% Declaration(ObjectProperty(<isHardFor>))
fof(axiom51,axiom,(![X,Y]:('isHardFor'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<isHardFor>))
fof(axiom52,axiom,(![X,Y]:('isHardFor'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% FunctionalObjectProperty(<nTime>)
fof(axiom53,axiom,(![X0,X1,X2]:(('nTime'(X0,X1)&'nTime'(X0,X2))=>(X1=X2)))).
% ObjectPropertyDomain(<isFromHierarchy> <Class>)
fof(axiom54,axiom,(![X0,X1]:('isFromHierarchy'(X0,X1)=>'class'(X0)))).
% SubObjectPropertyOf(<nTime> <definitionRelation>)
fof(axiom55,axiom,(![X0,X1]:('nTime'(X0,X1)=>'definitionRelation'(X0,X1)))).
% ObjectPropertyRange(<isLevelOf> <Hierarchy>)
fof(axiom56,axiom,(![X0,X1]:('isLevelOf'(X0,X1)=>'hierarchy'(X1)))).
% Declaration(ObjectProperty(<rTime>))
fof(axiom57,axiom,(![X,Y]:('rTime'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<rTime>))
fof(axiom58,axiom,(![X,Y]:('rTime'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% FunctionalObjectProperty(<isOnLevel>)
fof(axiom59,axiom,(![X0,X1,X2]:(('isOnLevel'(X0,X1)&'isOnLevel'(X0,X2))=>(X1=X2)))).
% Declaration(ObjectProperty(<isEqualTo>))
fof(axiom60,axiom,(![X,Y]:('isEqualTo'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<isEqualTo>))
fof(axiom61,axiom,(![X,Y]:('isEqualTo'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% SubObjectPropertyOf(<extends> <modifierRelation>)
fof(axiom62,axiom,(![X0,X1]:('extends'(X0,X1)=>'modifierRelation'(X0,X1)))).
% FunctionalObjectProperty(<nSpace>)
fof(axiom63,axiom,(![X0,X1,X2]:(('nSpace'(X0,X1)&'nSpace'(X0,X2))=>(X1=X2)))).
% IrreflexiveObjectProperty(<extendsByAdvice_logarithmic>)
fof(axiom64,axiom,(![X0]:~'extendsByAdvice_logarithmic'(X0,X0))).
% Declaration(Class(<Problem>))
fof(axiom65,axiom,(![X]:('problem'(X)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% SymmetricObjectProperty(<isClassOfComplementsFor>)
fof(axiom66,axiom,(![X0,X1]:('isClassOfComplementsFor'(X0,X1)=>'isClassOfComplementsFor'(X1,X0)))).
% ClassAssertion(<Class> <QMA>)
fof(axiom67,axiom,('class'('qMA'))).
% ClassAssertion(<Class> <QMA>)
fof(axiom68,axiom,('http___www_w3_org_2002_07_owl_Thing'('qMA'))).
% SubObjectPropertyOf(<dSpace> <definitionRelation>)
fof(axiom69,axiom,(![X0,X1]:('dSpace'(X0,X1)=>'definitionRelation'(X0,X1)))).
% IrreflexiveObjectProperty(<isFunctionVersionOf>)
fof(axiom70,axiom,(![X0]:~'isFunctionVersionOf'(X0,X0))).
% FunctionalObjectProperty(<bpTime>)
fof(axiom71,axiom,(![X0,X1,X2]:(('bpTime'(X0,X1)&'bpTime'(X0,X2))=>(X1=X2)))).
% AsymmetricObjectProperty(<isFunctionVersionOf>)
fof(axiom72,axiom,(![X0,X1]:~('isFunctionVersionOf'(X0,X1)&'isFunctionVersionOf'(X1,X0)))).
% SubObjectPropertyOf(ObjectPropertyChain( <isMemberOf> ObjectInverseOf(<isHardFor_wrtLogSpaceReductions>) ) <isReducibleTo_inLogSpace>)
fof(axiom73,axiom,(![X0,X1]:(?[X2]:('isMemberOf'(X0,X2)&'isHardFor_wrtLogSpaceReductions'(X1,X2))=>'isReducibleTo_inLogSpace'(X0,X1)))).
% TransitiveObjectProperty(<isReducibleTo_inPolyTime>)
fof(axiom74,axiom,(![X0,X1,X2]:(('isReducibleTo_inPolyTime'(X0,X1)&'isReducibleTo_inPolyTime'(X1,X2))=>'isReducibleTo_inPolyTime'(X0,X2)))).
% AsymmetricObjectProperty(<isNextLevel>)
fof(axiom75,axiom,(![X0,X1]:~('isNextLevel'(X0,X1)&'isNextLevel'(X1,X0)))).
% ObjectPropertyDomain(<isOnLevel> <Class>)
fof(axiom76,axiom,(![X0,X1]:('isOnLevel'(X0,X1)=>'class'(X0)))).
% SubObjectPropertyOf(ObjectPropertyChain( ObjectInverseOf(<isReducibleTo_inPolyTime>) <isHardFor_wrtPolyTimeReductions> ) <isHardFor_wrtPolyTimeReductions>)
fof(axiom77,axiom,(![X0,X1]:(?[X2]:('isReducibleTo_inPolyTime'(X2,X0)&'isHardFor_wrtPolyTimeReductions'(X2,X1))=>'isHardFor_wrtPolyTimeReductions'(X0,X1)))).
% SubObjectPropertyOf(<isOnLevel> <AbstractRelation>)
fof(axiom78,axiom,(![X0,X1]:('isOnLevel'(X0,X1)=>'abstractRelation'(X0,X1)))).
% ObjectPropertyDomain(<isReducibleTo> <Problem>)
fof(axiom79,axiom,(![X0,X1]:('isReducibleTo'(X0,X1)=>'problem'(X0)))).
% Declaration(ObjectProperty(<extendsByBoundedProbability>))
fof(axiom80,axiom,(![X,Y]:('extendsByBoundedProbability'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<extendsByBoundedProbability>))
fof(axiom81,axiom,(![X,Y]:('extendsByBoundedProbability'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% SubObjectPropertyOf(<isNextLevel> <AbstractRelation>)
fof(axiom82,axiom,(![X0,X1]:('isNextLevel'(X0,X1)=>'abstractRelation'(X0,X1)))).
% SubObjectPropertyOf(ObjectPropertyChain( <isFromHierarchy> ObjectInverseOf(<isUnionOf>) ) <isSubClassOf>)
fof(axiom83,axiom,(![X0,X1]:(?[X2]:('isFromHierarchy'(X0,X2)&'isUnionOf'(X1,X2))=>'isSubClassOf'(X0,X1)))).
% SubObjectPropertyOf(<SpaceHierarchy> <isStrictSubClassOf>)
fof(axiom84,axiom,(![X0,X1]:('spaceHierarchy'(X0,X1)=>'isStrictSubClassOf'(X0,X1)))).
% Declaration(Class(<Class.Relative>))
fof(axiom85,axiom,(![X]:('class_Relative'(X)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<extendsByRandomness>))
fof(axiom86,axiom,(![X,Y]:('extendsByRandomness'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<extendsByRandomness>))
fof(axiom87,axiom,(![X,Y]:('extendsByRandomness'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% IrreflexiveObjectProperty(<isNextLevel>)
fof(axiom88,axiom,(![X0]:~'isNextLevel'(X0,X0))).
% Declaration(ObjectProperty(<isReducibleTo_inLogSpace>))
fof(axiom89,axiom,(![X,Y]:('isReducibleTo_inLogSpace'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<isReducibleTo_inLogSpace>))
fof(axiom90,axiom,(![X,Y]:('isReducibleTo_inLogSpace'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% SubObjectPropertyOf(ObjectPropertyChain( <isNotSubClassOf> ObjectInverseOf(<isSubClassOf>) ) <isNotSubClassOf>)
fof(axiom91,axiom,(![X0,X1]:(?[X2]:('isNotSubClassOf'(X0,X2)&'isSubClassOf'(X1,X2))=>'isNotSubClassOf'(X0,X1)))).
% Declaration(Class(<Oracle>))
fof(axiom92,axiom,(![X]:('oracle'(X)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% ClassAssertion(<Class.Relative> <PP^Ver>)
fof(axiom93,axiom,('class_Relative'('pP^Ver'))).
% ClassAssertion(<Class.Relative> <PP^Ver>)
fof(axiom94,axiom,('http___www_w3_org_2002_07_owl_Thing'('pP^Ver'))).
% SubObjectPropertyOf(ObjectPropertyChain( ObjectInverseOf(<isSubClassOf>) <isNotSubClassOf> ) <isNotSubClassOf>)
fof(axiom95,axiom,(![X0,X1]:(?[X2]:('isSubClassOf'(X2,X0)&'isNotSubClassOf'(X2,X1))=>'isNotSubClassOf'(X0,X1)))).
% ObjectPropertyRange(<isMemberOf> <Class>)
fof(axiom96,axiom,(![X0,X1]:('isMemberOf'(X0,X1)=>'class'(X1)))).
% AsymmetricObjectProperty(<isParityVersionOf>)
fof(axiom97,axiom,(![X0,X1]:~('isParityVersionOf'(X0,X1)&'isParityVersionOf'(X1,X0)))).
% InverseFunctionalObjectProperty(<isClassOfComplementsFor>)
fof(axiom98,axiom,(![X0,X1,X2]:(('isClassOfComplementsFor'(X1,X0)&'isClassOfComplementsFor'(X2,X0))=>(X1=X2)))).
% ObjectPropertyRange(<lessless> <Bound>)
fof(axiom99,axiom,(![X0,X1]:('lessless'(X0,X1)=>'bound'(X1)))).
% Declaration(ObjectProperty(<nTime>))
fof(axiom100,axiom,(![X,Y]:('nTime'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<nTime>))
fof(axiom101,axiom,(![X,Y]:('nTime'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% AsymmetricObjectProperty(<hasBase>)
fof(axiom102,axiom,(![X0,X1]:~('hasBase'(X0,X1)&'hasBase'(X1,X0)))).
% Declaration(Class(<Bound>))
fof(axiom103,axiom,(![X]:('bound'(X)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% SubObjectPropertyOf(<hasBase> ObjectInverseOf(<isSubClassOf>))
fof(axiom104,axiom,(![X0,X1]:('hasBase'(X0,X1)=>'isSubClassOf'(X1,X0)))).
% Declaration(ObjectProperty(<extendsByAdvice_polynomial>))
fof(axiom105,axiom,(![X,Y]:('extendsByAdvice_polynomial'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<extendsByAdvice_polynomial>))
fof(axiom106,axiom,(![X,Y]:('extendsByAdvice_polynomial'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% ObjectPropertyDomain(<definitionRelation> <Class>)
fof(axiom107,axiom,(![X0,X1]:('definitionRelation'(X0,X1)=>'class'(X0)))).
% SubObjectPropertyOf(ObjectPropertyChain( <bpTime> ObjectInverseOf(<dTime>) ) <extendsByBoundedProbability>)
fof(axiom108,axiom,(![X0,X1]:(?[X2]:('bpTime'(X0,X2)&'dTime'(X1,X2))=>'extendsByBoundedProbability'(X0,X1)))).
% Declaration(ObjectProperty(<isOnLevel>))
fof(axiom109,axiom,(![X,Y]:('isOnLevel'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<isOnLevel>))
fof(axiom110,axiom,(![X,Y]:('isOnLevel'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% SubObjectPropertyOf(<TimeHierarchy> <isStrictSubClassOf>)
fof(axiom111,axiom,(![X0,X1]:('timeHierarchy'(X0,X1)=>'isStrictSubClassOf'(X0,X1)))).
% IrreflexiveObjectProperty(<isParityVersionOf>)
fof(axiom112,axiom,(![X0]:~'isParityVersionOf'(X0,X0))).
% SubObjectPropertyOf(<isReducibleTo_inPolyTime> <isReducibleTo>)
fof(axiom113,axiom,(![X0,X1]:('isReducibleTo_inPolyTime'(X0,X1)=>'isReducibleTo'(X0,X1)))).
% Declaration(ObjectProperty(<isHardFor_wrtPolyTimeReductions>))
fof(axiom114,axiom,(![X,Y]:('isHardFor_wrtPolyTimeReductions'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<isHardFor_wrtPolyTimeReductions>))
fof(axiom115,axiom,(![X,Y]:('isHardFor_wrtPolyTimeReductions'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% Declaration(ObjectProperty(<extendsByNondeterminism>))
fof(axiom116,axiom,(![X,Y]:('extendsByNondeterminism'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<extendsByNondeterminism>))
fof(axiom117,axiom,(![X,Y]:('extendsByNondeterminism'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% Declaration(ObjectProperty(<modifierRelation>))
fof(axiom118,axiom,(![X,Y]:('modifierRelation'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<modifierRelation>))
fof(axiom119,axiom,(![X,Y]:('modifierRelation'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% SubObjectPropertyOf(ObjectPropertyChain( <isMemberOf> ObjectInverseOf(<isHardFor>) ) <isReducibleTo>)
fof(axiom120,axiom,(![X0,X1]:(?[X2]:('isMemberOf'(X0,X2)&'isHardFor'(X1,X2))=>'isReducibleTo'(X0,X1)))).
% ObjectPropertyDomain(<isLevelOf> <LevelOfHierarchy>)
fof(axiom121,axiom,(![X0,X1]:('isLevelOf'(X0,X1)=>'levelOfHierarchy'(X0)))).
% Declaration(ObjectProperty(<isUnionOf>))
fof(axiom122,axiom,(![X,Y]:('isUnionOf'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<isUnionOf>))
fof(axiom123,axiom,(![X,Y]:('isUnionOf'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% ObjectPropertyDomain(<isMemberOf> <Problem>)
fof(axiom124,axiom,(![X0,X1]:('isMemberOf'(X0,X1)=>'problem'(X0)))).
% Declaration(ObjectProperty(<isLevelOf>))
fof(axiom125,axiom,(![X,Y]:('isLevelOf'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<isLevelOf>))
fof(axiom126,axiom,(![X,Y]:('isLevelOf'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% InverseFunctionalObjectProperty(<isFunctionVersionOf>)
fof(axiom127,axiom,(![X0,X1,X2]:(('isFunctionVersionOf'(X1,X0)&'isFunctionVersionOf'(X2,X0))=>(X1=X2)))).
% Declaration(ObjectProperty(<bpTime>))
fof(axiom128,axiom,(![X,Y]:('bpTime'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<bpTime>))
fof(axiom129,axiom,(![X,Y]:('bpTime'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% SubObjectPropertyOf(<extendsByBoundedProbability> <extends>)
fof(axiom130,axiom,(![X0,X1]:('extendsByBoundedProbability'(X0,X1)=>'extends'(X0,X1)))).
% SubObjectPropertyOf(ObjectPropertyChain( <dTime> <lessless> ObjectInverseOf(<dTime>) ) <TimeHierarchy>)
fof(axiom131,axiom,(![X0,X1]:(?[X2,X3]:('dTime'(X0,X2)&'lessless'(X2,X3)&'dTime'(X1,X3))=>'timeHierarchy'(X0,X1)))).
% Declaration(ObjectProperty(<definitionRelation>))
fof(axiom132,axiom,(![X,Y]:('definitionRelation'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<definitionRelation>))
fof(axiom133,axiom,(![X,Y]:('definitionRelation'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% SubObjectPropertyOf(<isReducibleTo_inLogSpace> <isReducibleTo_inPolyTime>)
fof(axiom134,axiom,(![X0,X1]:('isReducibleTo_inLogSpace'(X0,X1)=>'isReducibleTo_inPolyTime'(X0,X1)))).
% ObjectPropertyAssertion(<isNotSubClassOf> <AM^Ver> <PP^Ver>)
fof(axiom135,axiom,('isNotSubClassOf'('aM^Ver','pP^Ver'))).
% ObjectPropertyAssertion(<isNotSubClassOf> <AM^Ver> <PP^Ver>)
fof(axiom136,axiom,('http___www_w3_org_2002_07_owl_Thing'('aM^Ver'))).
% ObjectPropertyAssertion(<isNotSubClassOf> <AM^Ver> <PP^Ver>)
fof(axiom137,axiom,('http___www_w3_org_2002_07_owl_Thing'('pP^Ver'))).
% ObjectPropertyRange(<isReducibleTo> <Problem>)
fof(axiom138,axiom,(![X0,X1]:('isReducibleTo'(X0,X1)=>'problem'(X1)))).
% Declaration(ObjectProperty(<isNotSubClassOf>))
fof(axiom139,axiom,(![X,Y]:('isNotSubClassOf'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<isNotSubClassOf>))
fof(axiom140,axiom,(![X,Y]:('isNotSubClassOf'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% Declaration(ObjectProperty(<TimeHierarchy>))
fof(axiom141,axiom,(![X,Y]:('timeHierarchy'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<TimeHierarchy>))
fof(axiom142,axiom,(![X,Y]:('timeHierarchy'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% SubObjectPropertyOf(<dTime> <definitionRelation>)
fof(axiom143,axiom,(![X0,X1]:('dTime'(X0,X1)=>'definitionRelation'(X0,X1)))).
% Declaration(ObjectProperty(<nSpace>))
fof(axiom144,axiom,(![X,Y]:('nSpace'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<nSpace>))
fof(axiom145,axiom,(![X,Y]:('nSpace'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% SubObjectPropertyOf(<extendsByRandomness> <extends>)
fof(axiom146,axiom,(![X0,X1]:('extendsByRandomness'(X0,X1)=>'extends'(X0,X1)))).
% ObjectPropertyAssertion(<hasPower> <PP^Ver> <Ver>)
fof(axiom147,axiom,('hasPower'('pP^Ver','ver'))).
% ObjectPropertyAssertion(<hasPower> <PP^Ver> <Ver>)
fof(axiom148,axiom,('http___www_w3_org_2002_07_owl_Thing'('pP^Ver'))).
% ObjectPropertyAssertion(<hasPower> <PP^Ver> <Ver>)
fof(axiom149,axiom,('http___www_w3_org_2002_07_owl_Thing'('ver'))).
% SubClassOf(<Oracle> <Problem>)
fof(axiom150,axiom,(![X0]:('oracle'(X0)=>'problem'(X0)))).
% ClassAssertion(<Class> <PP>)
fof(axiom151,axiom,('class'('pP'))).
% ClassAssertion(<Class> <PP>)
fof(axiom152,axiom,('http___www_w3_org_2002_07_owl_Thing'('pP'))).
% ObjectPropertyRange(<isUnionOf> <Hierarchy>)
fof(axiom153,axiom,(![X0,X1]:('isUnionOf'(X0,X1)=>'hierarchy'(X1)))).
% ObjectPropertyRange(<hasBase> <Class>)
fof(axiom154,axiom,(![X0,X1]:('hasBase'(X0,X1)=>'class'(X1)))).
% SubObjectPropertyOf(<extendsByAdvice_polynomial> <extendsByAdvice>)
fof(axiom155,axiom,(![X0,X1]:('extendsByAdvice_polynomial'(X0,X1)=>'extendsByAdvice'(X0,X1)))).
% ObjectPropertyRange(<definitionRelation> <Bound>)
fof(axiom156,axiom,(![X0,X1]:('definitionRelation'(X0,X1)=>'bound'(X1)))).
% ObjectPropertyDomain(<modifierRelation> <Class>)
fof(axiom157,axiom,(![X0,X1]:('modifierRelation'(X0,X1)=>'class'(X0)))).
% SubObjectPropertyOf(<isEqualTo> ObjectInverseOf(<isSubClassOf>))
fof(axiom158,axiom,(![X0,X1]:('isEqualTo'(X0,X1)=>'isSubClassOf'(X1,X0)))).
% TransitiveObjectProperty(<isSubClassOf>)
fof(axiom159,axiom,(![X0,X1,X2]:(('isSubClassOf'(X0,X1)&'isSubClassOf'(X1,X2))=>'isSubClassOf'(X0,X2)))).
% SubObjectPropertyOf(ObjectPropertyChain( <isOnLevel> ObjectInverseOf(<isNextLevel>) ObjectInverseOf(<isOnLevel>) ) <isSubClassOf>)
fof(axiom160,axiom,(![X0,X1]:(?[X2,X3]:('isOnLevel'(X0,X2)&'isNextLevel'(X3,X2)&'isOnLevel'(X1,X3))=>'isSubClassOf'(X0,X1)))).
% IrreflexiveObjectProperty(<hasBase>)
fof(axiom161,axiom,(![X0]:~'hasBase'(X0,X0))).
% TransitiveObjectProperty(<isReducibleTo_inLogSpace>)
fof(axiom162,axiom,(![X0,X1,X2]:(('isReducibleTo_inLogSpace'(X0,X1)&'isReducibleTo_inLogSpace'(X1,X2))=>'isReducibleTo_inLogSpace'(X0,X2)))).
% ObjectPropertyDomain(<lessless> <Bound>)
fof(axiom163,axiom,(![X0,X1]:('lessless'(X0,X1)=>'bound'(X0)))).
% Declaration(ObjectProperty(<dSpace>))
fof(axiom164,axiom,(![X,Y]:('dSpace'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<dSpace>))
fof(axiom165,axiom,(![X,Y]:('dSpace'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% FunctionalObjectProperty(<isUnionOf>)
fof(axiom166,axiom,(![X0,X1,X2]:(('isUnionOf'(X0,X1)&'isUnionOf'(X0,X2))=>(X1=X2)))).
% SubObjectPropertyOf(<isFunctionVersionOf> <modifierRelation>)
fof(axiom167,axiom,(![X0,X1]:('isFunctionVersionOf'(X0,X1)=>'modifierRelation'(X0,X1)))).
% SubObjectPropertyOf(<isUnionOf> <AbstractRelation>)
fof(axiom168,axiom,(![X0,X1]:('isUnionOf'(X0,X1)=>'abstractRelation'(X0,X1)))).
% SubObjectPropertyOf(ObjectPropertyChain( <isNextLevel> <isLevelOf> ) <isLevelOf>)
fof(axiom169,axiom,(![X0,X1]:(?[X2]:('isNextLevel'(X0,X2)&'isLevelOf'(X2,X1))=>'isLevelOf'(X0,X1)))).
% SubClassOf(<Hierarchy> <AbstractEntity>)
fof(axiom170,axiom,(![X0]:('hierarchy'(X0)=>'abstractEntity'(X0)))).
% TransitiveObjectProperty(<isStrictSubClassOf>)
fof(axiom171,axiom,(![X0,X1,X2]:(('isStrictSubClassOf'(X0,X1)&'isStrictSubClassOf'(X1,X2))=>'isStrictSubClassOf'(X0,X2)))).
% ObjectPropertyRange(<isOnLevel> <LevelOfHierarchy>)
fof(axiom172,axiom,(![X0,X1]:('isOnLevel'(X0,X1)=>'levelOfHierarchy'(X1)))).
% InverseFunctionalObjectProperty(<isParityVersionOf>)
fof(axiom173,axiom,(![X0,X1,X2]:(('isParityVersionOf'(X1,X0)&'isParityVersionOf'(X2,X0))=>(X1=X2)))).
% ObjectPropertyRange(<isSubClassOf> <Class>)
fof(axiom174,axiom,(![X0,X1]:('isSubClassOf'(X0,X1)=>'class'(X1)))).
% FunctionalObjectProperty(<hasPower>)
fof(axiom175,axiom,(![X0,X1,X2]:(('hasPower'(X0,X1)&'hasPower'(X0,X2))=>(X1=X2)))).
% SubObjectPropertyOf(<extendsByNondeterminism> <extends>)
fof(axiom176,axiom,(![X0,X1]:('extendsByNondeterminism'(X0,X1)=>'extends'(X0,X1)))).
% ObjectPropertyDomain(<hasBase> <Class.Relative>)
fof(axiom177,axiom,(![X0,X1]:('hasBase'(X0,X1)=>'class_Relative'(X0)))).
% SubObjectPropertyOf(<isHardFor_wrtLogSpaceReductions> <isHardFor_wrtPolyTimeReductions>)
fof(axiom178,axiom,(![X0,X1]:('isHardFor_wrtLogSpaceReductions'(X0,X1)=>'isHardFor_wrtPolyTimeReductions'(X0,X1)))).
% Declaration(ObjectProperty(<isFunctionVersionOf>))
fof(axiom179,axiom,(![X,Y]:('isFunctionVersionOf'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<isFunctionVersionOf>))
fof(axiom180,axiom,(![X,Y]:('isFunctionVersionOf'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% Declaration(ObjectProperty(<extends>))
fof(axiom181,axiom,(![X,Y]:('extends'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<extends>))
fof(axiom182,axiom,(![X,Y]:('extends'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% FunctionalObjectProperty(<isNextLevel>)
fof(axiom183,axiom,(![X0,X1,X2]:(('isNextLevel'(X0,X1)&'isNextLevel'(X0,X2))=>(X1=X2)))).
% Declaration(ObjectProperty(<extendsByAdvice_logarithmic>))
fof(axiom184,axiom,(![X,Y]:('extendsByAdvice_logarithmic'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<extendsByAdvice_logarithmic>))
fof(axiom185,axiom,(![X,Y]:('extendsByAdvice_logarithmic'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% FunctionalObjectProperty(<hasBase>)
fof(axiom186,axiom,(![X0,X1,X2]:(('hasBase'(X0,X1)&'hasBase'(X0,X2))=>(X1=X2)))).
% SubObjectPropertyOf(<isEqualTo> <isSubClassOf>)
fof(axiom187,axiom,(![X0,X1]:('isEqualTo'(X0,X1)=>'isSubClassOf'(X0,X1)))).
% ObjectPropertyDomain(<isNotSubClassOf> <Class>)
fof(axiom188,axiom,(![X0,X1]:('isNotSubClassOf'(X0,X1)=>'class'(X0)))).
% SubObjectPropertyOf(<extendsByAdvice> <extends>)
fof(axiom189,axiom,(![X0,X1]:('extendsByAdvice'(X0,X1)=>'extends'(X0,X1)))).
% Declaration(ObjectProperty(<isHardFor_wrtLogSpaceReductions>))
fof(axiom190,axiom,(![X,Y]:('isHardFor_wrtLogSpaceReductions'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<isHardFor_wrtLogSpaceReductions>))
fof(axiom191,axiom,(![X,Y]:('isHardFor_wrtLogSpaceReductions'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% Declaration(Class(<Class>))
fof(axiom192,axiom,(![X]:('class'(X)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<isReducibleTo>))
fof(axiom193,axiom,(![X,Y]:('isReducibleTo'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<isReducibleTo>))
fof(axiom194,axiom,(![X,Y]:('isReducibleTo'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% Declaration(ObjectProperty(<isNextLevel>))
fof(axiom195,axiom,(![X,Y]:('isNextLevel'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<isNextLevel>))
fof(axiom196,axiom,(![X,Y]:('isNextLevel'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% Declaration(ObjectProperty(<lessless>))
fof(axiom197,axiom,(![X,Y]:('lessless'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<lessless>))
fof(axiom198,axiom,(![X,Y]:('lessless'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% ObjectPropertyRange(<isNextLevel> <LevelOfHierarchy>)
fof(axiom199,axiom,(![X0,X1]:('isNextLevel'(X0,X1)=>'levelOfHierarchy'(X1)))).
% ObjectPropertyDomain(<isSubClassOf> <Class>)
fof(axiom200,axiom,(![X0,X1]:('isSubClassOf'(X0,X1)=>'class'(X0)))).
% FunctionalObjectProperty(<isClassOfComplementsFor>)
fof(axiom201,axiom,(![X0,X1,X2]:(('isClassOfComplementsFor'(X0,X1)&'isClassOfComplementsFor'(X0,X2))=>(X1=X2)))).
% ObjectPropertyRange(<modifierRelation> <Class>)
fof(axiom202,axiom,(![X0,X1]:('modifierRelation'(X0,X1)=>'class'(X1)))).
% SubClassOf(<Class.Relative> <Class>)
fof(axiom203,axiom,(![X0]:('class_Relative'(X0)=>'class'(X0)))).
% FunctionalObjectProperty(<dSpace>)
fof(axiom204,axiom,(![X0,X1,X2]:(('dSpace'(X0,X1)&'dSpace'(X0,X2))=>(X1=X2)))).
% SubObjectPropertyOf(<nSpace> <definitionRelation>)
fof(axiom205,axiom,(![X0,X1]:('nSpace'(X0,X1)=>'definitionRelation'(X0,X1)))).
% Declaration(Class(<Hierarchy>))
fof(axiom206,axiom,(![X]:('hierarchy'(X)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% SubObjectPropertyOf(ObjectPropertyChain( <dSpace> <lessless> ObjectInverseOf(<dSpace>) ) <SpaceHierarchy>)
fof(axiom207,axiom,(![X0,X1]:(?[X2,X3]:('dSpace'(X0,X2)&'lessless'(X2,X3)&'dSpace'(X1,X3))=>'spaceHierarchy'(X0,X1)))).
% ObjectPropertyRange(<isFromHierarchy> <Hierarchy>)
fof(axiom208,axiom,(![X0,X1]:('isFromHierarchy'(X0,X1)=>'hierarchy'(X1)))).
% SubObjectPropertyOf(ObjectPropertyChain( ObjectInverseOf(<isReducibleTo>) <isHardFor> ) <isHardFor>)
fof(axiom209,axiom,(![X0,X1]:(?[X2]:('isReducibleTo'(X2,X0)&'isHardFor'(X2,X1))=>'isHardFor'(X0,X1)))).
% FunctionalObjectProperty(<rTime>)
fof(axiom210,axiom,(![X0,X1,X2]:(('rTime'(X0,X1)&'rTime'(X0,X2))=>(X1=X2)))).
% Declaration(ObjectProperty(<isSubClassOf>))
fof(axiom211,axiom,(![X,Y]:('isSubClassOf'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<isSubClassOf>))
fof(axiom212,axiom,(![X,Y]:('isSubClassOf'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% SubObjectPropertyOf(ObjectPropertyChain( ObjectInverseOf(<isReducibleTo_inLogSpace>) <isHardFor_wrtLogSpaceReductions> ) <isHardFor_wrtLogSpaceReductions>)
fof(axiom213,axiom,(![X0,X1]:(?[X2]:('isReducibleTo_inLogSpace'(X2,X0)&'isHardFor_wrtLogSpaceReductions'(X2,X1))=>'isHardFor_wrtLogSpaceReductions'(X0,X1)))).
% ObjectPropertyDomain(<hasPower> <Class.Relative>)
fof(axiom214,axiom,(![X0,X1]:('hasPower'(X0,X1)=>'class_Relative'(X0)))).
% ObjectPropertyDomain(<isHardFor> <Problem>)
fof(axiom215,axiom,(![X0,X1]:('isHardFor'(X0,X1)=>'problem'(X0)))).
% ClassAssertion(<Class> <AM>)
fof(axiom216,axiom,('class'('aM'))).
% ClassAssertion(<Class> <AM>)
fof(axiom217,axiom,('http___www_w3_org_2002_07_owl_Thing'('aM'))).
% ObjectPropertyAssertion(<hasBase> <PP^Ver> <PP>)
fof(axiom218,axiom,('hasBase'('pP^Ver','pP'))).
% ObjectPropertyAssertion(<hasBase> <PP^Ver> <PP>)
fof(axiom219,axiom,('http___www_w3_org_2002_07_owl_Thing'('pP^Ver'))).
% ObjectPropertyAssertion(<hasBase> <PP^Ver> <PP>)
fof(axiom220,axiom,('http___www_w3_org_2002_07_owl_Thing'('pP'))).
% SubObjectPropertyOf(ObjectPropertyChain( <isOnLevel> <isLevelOf> ) <isFromHierarchy>)
fof(axiom221,axiom,(![X0,X1]:(?[X2]:('isOnLevel'(X0,X2)&'isLevelOf'(X2,X1))=>'isFromHierarchy'(X0,X1)))).
% Declaration(ObjectProperty(<isStrictSubClassOf>))
fof(axiom222,axiom,(![X,Y]:('isStrictSubClassOf'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<isStrictSubClassOf>))
fof(axiom223,axiom,(![X,Y]:('isStrictSubClassOf'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% Declaration(ObjectProperty(<isFromHierarchy>))
fof(axiom224,axiom,(![X,Y]:('isFromHierarchy'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<isFromHierarchy>))
fof(axiom225,axiom,(![X,Y]:('isFromHierarchy'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% ObjectPropertyDomain(<isUnionOf> <Class>)
fof(axiom226,axiom,(![X0,X1]:('isUnionOf'(X0,X1)=>'class'(X0)))).
% SubObjectPropertyOf(ObjectPropertyChain( <nTime> ObjectInverseOf(<dTime>) ) <extendsByNondeterminism>)
fof(axiom227,axiom,(![X0,X1]:(?[X2]:('nTime'(X0,X2)&'dTime'(X1,X2))=>'extendsByNondeterminism'(X0,X1)))).
% ClassAssertion(<Oracle> <Ver>)
fof(axiom228,axiom,('oracle'('ver'))).
% ClassAssertion(<Oracle> <Ver>)
fof(axiom229,axiom,('http___www_w3_org_2002_07_owl_Thing'('ver'))).
% Declaration(ObjectProperty(<SpaceHierarchy>))
fof(axiom230,axiom,(![X,Y]:('spaceHierarchy'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<SpaceHierarchy>))
fof(axiom231,axiom,(![X,Y]:('spaceHierarchy'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% Declaration(ObjectProperty(<dTime>))
fof(axiom232,axiom,(![X,Y]:('dTime'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<dTime>))
fof(axiom233,axiom,(![X,Y]:('dTime'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% SubObjectPropertyOf(<isParityVersionOf> <modifierRelation>)
fof(axiom234,axiom,(![X0,X1]:('isParityVersionOf'(X0,X1)=>'modifierRelation'(X0,X1)))).
% TransitiveObjectProperty(<isEqualTo>)
fof(axiom235,axiom,(![X0,X1,X2]:(('isEqualTo'(X0,X1)&'isEqualTo'(X1,X2))=>'isEqualTo'(X0,X2)))).
% SubObjectPropertyOf(ObjectPropertyChain( <isMemberOf> <isSubClassOf> ) <isMemberOf>)
fof(axiom236,axiom,(![X0,X1]:(?[X2]:('isMemberOf'(X0,X2)&'isSubClassOf'(X2,X1))=>'isMemberOf'(X0,X1)))).
% Declaration(ObjectProperty(<AbstractRelation>))
fof(axiom237,axiom,(![X,Y]:('abstractRelation'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<AbstractRelation>))
fof(axiom238,axiom,(![X,Y]:('abstractRelation'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% SubObjectPropertyOf(ObjectPropertyChain( <rTime> ObjectInverseOf(<dTime>) ) <extendsByRandomness>)
fof(axiom239,axiom,(![X0,X1]:(?[X2]:('rTime'(X0,X2)&'dTime'(X1,X2))=>'extendsByRandomness'(X0,X1)))).
% ObjectPropertyRange(<isNotSubClassOf> <Class>)
fof(axiom240,axiom,(![X0,X1]:('isNotSubClassOf'(X0,X1)=>'class'(X1)))).
% SubClassOf(<LevelOfHierarchy> <AbstractEntity>)
fof(axiom241,axiom,(![X0]:('levelOfHierarchy'(X0)=>'abstractEntity'(X0)))).
% ObjectPropertyRange(<hasPower> <Oracle>)
fof(axiom242,axiom,(![X0,X1]:('hasPower'(X0,X1)=>'oracle'(X1)))).
% SubObjectPropertyOf(ObjectPropertyChain( <nSpace> ObjectInverseOf(<dSpace>) ) <extendsByNondeterminism>)
fof(axiom243,axiom,(![X0,X1]:(?[X2]:('nSpace'(X0,X2)&'dSpace'(X1,X2))=>'extendsByNondeterminism'(X0,X1)))).
% Declaration(ObjectProperty(<isReducibleTo_inPolyTime>))
fof(axiom244,axiom,(![X,Y]:('isReducibleTo_inPolyTime'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<isReducibleTo_inPolyTime>))
fof(axiom245,axiom,(![X,Y]:('isReducibleTo_inPolyTime'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% ObjectPropertyAssertion(<hasBase> <AM^Ver> <AM>)
fof(axiom246,axiom,('hasBase'('aM^Ver','aM'))).
% ObjectPropertyAssertion(<hasBase> <AM^Ver> <AM>)
fof(axiom247,axiom,('http___www_w3_org_2002_07_owl_Thing'('aM^Ver'))).
% ObjectPropertyAssertion(<hasBase> <AM^Ver> <AM>)
fof(axiom248,axiom,('http___www_w3_org_2002_07_owl_Thing'('aM'))).
% SubObjectPropertyOf(<isHardFor_wrtPolyTimeReductions> <isHardFor>)
fof(axiom249,axiom,(![X0,X1]:('isHardFor_wrtPolyTimeReductions'(X0,X1)=>'isHardFor'(X0,X1)))).
% Declaration(ObjectProperty(<isParityVersionOf>))
fof(axiom250,axiom,(![X,Y]:('isParityVersionOf'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(X)))).
% Declaration(ObjectProperty(<isParityVersionOf>))
fof(axiom251,axiom,(![X,Y]:('isParityVersionOf'(X,Y)=>'http___www_w3_org_2002_07_owl_Thing'(Y)))).
% ClassAssertion(<Class.Relative> <AM^Ver>)
fof(axiom252,axiom,('class_Relative'('aM^Ver'))).
% ClassAssertion(<Class.Relative> <AM^Ver>)
fof(axiom253,axiom,('http___www_w3_org_2002_07_owl_Thing'('aM^Ver'))).
% SubObjectPropertyOf(<isFromHierarchy> <AbstractRelation>)
fof(axiom254,axiom,(![X0,X1]:('isFromHierarchy'(X0,X1)=>'abstractRelation'(X0,X1)))).

fof(conj, conjecture, (?[X, Y, Z]:('hasBase'(X, 'aM') & 'hasPower'(X, Z) & 'hasBase'(Y, 'qMA') & 'hasPower'(Y, Z) & 'isNotSubClassOf'(X, Y))) ).
