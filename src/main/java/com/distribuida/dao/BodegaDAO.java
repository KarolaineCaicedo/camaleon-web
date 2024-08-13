package com.distribuida.dao;

import java.util.List;

import com.distribuida.entities.Bodega;

public interface BodegaDAO {
	
	//CRUD ELEMENTAL

	public List<Bodega> findAll();
	public Bodega findOne(int id);
	public void add(Bodega bodega);
	public void up(Bodega bodega);
	public void del(int id);
	
	
	//CRUD AVANZADO
	
	
}
