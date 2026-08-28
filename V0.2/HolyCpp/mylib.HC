U8 GetU8(U8 *out = ""){
	Print(out);
	I64 ent = GetI64();
	return ent;
}
U16 GetU16(U8 *out = ""){
	Print(out);
	I64 ent = GetI64();
	return ent;
}
U32 GetU32(U8 *out = ""){
	Print(out);
	I64 ent = GetI64();
	return ent;
}
U64 GetU64(U8 *out = ""){
	Print(out);
	I64 ent = GetI64();
	return ent;
}
F64 GetD64(U8 *out = ""){
	Print(out);
	U8 *ent = GetStr();
	F64 entf = Str2F64(ent);
	Free(ent);
	return entf;
}
U8 *FileExe(U8 *arqname){
	U8 *buffer;
	I64 tam;
	buffer = FileRead(arqname, &tam);
	if(buffer){
		U8 *out = MAlloc(tam+1);
		MemCpy(out, buffer, tam);
		out[tam] = 0;

		Free(buffer);
		return out;
}
	return "";
}
U8 *NextWord(U8 *src, U8 *outWord){
	U64 i = 0;
	if(!src || *src == 0){outWord[0]=0;return NULL;}
	while(*src == ' ' || *src == '\t' || *src == '\r' || *src == '\n'){
		src++;
	}
	while(*src != ' ' && *src != '\n' && *src != '\r' && *src != '\t'){
		outWord[i] = *src;
		i++;
		src++;
	}
	outWord[i] = 0;
	return src;
}
U8 *Concat(U8 *in, U8 *out){
	U8 *res;
	if(!out){out = "";}
	res = MStrPrint("%s%s", out, in);
	if(StrLen(out)>0 && out != ""){Free(out);}
	return res;
}