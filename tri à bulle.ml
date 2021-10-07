(*ALPHA CODE A RETRAVAILLER*)





(*
tri_à_bulles(Tableau T)
   pour i allant de (taille de T)-1 à 1
       pour j allant de 0 à i-1
           si T[j+1] < T[j]
               (T[j+1], T[j]) = (T[j], T[j+1])*)

let bubbleSort tab =
	let n = Array.length tab in
    for i = 1 to n-1 do
    	for j = 0 to i-1 do
        	if tab.(n -j + 1) < tab.(n -j) then
            	let a = ref tab.(n -j) in
                let b = ref tab.(n -j+1) in
                tab.(n - j) <- !b;
                tab.(n - j + 1) <- !a
     done;done; 
tab;;
