package com.code.desafio.appAlineC.model.domain;

public class Atrativo {
		
	private String nome;
	private String tipo;
	private String descritivo;
	private Float valor;
	
	public Atrativo () {
		
	}
	
	public Atrativo(String nome, String tipo) {
		this();
		this.nome = nome;
		this.tipo = tipo;
	}
	
	@Override
	public String toString() {
		return "Conheça " +nome+ " um atrativo "+tipo+ " do Rio";
	}		
		
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public String getDescritivo() {
		return descritivo;
	}
	public void setDescritivo(String descritivo) {
		this.descritivo = descritivo;
	}
	public Float getValor() {
		return valor;
	}
	public void setValor(Float valor) {
		this.valor = valor;
	} 
		
}
