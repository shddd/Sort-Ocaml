(*
Tri par tas / heapsort
Complexité en temps:Au mieux O(n) En moyenne O(n log n) Au pire O(n log n)
Complexité en espace : O(1)
Entrée : une liste A
Sortie : A classée dans l'ordre croissant*)

let parent i = (i - 1) / 2;;
let enfant_gauche i = 2 * i + 1 ;;
let enfant_droite i = 2 * i + 2;;

let permuter a i j = 
  let tmp = a.(i) in
    a.(i) <- a.(j);
    a.(j) <- tmp;;

let rec entasser_tas a taille i =
  let gauche = enfant_gauche i in
  let droite = enfant_droite i in
  let max = ref 0 in
    if gauche <= taille - 1 && a.(gauche) > a.(i)
    then max := gauche
    else max := i;

    if droite <= taille - 1 && a.(droite) > a.(!max)
      then max := droite;

    if !max <> i then begin permuter a i !max; 
      entasser_tas a taille !max;
    end;;
    	
let creer_tas a taille = 
for i = taille/2 downto 0 
 do
        entasser_tas a taille i
 done;;

let creer_tas a taille = 
	for i = taille/2 downto 0 do
        entasser_tas a taille i
 done;;

let tri_par_tas a  = 
	let taille = Array.length a in
  creer_tas a taille;    
  for i = taille-1 downto 1 do   
    permuter a 0 i;   
    entasser_tas a i 0;      
  done;;	
