INCLUDE asmLib.inc

.data
	
	prompt BYTE "Enter a number",0
	outMsg BYTE " is the larger number",0
	equalMsg BYTE " numbers are equal",0
	num DWORD ?
	num2 DWORD ?
	
.code

main PROC
	mov edx, OFFSET prompt
	call writeString
	call readInt

	mov num, eax
	call writeString
	call readInt

	mov edx, OFFSET outMsg
	.IF eax > num
		call writeInt
		call writeString
		endl
	
	.ELSEIF  eax == num
	mov edx, OFFSET equalMsg
	call writeString

	.ELSE
	mov eax, num
	call writeInt
	call writeString
	endl

	.ENDIF
	
	exit
main ENDP
end main