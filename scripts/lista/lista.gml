// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function lista_palavras(){
	var _palavras = []
	_palavras[0] = "casa"
	_palavras[1] = "maçã"
	_palavras[2] = "pêra"
	_palavras[3] = "gato"
	_palavras[4] = "pizza"
	_palavras[5] = "cachorro"
	_palavras[6] = "feijão"
	_palavras[7] = "coelho"
	_palavras[8] = "cenoura"
	_palavras[9] = "carro"
	_palavras[10] = "boneca"
	_palavras[11] = "pássaro"
	return _palavras;
}

function lista_imagens() {
	var _imagens = [];
	_imagens[0] = spr_casa
	_imagens[1] = spr_maca
	_imagens[2] = spr_pera
	_imagens[3] = spr_gato
	_imagens[4] = spr_pizza
	_imagens[5] = spr_cachorro
	_imagens[6] = spr_feijao
	_imagens[7] = spr_coelho
	_imagens[8] = spr_cenoura
	_imagens[9] = spr_carro
	_imagens[10] = spr_boneca
	_imagens[11] = spr_passaro
	return _imagens;
}


function lista_alternativas(_modo = 0) {
	var _alternativas = [];
	switch (_modo) {
		case 0: 
			_alternativas[0] = "a"
			_alternativas[1] = "e"
			_alternativas[2] = "i"
			_alternativas[3] = "o"
			_alternativas[4] = "u"
		break;
		case 1: 
			_alternativas[0] = "a"
			_alternativas[1] = "b"
			_alternativas[2] = "c"
			_alternativas[3] = "d"
			_alternativas[4] = "e"
			_alternativas[5] = "f"
			_alternativas[6] = "g"
			_alternativas[7] = "h"
			_alternativas[8] = "i"
			_alternativas[9] = "j"
			_alternativas[10] = "k"
			_alternativas[11] = "l"
			_alternativas[12] = "m"
			_alternativas[13] = "n"
			_alternativas[14] = "o"
			_alternativas[15] = "p"
			_alternativas[16] = "q"
			_alternativas[17] = "r"
			_alternativas[18] = "s"
			_alternativas[19] = "t"
			_alternativas[20] = "u"
			_alternativas[21] = "v"
			_alternativas[22] = "w"
			_alternativas[23] = "x"
			_alternativas[24] = "y"
			_alternativas[25] = "z"
		break;
		default:
		break;
	}
	return _alternativas;
}