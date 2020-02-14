PRO bxjpeg
thisDevice = !D.Name
Set_Plot, 'Z', /COPY
Device, Set_Resolution=[500,350], Z_Buffer=0
Erase

bx = fltarr(64,64,64)

arrayx=fltarr(100)
arrayy=fltarr(100)
arrayz=fltarr(100)
;FOR i=0, 9 DO BEGIN
i=10
	A='bx/bx00x.dat'
	s=string(i)
        S=strtrim(s,1)
        STRPUT,A,s,6
	openr,1,A
	readu,1,bx
	close,1
	;shade_surf,bx(*,*,3)
	contour,bx(*,*,3),nlevels=28, /noclip, /noerase , /fill
	snapshot = TVRD()
	TVLCT, r, g, b, /Get
	Device, Z_Buffer=1
	Set_Plot, thisDevice
	image24 = BytArr(3, 500, 350)
	image24[0,*,*] = r[snapshot]
	image24[1,*,*] = g[snapshot]
	image24[2,*,*] = b[snapshot]
	B='bxcon/bx00x.jpg'
	STRPUT,B,s,9
	Write_JPEG, B, image24, True=1, Quality=75
;	ENDFOR
END
