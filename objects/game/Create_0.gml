/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
randomize();


dgw = display_get_gui_width()
dgh = display_get_gui_height()

palavras = lista_palavras()
total_palavras = array_length(palavras)
palavra_atual_id = 0;
palavra_atual = ""
palavra_atual_faltante = ""
palavra_atual_x = 24
palavra_atual_y = 96

alternativas_x = 8
alternativas_y = 512
alternativas_w = 96
alternativas_w2 = 48
alternativas_h = 0
alternativas_h2 = 48

imagens = lista_imagens();
imagem_x = dgw/2
imagem_y = dgh/2

mensagem_titulo_x = 8;
mensagem_titulo_y = 192;

mensagem_acerto_x = 8;
mensagem_acerto_y = 192;

mensagem_erro_x = 8;
mensagem_erro_y = 192;

letra_removida_id = undefined;
letra_removida = undefined;

total_alternativas = 4;
alternativas = []
alternativa_correta_id = undefined;

estado_jogo = 0;


pontos_x = 24;
pontos_y = 24;
pontos = 0;

volume_sons = 0.8

function atualizar_palavra(_continua = 0) {
	palavras = lista_palavras()
	palavra_atual = palavras[palavra_atual_id]
	letra_removida_id = undefined;
	letra_removida = undefined;
	alternativa_correta_id = undefined;
	estado_jogo = _continua;
}

function continuar_jogo() {
	//palavra_atual_id = irandom_range(0,total_palavras-1)
	//atualizar_palavra()
	call_later(1,time_source_units_frames,function(){estado_jogo = 1});
}

function atualizar_alternativas(){

}

atualizar_palavra();