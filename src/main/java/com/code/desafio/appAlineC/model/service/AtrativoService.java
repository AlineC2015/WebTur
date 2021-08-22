package com.code.desafio.appAlineC.model.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Service;

import com.code.desafio.appAlineC.model.domain.Atrativo;

@Service 
public class AtrativoService {
	
	private static List<Atrativo> colecaoAtrat = new ArrayList<Atrativo>(
			Arrays.asList(
					new Atrativo("Pedra Bonita", "Natural"),
					new Atrativo("Corcovado", "NatCult"),
					new Atrativo("Santa Teresa", "Cultural"),
					new Atrativo("Copacabana", "Praia")
					)
			);
		
	public List<Atrativo> obterLista() {		
		return colecaoAtrat;
	}
	public void incluir(Atrativo atrativo) {
		colecaoAtrat.add(atrativo);
	}
	
	public void excluir(Integer id) {
		colecaoAtrat.remove(colecaoAtrat.get(id-1));
	}
	
	public Atrativo obterPorId(Integer id) {
		return colecaoAtrat.get(id-1);
	}
		
}
