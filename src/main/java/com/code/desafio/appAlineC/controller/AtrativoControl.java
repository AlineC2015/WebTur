package com.code.desafio.appAlineC.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.code.desafio.appAlineC.model.domain.Atrativo;
import com.code.desafio.appAlineC.model.service.AtrativoService;


@Controller
public class AtrativoControl {
	
	@Autowired
	private AtrativoService atrativoService;
		
	@GetMapping(value = "/")
	public String start() {
		return "index";
	}
	
	@GetMapping(value = "/rio_atrativos")
	public String telaCadastro() {
		return "/rio_atrativos/cadastro";
	}
	
	@PostMapping(value = "/rio_atrativos/incluir")
	public String incluir(Model model, Atrativo atrativo) {

		atrativoService.incluir(atrativo);
		model.addAttribute("msg_inclui", "Atrativo "+ atrativo.getNome() + " foi cadastrado com sucesso!");		
		return obterLista(model);
	}
	
	@GetMapping(value = "/rio_atrativos/{id}/excluir")
	public String excluir(Model model, @PathVariable Integer id) {
		
		Atrativo atrativoExcluido = atrativoService.obterPorId(id);
		atrativoService.excluir(id);
		model.addAttribute("msg", "Atrativo " + atrativoExcluido.getNome() + ", foi excluído da lista!");		
		return obterLista(model);
	}	
	
	@GetMapping(value = "/rio_atrativos/consulta")
	public String descrever() {
		return "";
	}	
	
	@GetMapping(value = "/rio_atrativos/listaAt")	
	public String obterLista(Model model) {
				
		model.addAttribute("atratives", atrativoService.obterLista());		
		return "rio_atrativos/listaAt";
	}
}
