code    SEGMENT
        ASSUME  CS:code
main:   MOV     BL,0
lab1:   MOV     CX,10
        MOV     DL,'0'
        ADD     DL,BL
lab2:   MOV     AH,2
        INT     21H
        ADD     DL,1
        CMP     DL,'9'
        JBE     lab3
        MOV     DL,'0'
lab3:   LOOP    lab2
        MOV     DL,13
        INT     21H
        MOV     DL,10
        INT     21H
        ADD     BL,1
        CMP     BL,10
        JB      lab1
        MOV     AX,4C00H
        INT     21H
code    ENDS
        END     main
