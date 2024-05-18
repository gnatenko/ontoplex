cat $1 $2 > problem.tptp && ../../reasoners/vampire/build/bin/vampire_rel ./problem.tptp; rm problem.tptp
