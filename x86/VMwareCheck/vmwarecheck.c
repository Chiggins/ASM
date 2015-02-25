/*
	This checks to see if the program is running under VMware or not.
	Going for a C wrapper first. Then maybe pure assembly.
*/
#include <stdio.h>
#include <windows.h>

int main() {
	int rc = 0;

	__try {
		__asm {
			mov		eax, 'VMXh'
			mov		ebx, 0
			mov 	ecx, 0xA
			mov		edx, 'VX'

			in		eax, dx
			cmp		ebx, 'VMXh'
			jne		notVmware
			jmp		isVmware
			notVmware:
			mov 	rc, 0
			jmp		done
			isVmware:
			mov		rc, eax
			done:
		}
	}
	__except (EXCEPTION_EXECUTE_HANDLER) {
		rc = 0;
	}

	if (rc==0) {
		printf("We are not running inside VMware");
	} else {
		printf("We are running inside VMware %d!", rc);
	}
	Sleep(12000);
	return 0;
}