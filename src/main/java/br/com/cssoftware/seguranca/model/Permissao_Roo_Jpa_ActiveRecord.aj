// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.cssoftware.seguranca.model;

import br.com.cssoftware.seguranca.model.Permissao;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Permissao_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Permissao.entityManager;
    
    public static final EntityManager Permissao.entityManager() {
        EntityManager em = new Permissao().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Permissao.countPermissaos() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Permissao o", Long.class).getSingleResult();
    }
    
    public static List<Permissao> Permissao.findAllPermissaos() {
        return entityManager().createQuery("SELECT o FROM Permissao o", Permissao.class).getResultList();
    }
    
    public static Permissao Permissao.findPermissao(Long id) {
        if (id == null) return null;
        return entityManager().find(Permissao.class, id);
    }
    
    public static List<Permissao> Permissao.findPermissaoEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Permissao o", Permissao.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Permissao.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Permissao.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Permissao attached = Permissao.findPermissao(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Permissao.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Permissao.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Permissao Permissao.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Permissao merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
