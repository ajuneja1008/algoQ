isPrime: f:{$[x<=1; 0b; any 0=(x mod) each (til 1+ floor (x xexp 0.5)) except 0 1;0b;1b]}

thabitAmicableNos:{
  if[x>1;
    p: -1 +3*2 xexp x-1;
    q: -1 +3*2 xexp x;
    r: -1 +9*2 xexp -1+2*x;
    $[all isPrime each (p;q;r); (p*q*2 xexp x; r*2 xexp x); ()]]}
