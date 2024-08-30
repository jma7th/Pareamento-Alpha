/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//regras de palavras
palavra_atual_id = clamp(palavra_atual_id,0,total_palavras)

	
//escolher palavra
/*
if keyboard_check_pressed(vk_up) {
	if palavra_atual_id = 0 {
		palavra_atual_id = total_palavras-1
	} else {
		if palavra_atual_id > 0 {
			palavra_atual_id-=1;
		}
	}
	atualizar_palavra() 
}

if keyboard_check_pressed(vk_down) {
	if palavra_atual_id = total_palavras-1{
		palavra_atual_id = 0;
	} else {
		if palavra_atual_id < total_palavras {
			palavra_atual_id +=1;
		}
	}
	atualizar_palavra() 
}
*/
//iniciar jogo
if estado_jogo = 0 {
	if keyboard_check_pressed(vk_enter) or mouse_check_button(mb_left){
		estado_jogo = 1
	}
}

if estado_jogo = 1 {
		palavra_atual_id = irandom_range(0,total_palavras-1)
		atualizar_palavra()
		//call_later(0.25,time_source_units_seconds,function(){estado_jogo = 2});
		var _total_letras = string_length(palavra_atual)
		var _letra_removida_id = irandom_range(0,_total_letras-1)
		var _palavra_atual = palavra_atual;
		var _caractere = "_"
		var _palavra_nova = "";
		var _letra_removida = "";
	
		letra_removida_id = _letra_removida_id
	
		for (var _i = 0; _i < _total_letras; _i++) {
			if _i = _letra_removida_id {
				_palavra_nova += _caractere //string_insert(_palavra_atual,_caractere,_letra_removida); //string_copy(_caractere,_i,1)
				_letra_removida = string_copy(_palavra_atual,_i+1,1)
			} else {
				_palavra_nova += string_copy(_palavra_atual,_i+1,1)
			}
		}
	
		//var _palavra_modificada = string_delete(_palavra_atual,_letra_removida,1);
		//_palavra_modificada = string_insert(_palavra_atual,_caractere,_letra_removida);
	
		letra_removida = _letra_removida
	
		palavra_atual = _palavra_nova
	
		var _alternativa_correta_id = irandom_range(0,total_alternativas-1);
		var _lista_alternativas = lista_alternativas(1)//["a","e","i","o","u"]
	
		// retirar qualquer alternativa correta da lista de alternativas erradas possiveis
		for (var _j = 0; _j < array_length(_lista_alternativas); _j++) {
			if _lista_alternativas[_j] = letra_removida {
				array_delete(_lista_alternativas,_j,1)
			}
		}
	
		// criar as alternativas
		for (var _i = 0; _i < total_alternativas; _i++) {
			if _i = _alternativa_correta_id {
				alternativas[_i] = letra_removida
				alternativa_correta_id = _i
			} else {
				var _sortear = irandom_range(0,array_length(_lista_alternativas)-1)
				alternativas[_i] = _lista_alternativas[_sortear]
				array_delete(_lista_alternativas,_sortear,1)
			}	
		}
	
		estado_jogo = 2	
	
	
	
}


//if mouse_check_button_pressed(mb_left) {
if estado_jogo = 2 {
	for (var _i = 0; _i < total_alternativas; _i++) {
		if mouse_check_button_pressed(mb_left) {
			if point_in_rectangle(	mouse_x,
									mouse_y,
									alternativas_x+(alternativas_w*_i),
									alternativas_y+(alternativas_h*_i),
									alternativas_x+(alternativas_w*_i)+(alternativas_w2),
									alternativas_y+(alternativas_h*_i)+(alternativas_h2)) {
					
					if _i = alternativa_correta_id {
						pontos += 1;
						audio_play_sound(snd_acerto,1,0,volume_sons)
						estado_jogo = 3;
						call_later(2,time_source_units_seconds,continuar_jogo)
					} else {
						estado_jogo = 4;
						audio_play_sound(choose(snd_erro,snd_erro2),1,0,volume_sons)
						call_later(2,time_source_units_seconds,continuar_jogo)
					}
					
				}
			}
		}
		//draw_text(alternativas_x+(alternativas_w*_i),alternativas_y+(alternativas_h*_i),alternativas[_i])
	}

