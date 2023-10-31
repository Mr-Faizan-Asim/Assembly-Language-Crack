
Include Irvine32.inc

.data
	num2 dd 1
	temp dd ?
	leng dd 5
	num dd 0
	reverse db "ABCDEFG99"
	prompt db "Set Length of Loop: ",0
	
.code

fabnic proc
	sub leng,2
	mov eax,num
	call writeint
	mov eax,num2
	call writeint
	mov ecx,leng
fab_loop:
	mov eax,num2
	mov temp,eax
	mov eax,num2
	add eax,num
	mov num2,eax
	mov eax,temp
	mov num,eax
	mov eax,num2
	call writeint
	loop fab_loop
	ret

fabnic endp


main proc
	
	lea edx, offset prompt
	call writestring
	call readint
	mov leng,eax
	call fabnic
	

	exit
main endp
end main