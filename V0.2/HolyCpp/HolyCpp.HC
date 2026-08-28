#include "TranspHolyCpp.HC"
U0 read(U8 *linha){
	U8 *ptr = linha;
	U8 buffer[512];
	while(ptr && ptr != NULL){
		U8 *lockPtr = ptr;
		ptr = NextWord(ptr, buffer);
		if(ptr == lockPtr){break;}
		if(buffer[0] != 0){
			U8 *tradc = trad(linha, Foo, arraySize(Foo));
			if(StrLen(tradc)>0){
				ExePrint("%s", tradc);
			}
			Free(tradc);
			break;
		}
	}
}
//Ainda nao funciona
//Compile & Run Problem -> It reads and writes correctly, but don't compile
//U0 AOT(U8 *cod, U8 *name){
//	U8 *ptr = cod;
//	U8 buffer[512];
//	U8 *codigo = NULL;
//	while(ptr && ptr != NULL){
//		U8 *lockPtr = ptr;
//		ptr = NextWord(ptr, buffer);
//		if(ptr == lockPtr){break;}
//		if(buffer[0] != 0){
//			U8 *tradc = trad(cod, Foo, arraySize(Foo));
//			if(StrLen(tradc)>0){
//				codigo = Concat(tradc, codigo);
//			}
//			Free(tradc);
//			break;
//		}
//	}
//	if(codigo && StrLen(codigo)>0){
//		FileWrite("Temporary.HC", codigo, StrLen(codigo));
//		Cmp("Temporary.HC", name);
		//Del("Temporary.HC");
//		Free(codigo);
//	}
//}