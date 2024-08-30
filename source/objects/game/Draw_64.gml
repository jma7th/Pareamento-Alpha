/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_set_font(fonte_menor)
draw_set_color(c_black)

draw_text(pontos_x,pontos_y,$"pontos: {pontos}\n")
//draw_text_ext(pontos_x,pontos_y,$"\naperte as teclas direcionais para escolher a palavra e aperte enter para jogar.",48,display_get_gui_width())

if estado_jogo = 0 {
	draw_text_ext(mensagem_titulo_x,mensagem_titulo_y,$"teste de pareamento\n\nclique para jogar!",18,dgw)
}

if estado_jogo = 3 {
	draw_text_ext(mensagem_acerto_x,mensagem_acerto_y,"resposta certa!",18,dgw)
}

if estado_jogo = 4 {
	draw_text_ext(mensagem_erro_x,mensagem_erro_y,"resposta errada!",18,dgw)
}

if estado_jogo = 2 {
	
	draw_sprite(imagens[palavra_atual_id],-1,imagem_x,imagem_y)
	draw_set_font(fonte_placeholder)
	draw_text(palavra_atual_x,palavra_atual_y,palavra_atual)
	
	for (var _i = 0; _i < total_alternativas; _i++) {
		draw_text(alternativas_x+(alternativas_w*_i),alternativas_y+(alternativas_h*_i),alternativas[_i])
		draw_rectangle(alternativas_x+(alternativas_w*_i),
						alternativas_y+(alternativas_h*_i),
						alternativas_x+(alternativas_w*_i)+(alternativas_w2),
						alternativas_y+(alternativas_h*_i)+(alternativas_h2),
						1)
	}
	
	
	
}
/*
draw_set_font(fonte_debug)
draw_text(0,0,	$"palavra_atual_id: {palavra_atual_id}\n"+
				$"letra_removida_id: {letra_removida_id}\n"+
				$"letra_removida: {letra_removida}\n"+
				$"array_length(palavras): {array_length(palavras)}\n"+
				$"string_length(palavra_atual): {string_length(palavra_atual)}")