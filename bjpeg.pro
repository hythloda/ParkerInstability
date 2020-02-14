PRO bjpeg
thisDevice = !D.Name
Set_Plot, 'Z', /COPY
Device, Set_Resolution=[500,350], Z_Buffer=0
Erase
ro = fltarr(64,64,64)
openr,1,'rodir/ro021.dat'
readu,1,ro
close,1
;shade_surf,ro(*,*,3)
contour,ro(*,*,3),nlevels=28, /noclip, /noerase , /fill
snapshot = TVRD()
TVLCT, r, g, b, /Get
Device, Z_Buffer=1
Set_Plot, thisDevice
image24 = BytArr(3, 500, 350)
image24[0,*,*] = r[snapshot]
image24[1,*,*] = g[snapshot]
image24[2,*,*] = b[snapshot]
Write_JPEG, 'con021.jpg', image24, True=1, Quality=75
END

