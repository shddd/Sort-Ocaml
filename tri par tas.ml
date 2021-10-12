(*
Tri par tas / heapsort
Complexité en temps:Au mieux O(n), En moyenne O(n log n) Au pire O(n log n)
Complexité en espace : Au pire O(1)
Entrée : une liste A
Sortie : A classée dans l'ordre croissant 
*)
(* ALPHA *)

let rec heap tab n i = 
	let larg = ref i in
	let l =  2 * i + 1 in
    let r =  2 * i + 2 in
    if (l < n && tab.(i) < tab.(l)) then 
    	!larg := l;
    if (r < n && tab.(!larg) < tab.(r)) then
    	!larg := r;
    if (!larg <> i) then
    	begin
    		let a = tab.(i) in
        	let b = tab.(!larg) in
        	tab.(i) <- b;
        	tab.(!larg) <- a;
        	heap tab n !larg
        end;
     tab;;
    


let heapsort tab =
	let n = Array.length tab in
    for i = n/2 downto -1 do
    	heap tab n i;
        done;
    for i = n-1 downto 0 do
    	let a = tab.(i) in
        let b = tab.(0) in
        tab.(i) <- b;
        tab.(0) <- a;
    	heap tab i 0;
    	done;
    tab;;
    	
