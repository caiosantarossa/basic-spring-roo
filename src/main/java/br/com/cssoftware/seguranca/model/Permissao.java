package br.com.cssoftware.seguranca.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.JoinTable;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Null;
import javax.validation.constraints.Size;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
@Table(name = "t_seg_permissao")
public class Permissao {

	@NotNull
	private String nome;

	@Size(max = 100)
	private String descricao;

	@ManyToMany(mappedBy = "permissoes")
	private Set<Usuario> usuarios = new HashSet<Usuario>();

}
