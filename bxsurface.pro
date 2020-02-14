PRO bxsurface
bx = fltarr(64,64,64)
i=0
      A='bx/bx00x.dat'
        s=string(i)
        S=strtrim(s,1)
        STRPUT,A,s,7
        openr,1,A
;openr,1,'bx/bx003.dat'
readu,1,bx
close,1
shade_surf,bx(*,*,3), /SAVE , title='surface plot', xstyle=1, ystyle=1 
contour,bx(*,*,3),nlevels=28, /t3d, /noclip, /noerase , /fill,$
 title='contour plot', MAX_VAL=80., zvalue=1.0,  xstyle=1, ystyle=1
end
