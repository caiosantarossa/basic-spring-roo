// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.cssoftware.seguranca.model;

import br.com.cssoftware.seguranca.model.Usuario;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Usuario_Roo_Jpa_Entity {
    
    declare @type: Usuario: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Usuario.id;
    
    @Version
    @Column(name = "version")
    private Integer Usuario.version;
    
    public Long Usuario.getId() {
        return this.id;
    }
    
    public void Usuario.setId(Long id) {
        this.id = id;
    }
    
    public Integer Usuario.getVersion() {
        return this.version;
    }
    
    public void Usuario.setVersion(Integer version) {
        this.version = version;
    }
    
}
