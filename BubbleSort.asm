.686
.MODEL FLAT, C
.STACK
.CODE

BubbleSort proc C SizeArr:DWORD , AddrArr:DWORD
	push eax
	push edx
	push ecx
	push esi
	mov eax, 1
	
external:	cmp eax, 1
			jnz final
			mov eax, 0

	mov ecx, SizeArr
	dec ecx
	mov esi, AddrArr

internal:	mov ebx, DWORD PTR[esi]
			mov edx, DWORD PTR[esi+4]
			cmp ebx, edx
			jng unchanged
			mov DWORD PTR [esi+4], ebx
			mov DWORD PTR [esi], edx
			mov eax, 1
			
unchanged:	add esi, 4
			loop internal
			jmp external

final:	pop esi
			pop ecx
			pop edx
			pop eax

	ret
BubbleSort endp
END
