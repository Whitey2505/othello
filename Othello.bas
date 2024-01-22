10 rem Reversi
20 goto 740
30 print "My move..."
40 s=O: t=X: h=0
50 for a=2 to 9:for b=2 to 9
60 if a(a,b)<>46 then 210
70 q=0
80 for c=-1 to 1: for d=-1 to 1
90 k=0:f=a:g=b
100 if a(F+c,G+D)<>s then 130
110 k=k+1:f=f+c:g=g+d
120 goto 100
130 if a(f+c,g+d)<>t then 150

140 q=q+k
150 next d:next c
160 if a=2 or a=9 or b=2 or b=9 then q=q*2
170 if a=3 or a=8 or b=3 or b=8 then q=q/2
180 if (a=2ora=9) and (b=3orb=8) or (a=3ora=8) and (b=2orb=9) then q=q/2
190 if q<h or (rnd(1) <.3 and q=h) then 210
200 h=q:m=a:n=b
210 next b:next a
220 if h=0 and r=0 then 690
230 if h=0 then 250
240 gosub 580
250 gosub 370
260 input "Enter your move ";r
270 print "Enter 0 if you can't make a move"
270 rem enter 0 to pass
280 s=X: t=O: rem letter O
290 if r=0 then 350
300 if r<11 or r>88 then 260
310 r=r+11
320 m=int(r/10)
330 n=r-10*m
340 gosub 580
350 gosub 370
360 goto 30
370 rem print board
380 c=0:h=0
390 cls: rem or 'home'
400 print
410 print "     Computer is X"
420 print "        Human is O"
430 print
440 print tab(4);"1 2 3 4 5 6 7 8"
450 for b=2 to 9:print b-1;" ";
460 for d= 2 to 9
470 print chr$(a(b,d));" ";
480 if a(b,d)= x then c=c+1
490 if a(b,d) = o then h=h+1
495 if c+h=64 then 700
500 next d 
510 print b-1
520 next b
530 print tab(4);"1 2 3 4 5 6 7 8"
540 print:print
550 print "Computer:"c
560 print:print "Human:"h
570 return
580 for c=-1 to 1:for d=-1 to 1
590 f=m:g=n
600 if a(f+c,G+d)<>s then 630
610 f=f+c:g=g+d
620 goto 600
630 if a(f+c,g+d)<>t then 670
640 a(f,g)=t
650 if m=f and n=g then 670
660 f=f-c:g=g-d:goto 640
670 next d:next c
680 return
690 gosub 370
700 if c>h then print "I'm the champ!"
710 if h>c then print "You're the champ!"
720 if h=c then print "It's a draw"
730 end
740 cls
750 x=asc("X"):O=asc("O"):rem letter o not zero
760 dim a(10,10)
770 for b=1 to 10:for c=1 to 10
780 if b<>1 and c<>1 and b<>10 and c<>10 then a(b,c)=asc(".")
790 next c: next b
800 a(5,5) =X: a(6,6)= X
810 a(6,5) =O: a(5,6) = O
820 p=0
830 print "Do you want first move?"
840 print ,"y or n"
850 input w$
860 gosub 370
870 if w$="Y" or w$="y" then goto 260
880 goto 30

