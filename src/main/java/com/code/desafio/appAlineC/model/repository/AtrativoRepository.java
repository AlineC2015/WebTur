package com.code.desafio.appAlineC.model.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.code.desafio.appAlineC.model.domain.Atrativo;

@Repository
public interface AtrativoRepository extends CrudRepository<Atrativo, Integer> {

}
