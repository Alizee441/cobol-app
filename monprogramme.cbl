identification division.
program-id. myprog.

environment division.
configuration section.

data division.
working-storage section.
77 a PIC 9.
77 b PIC 9.

screen section.
1 pla-titre.
      2 line col 8 value 'entrer la valeur de a : '.
      2 PIC 9 nom required.
      2 line col 10 value 'entrer la valeur de b : '.
      2 PIC 9 nom required.

procedure division.
display pla-titre.
accept pla-titre.

stop run.

    
    goback.

end program myprog.