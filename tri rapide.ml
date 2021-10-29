(*Tri rapide/Quicksort*)

let rec quicksort = function
    | [] -> []
    | x::xs -> let smaller, larger = List.partition (fun y -> y < x) xs
               in quicksort smaller @ (x::quicksort larger);;

let a = [10; 9; 8; 7; 6; 5; 4; 3; 2; 1; 0];;
quicksort a;;
