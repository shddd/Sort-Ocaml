

let bubbleSort tab =
	let n = Array.length tab in
    for i = n-1 downto 1 do
    	for j = 0 to i-1 do
        	if tab.(j + 1) < tab.(j) then begin
            	let a = tab.(j) in
                let b = tab.(j+1) in
                tab.(j) <- b;
                tab.(j + 1) <- a end;
     done;done; 
tab;;
