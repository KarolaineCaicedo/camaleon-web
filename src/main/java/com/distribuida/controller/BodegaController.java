package com.distribuida.controller;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.distribuida.dao.BodegaDAO;
import com.distribuida.entities.Bodega;
@Controller
@RequestMapping("/bodegas")     //path Principal
public class BodegaController {
	//JSP - Java server Page, son las paginas web ded tecnologias java
	@Autowired
	private BodegaDAO bodegaDAO;
	@GetMapping("/findAll")      // path secundario
	public String findAll(ModelMap  modelMap) {
		//try {
			List<Bodega> Bodegas = bodegaDAO.findAll();
			modelMap.addAttribute("Bodegas",Bodegas);    //EJ : Clave = KeyClientes , valor = clientes

			return "listar-bodegas";  //nombre del formulario EJ.listar-clientes.html o listar-clientes.jsp
	//} catch (Exception e) {
			// TODO: handle exception
		//e.printStackTrace();
	   }
	

	@GetMapping("/findOne")
	public String findOne(@RequestParam("idBodegas")@Nullable Integer idBodegas
			             ,@RequestParam("opcion")@Nullable Integer opcion
			             ,ModelMap modelMap
			) {
	//	try {
			if(idBodegas !=null) {
				Bodega Bodega = bodegaDAO.findOne(idBodegas);
				modelMap.addAttribute("Bodega", Bodega);
			}
			if(opcion == 1) return "add-bodegas";  //Actualizacion
			else return "del-bodegas";             //Eliminación
	//	} catch (Exception e) {
	//		// TODO: handle exception
	//	}

	}
	@PostMapping("/add")
	public String add(@RequestParam("idBodegas") @Nullable Integer idBodegas
			      ,@RequestParam("nombre") @Nullable String nombre
			      ,@RequestParam("ubicacion") @Nullable String ubicacion
			      ,@RequestParam("capacidad") @Nullable Integer capacidad
			      ,@RequestParam("idSucursales") @Nullable Integer idSucursales
			      ,ModelMap modelMap
			) {
	//	try {
			if(idBodegas == null) {
				Bodega bodega = new Bodega(0, nombre, ubicacion, capacidad,idSucursales);
				bodegaDAO.add(bodega);
			}else {
				Bodega bodega = new Bodega(idBodegas, nombre, ubicacion, capacidad, idSucursales);
				bodegaDAO.up(bodega);
	//	} catch (Exception e) {
	//		// TODO: handle exception
	//	}

		}
		return "redirect:/bodegas/findAll";    //ir a formulario web por path o url.
	}
	@GetMapping("/del")
	public String del(@RequestParam(value ="idBodegas", required = false) @Nullable Integer idBodegas) {
	    if (idBodegas != null) {
	        bodegaDAO.del(idBodegas);
	    } else {
	        // Manejar el caso en que idBodegas es nulo
	        // Por ejemplo, puedes mostrar un mensaje de error o redirigir a una página de error
	        return "del-bodegas";
	    }
	    return "redirect:/bodegas/findAll";
	}
}