package com.firstdeskleft.dao;

import com.firstdeskleft.entities.Guide;
import com.firstdeskleft.entities.Tour;
import java.util.List;
import javax.persistence.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author User
 */


@Repository
public class TourDaoImpl implements TourDao{
    
    @Autowired
    SessionFactory factory;
    
    private Session getSession(){
        return factory.getCurrentSession();
    }
    

    @Override
    public List<Tour> findAll() {
        Query q = getSession().createQuery("FROM Tour t");
        
        return q.getResultList();
    }
    
    @Override
    public void save(Tour tour) {
       getSession().saveOrUpdate(tour);
    }

    @Override
    public List<Tour> findByGuideId(Integer Id) {
       javax.persistence.Query q =getSession().createQuery("SELECT t FROM Tour t WHERE t.guide.id=:id");
       q.setParameter("id", Id);
     List<Tour> list  =  q.getResultList();
        
        return list;
    }
    
    
    
    
}
