#include "HolyCpp.HC"
U8 Eva(){
	
	U8 linha[512];
	U8 comand[512];
	"Eva e um pseudo terminal para rodar codigos HolyCpp";
	while(TRUE){
		"\nEva>";
		GetS(linha, sizeof(linha));
		StrUtil(linha, SUF_REM_SPACES);

		if(StrCmp(linha, "endEva") == 0){ break;}

		else if (StrCmp(linha, "clean") == 0){DocClear;}
		else if (StrCmp(linha, "ls") == 0){Dir;}
		else if (StrNCmp(linha, "arc", 3) == 0){
			"Diga o nome do arquivo";
			U8 *arqname = GetStr();
			arqname = Concat(".hcpp", arqname);
			Ed(arqname);
}
		else if (StrNCmp(linha, "run", 3) == 0){
			U8 *cont = FileExe(linha+3);
			if(StrCmp(cont, "")!=0){
				read(cont);
				Free(cont);
			}else{
				"Que isso";
			}
}
		//else if (StrNCmp(linha, "binComp", 7) == 0){
		//	U8 *BIN = FileExe(linha + 7);
		//	if(StrCmp(BIN, "") != 0){
		//		"Nome do arquivo compilado: ";
		//		U8 *name = GetStr();
		//		AOT(BIN, name);
		//	}
		//	else{"ilegivel";}
		//}
		else if (StrCmp(linha, "read") == 0){
			"\n Digite o HolyCpp\n";
			GetS(comand, sizeof(comand));
			read(comand);
}
		else if (StrCmp(linha, "help") == 0){
			"\nread\nhelp\nclean\nendEva\nls\nrun\nbinComp -> ERROR\n";
}
		else if (linha[0] != 0){
			"Comando '%s' nao encontrado, digite help pra listar os comandos", linha;
}
}
	return 0;
}