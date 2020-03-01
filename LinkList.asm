; Linked List in Assembly
; Author:  Devin 
; Date:    2/2020

.586
.MODEL FLAT
.stack 5096


.DATA


root DWORD "RTRT", OFFSET [two] ; STRING + Address to two

current DWORD 02 ; Current Node 

DWORD 10 DUP(?)  ; 

two DWORD 50, [root] ; Integer + Address to root

.CODE
main PROC
        
        ; Test Case 1
        ; Retrieving Value
        
        mov ebx, root
        mov eax, OFFSET [current+4] ;
        mov [eax], ebx
        
        ; This retrieves the value
        ; of root and copies to 
        ; memory location current + 4
        
        
        
        ; Test Case 2
        ; Retrieving Address

        mov ebx, OFFSET [two]
        mov eax, OFFSET [current+4]
        mov [eax], ebx
        
        ; This copies the address 
        ; of two to memory location
        ; current + 4
        

        
        mov ebx, root
        mov eax, OFFSET [current]
        mov [eax], ebx

        mov ebx, root+4
        mov eax, OFFSET [current+4]
        mov [eax], ebx


        

        ; Test Case 3
        ; Traversal
        
        
        ; To Second 
        mov ebx, current+4
        mov ebx, [ebx]
        mov eax, ebx
        mov current, eax

        mov ebx, current+4
        mov ebx, [ebx+4]
        mov eax, ebx
        mov current+4, eax

        ; To Root
        mov ebx, current+4
        mov ebx, [ebx]
        mov eax, ebx
        mov current, eax

        mov ebx, current+4
        mov ebx, [ebx+4]
        mov eax, ebx
        mov current+4, eax
        
        
        
		mov     eax, 0			; exit with return code 0
        ret

main ENDP
END                             ; end of source code

