PRO ddata,array
array=fltarr(1,547)
openu,unit,'vz000.dat',/GET_LUN
readu,unit,array
close,unit
FREE_LUN,unit 
print,array
END
;array=fltarr(2,547)
;openu,unit,'ro000.dat',/GET_LUN
;readu,unit,array(1,*)
;close,unit
;openu,unit,'vz000.dat',/GET_LUN
;readu,unit,array(2,*)
;close,unit
;FREE_LUN,unit
;print,array
;surface,array


