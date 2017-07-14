package com.beeva.banco.batch.process;

import org.springframework.batch.item.ItemProcessor;
import org.springframework.stereotype.Component;

import com.beeva.banco.batch.model.Cliente;
import com.beeva.banco.batch.model.Usuario;

@Component
public class FileProcess  implements ItemProcessor<Usuario, Cliente>{
	
	public Cliente process(Usuario u) throws Exception {
		 Cliente cliente= new Cliente();
		 cliente.setNombre(u.getNombre());
		 cliente.setApellido(u.getApellido());
		return cliente;
	}
}

	
