#include "Eden.HC"

U8 *trad(U8 *line, equ *dic, I64 dicsize){
	def(dic);
	U8 *lmut = StrNew(line);
	U8 *ptr;
	U8 *nl;
	I64 i;
	for(i = 0; i < dicsize; i++){
		while(ptr = StrFind(dic[i].hcpp, lmut)){
			I64 len_prefix = ptr - lmut;
			I64 len_hc = StrLen(dic[i].hc);
			I64 len_hcpp = StrLen(dic[i].hcpp);
			I64 len_res = StrLen(ptr + len_hcpp);
			
			nl = MAlloc(len_prefix + len_hc + len_res + 1);

			MemCpy(nl, lmut, len_prefix);
			MemCpy(nl + len_prefix, dic[i].hc, len_hc);
			MemCpy(nl + len_prefix + len_hc, ptr + len_hcpp, len_res + 1);
			Free(lmut);
			lmut = nl;
}
}
	return lmut;
}
