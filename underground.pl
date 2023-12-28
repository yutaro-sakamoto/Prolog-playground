connected(bond_street,oxford_circus,central).
connected(oxford_circus,tottenham_court_road,central).
connected(bond_street,green_park,jubilee).
connected(green_park,charing_cross,jubilee).
connected(green_park,piccadilly_circus,piccadilly).
connected(piccadilly_circus,leicester_square,piccadilly).
connected(green_park,oxford_circus,victoria).
connected(oxford_circus,piccadilly_circus,bakerloo).
connected(piccadilly_circus,charing_cross,bakerloo).
connected(tottenham_court_road,leicester_square,northern).
connected(leicester_square,charing_cross,northern).

nearby(bond_street,oxford_circus).
nearby(oxford_circus,tottenham_court_road).
nearby(bond_street,tottenham_court_road).
nearby(bond_street,green_park).
nearby(green_park,charing_cross).
nearby(bond_street,charing_cross).
nearby(green_park,piccadilly_circus).
nearby(piccadilly_circus,leicester_square).
nearby(green_park,leicester_square).
nearby(green_park,oxford_circus).
nearby(oxford_circus,piccadilly_circus).
nearby(piccadilly_circus,charing_cross).
nearby(oxford_circus,charing_cross).
nearby(tottenham_court_road,leicester_square).
nearby(leicester_square,charing_cross).
nearby(tottenham_court_road,charing_cross).

nearby(X,Y):- connected(X,Y,_L).
nearby(X,Y):- connected(X,Y,L), connected(Y,Z,L).

not_too_far(X,Y):- connected(X,Y,L).
not_too_far(X,Z):- connected(X,Y,L1), connected(Y,Z,L2).