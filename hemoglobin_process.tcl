cd "C:\\Users\\justi\\PycharmProjects\\AR_Models\\hemoglobin"
axes location off

for {set i 1} {$i < 10} {incr i} {
	mol addfile hemoglobin_fix_CG_0$i.pdb
	mol selection "resid 58 or resid 87 or resid 42 or resid 104 or resid 64"
    mol color Element
    mol representation licorice
    mol addrep top
    mol selection "resname HEM"
    mol color Element
    mol representation licorice
    mol addrep top
    mol selection "chain A"
    mol representation NewCartoon
    mol color ColorID 8
    mol addrep top
    mol selection "resname OXY"
    mol representation VDW
    mol color Element
    mol addrep top
    mol selection "element Fe"
    mol representation VDW 0.5
    mol color Element
    mol addrep top
	render Wavefront frame0$i.obj
	sleep 2
	mol delete $i
	sleep 2
}

for {set i 10} {$i < 32} {incr i} {
mol addfile hemoglobin_fix_CG_$i.pdb
	mol selection "resid 58 or resid 87 or resid 42 or resid 104 or resid 64"
    mol color Element
    mol representation licorice
    mol addrep top
    mol selection "resname HEM"
    mol color Element
    mol representation licorice
    mol addrep top
    mol selection "chain A"
    mol representation NewCartoon
    mol color ColorID 8
    mol addrep top
    mol selection "resname OXY"
    mol representation VDW
    mol color Element
    mol addrep top
    mol selection "element Fe"
    mol representation VDW 0.5
    mol color Element
    mol addrep top
	render Wavefront frame$i.obj
	sleep 2
	mol delete $i
	sleep 2
}
