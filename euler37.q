isPrime:{$[x<=1; 0b; any 0=(x mod) each (til 1+ floor (sqrt x)) except 0 1;0b;1b]}

getPrimes:{t where 1b=isPrime each t: (til x) except 0 1}

checkLTP:{[pri]all isPrime each "J"${y _ string x}[pri] each til count string pri}
checkRTP:{[pri] all isPrime each "J"${neg [y] _ string x}[pri] each til count string pri}

result:{[lim]sum distinct {$[all `checkRTP`checkLTP @\: x;x;0]} each except[getPrimes lim; 2 3 5 7]}

