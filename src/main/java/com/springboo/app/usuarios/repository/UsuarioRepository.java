package com.springboo.app.usuarios.repository;

import com.springboot.app.commons.models.entity.Usuario;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.data.rest.core.annotation.RestResource;

@RepositoryRestResource(path = "usuarios")
public interface UsuarioRepository extends PagingAndSortingRepository<Usuario, Long> {

    @RestResource(path = "buscar-username")
    public Usuario findByUsername(String username);
    //public Usuario findByUsername(@Param("param") String username);

    @Query("select u from Usuario u where u.username = ?1")
    public Usuario obtenerPorUsername(String username);

}
