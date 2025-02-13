module prism(x,y,z,l,w,h,m){

polyhedron([
//dehors_debut 0 1 2 3 4 5 6 7
[x,  y,z+h ],[  x,  y,  z ],[x+l,  y,  z ],[x+l,  y,z+h ],
[x+l-m,  y,z+h ],[x+l-m*0.5,  y,z+h-m ],[x+m*0.5,  y,z+h-m ],[x+m,  y,z+h ],
//middle_debut 8 9 10 11
[x+l-m,  y,z+h-m ],[x+m,  y,z+h-m ],
[x+l-m,  y+m,z+h-m ],[x+m,  y+m,z+h-m ],
//interieur debut et fin 12 13 14 15
[x+l-m,  y+m,z+m ],[x+m,  y+m,z+m ],
[x+l-m,  y+w-m,z+m ],[x+m,  y+w-m,z+m ],
//dehors_fin 16 17 18 19
[x,  y+w,z+h ],[  x,  y+w,  z ],[x+l,  y+w,  z ],[x+l,  y+w,z+h ],
//middle_fin_pics 20 21 22 23
[x+l-m,  y+w-m,z+h ],[x+l-m*0.5,  y+w-m,z+h-m ],[x+m*0.5,  y+w-m,z+h-m ],[x+m,  y+w-m,z+h ],
//fin_interieur 24 25
[x+l-m,  y+w-m,z+h-m ],[x+m,  y+w-m,z+h-m ],
],
[
[0,1,2,3,4,5,6,7],//debu_pic
[10,11,9,8],//epais_debu
[12,13,11,10],//verti_debu
[19,18,17,16],//fin
[13,12,14,15],//interieur_plat
[24,14,12,10],//cote_interieur
[11,13,15,25],//cote_interieur
[7,6,22,23],//ramp
[6,9,11,25,22],//ramp
[4,20,21,5],//ramp
[5,21,24,10,8],//ramp
[23,22,25,15,14,24,21,20],//epais_fin
[16,0,7,23,20,4,3,19],//dessus
[3,2,18,19],//cote
[16,17,1,0],//cote
[2,1,17,18],//dessous
]
);
    
}



module plak(x,y,z,l,w,h,m){

polyhedron([
[x+m*0.5,  y,z ],[  x+l-m*0.5,  y,  z ],[x+l-m*0.5,  y+w-m,  z ],[x+m*0.5,  y+w-m,z ],
[x+m,  y,z+m ],[  x+l-m,  y,  z+m ],[x+l-m,  y+w-m,  z+m ],[x+m,  y+w-m,z+m ],
],
[
[1,0,3,2],
[0,1,5,4],
[1,2,6,5],
[2,3,7,6],
[0,4,7,3],
[4,5,6,7],
]
);
    
}

prism(0, 0, 0, 60, 100, 35, 4);

plak(80, 0, 0, 58, 100, 35, 4);