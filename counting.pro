PRO counting
FOR i=0, 9 DO BEGIN
	A='bx00x.dat'
	s=string(i)
	S=strtrim(s,1)
	STRPUT,A,s,4
	print,A
	
	ENDFOR
FOR i=10, 99 DO BEGIN
        s=string(i)
        S=strtrim(s,1)  
        STRPUT,A,s,3
        print,A
        ENDFOR
i=100
        s=string(i)
        S=strtrim(s,1)  
        STRPUT,A,s,2
        print,A
END


