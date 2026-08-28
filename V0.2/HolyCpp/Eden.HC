#include "mylib.HC"
#define MAX 128
U8 *comands[512];
class equ {
	U8 *hc;
	U8 *hcpp;
};

equ Foo[128];
U0 def(equ *dic){
	dic[0].hcpp = "void"; dic[0].hc = "U0";
	dic[1].hcpp = "string"; dic[1].hc = "U8 *";
	dic[2].hcpp = "int"; dic[2].hc = "I32";
	dic[3].hcpp = "long"; dic[3].hc = "I64";
	dic[4].hcpp = "u-int"; dic[4].hc = "U32";
	dic[5].hcpp = "u-long"; dic[5].hc = "U64";
	dic[6].hcpp = "struct"; dic[6].hc = "class";
	dic[7].hcpp = "float"; dic[7].hc = "F64";
	dic[8].hcpp = "loop"; dic[8].hc = "for(;;)";
}
I64 arraySize(equ *dic){
	I64 i;
	I64 itens = 0;
	for(i = MAX; i > 0; i--){
		if(dic[itens].hcpp == NULL){
			return itens;
			break;
		}
		else{
			++itens;
		}
	}
	return itens;
}

I64 ext(U8 *buffer, U8 *dic){
	def(Foo);
	U64 i;
	for(i = 0; i < arraySize(Foo); i++){
		if(StrCmp(buffer, dic[i])==0){
			return 1;
		}
	}
	return 0;
}
