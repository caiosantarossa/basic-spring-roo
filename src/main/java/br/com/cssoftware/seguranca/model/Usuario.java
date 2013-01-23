package br.com.cssoftware.seguranca.model;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
@Table(name = "t_seg_usuario")
public class Usuario {

	@NotNull
	@Size(min = 3, max = 30)
	private String nome;

	@NotNull
	@Size(min = 3, max = 30)
	private String login;

	@NotNull
	@Size(min = 3, max = 30)
	private String senha;

	private String email;

	@ManyToMany
	@JoinTable(name = "t_seg_usuario_permissao")
	private Set<Permissao> permissoes = new HashSet<Permissao>();

	@NotNull
	private Boolean ativo = true;

}
