/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package beans;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import model.News;

/**
 *
 * @author ASUS
 */
@Stateless
public class NewsFacade extends AbstractFacade<News> implements NewsFacadeLocal {
    @PersistenceContext(unitName = "BigMobilesPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public NewsFacade() {
        super(News.class);
    }
    
}
