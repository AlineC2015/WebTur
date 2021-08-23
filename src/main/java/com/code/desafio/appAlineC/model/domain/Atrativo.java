package com.code.desafio.appAlineC.model.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Atrativo {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String nome;
	private String tipo;
	private String descritivo;
	private float valor;
	
	public Atrativo() {
		this.descritivo = "tudo lindo";
		this.valor = 999;
		
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
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
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
