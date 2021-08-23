package com.code.desafio.appAlineC.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.code.desafio.appAlineC.model.domain.Atrativo;
import com.code.desafio.appAlineC.model.repository.AtrativoRepository;

@Service 
public class AtrativoService {
	
	@Autowired
	private AtrativoRepository atrativoRepository;
	
	/*
	private static List<Atrativo> colecaoAtrat = new ArrayList<Atrativo>(
			Arrays.asList(
					new Atrativo("Pedra Bonita", "Natural"),
					new Atrativo("Corcovado", "NatCult"),
					new Atrativo("Santa Teresa", "Cultural"),
					new Atrativo("Copacabana", "Praia")
					)
			); */
		
	public List<Atrativo> obterLista() {		
		return (List<Atrativo>) atrativoRepository.findAll();
	}
	
	public void incluir(Atrativo atrativo) {
		atrativoRepository.save(atrativo);
		
	}
	
	public void excluir(Integer id) {
		atrativoRepository.deleteById(id);
		//colecaoAtrat.remove(colecaoAtrat.get(id-1));
	}
	
	public Atrativo obterPorId(Integer id) {
		return atrativoRepository.findById(id).orElse(null);
		//return colecaoAtrat.get(id-1);
	}
		
}
