package com.cqu.agio.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Component;

import javax.inject.Inject;
import java.util.ArrayList;
import java.util.List;

@Component
public class BaseDAO {
    @Inject
    private SessionFactory sessionFactory;

    /**
     * insert object into database.
     * @param object: the object willed inserted
     * @return a boolean value means whether you successfullly insert into database
     */
    public boolean save(Object object){
        Session session = sessionFactory.getCurrentSession();
        boolean result = false;
        if (object != null) {
            try {
                session.save(object);
                session.flush();
                result = true;
            } catch (Exception e) {
                result = false;
                e.printStackTrace();
            }
        }
        return result;
    }

    /**
     * update a object
     * @param object
     * @return
     */
    public boolean update(Object object){
        Session session = sessionFactory.getCurrentSession();
        boolean result = false;
        if (object != null) {
            try {
                session.update(object);
                session.flush();
                result = true;
            } catch (Exception e) {
                result = false;
                e.printStackTrace();
            }
        }
        return result;
    }

    public boolean delete(Object object){
        Session session = sessionFactory.getCurrentSession();
        boolean result = false;
        if (object != null) {
            try {
                session.delete(object);
                session.flush();
                result = true;
            } catch (Exception e) {
                result = false;
                e.printStackTrace();
            }
        }
        return result;
    }

    public boolean batchSave(List objects){
        Session session = sessionFactory.getCurrentSession();
        boolean result = false;
        if ( objects != null ) {
            try {
                for (Object object : objects)
                    session.save(object);
                session.flush();
                result = true;
            } catch (Exception e) {
                result = false;
                e.printStackTrace();
            }
        }
        return result;
    }

    public Object uniqueResult(String hsql, ArrayList<String> params){
        try {
            Session session = sessionFactory.getCurrentSession();
            Query query = session.createQuery(hsql);
            if (params != null)
                for ( int i = 0; i < params.size();i ++ )
                    query.setString(i, params.get(i));
            return query.uniqueResult();
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    public Object uniqueResult(String hsql, String param){
        try {
            Session session = sessionFactory.getCurrentSession();
            Query query = session.createQuery(hsql);
            if (param != null)
                query.setString(0, param);
            return query.uniqueResult();
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }


    public Object uniqueResult(String hsql){
        try {
            Session session = sessionFactory.getCurrentSession();
            Query query = session.createQuery(hsql);
            return query.uniqueResult();
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    public long getCount(String hsql){
        long result = 0;
        try {
            Session session = sessionFactory.getCurrentSession();
            Query query = session.createQuery(hsql);
            result = ((Long)query.uniqueResult()).longValue();
        }catch (Exception e){
            e.printStackTrace();
        }
        return result;
    }

    public long getCount(String hsql,String param){
        long result = 0;
        try {
            Session session = sessionFactory.getCurrentSession();
            Query query = session.createQuery(hsql);
            query.setString(0,param);
            result = ((Long)query.uniqueResult()).longValue();
        }catch (Exception e){
            e.printStackTrace();
        }
        return result;
    }

    public long getCount(String hsql, ArrayList<String> params){
        try {
            Session session = sessionFactory.getCurrentSession();
            Query query = session.createQuery(hsql);
            if (params != null)
                for ( int i = 0; i < params.size();i ++ )
                    query.setString(i, params.get(i));
            return ((Long)query.uniqueResult()).longValue();
        }catch (Exception e){
            e.printStackTrace();
            return 0;
        }
    }

    public List getList(String hsql, ArrayList<String> params){
        try {
            Session session = sessionFactory.getCurrentSession();
            Query query = session.createQuery(hsql);
            if (params != null)
                for ( int i = 0; i < params.size();i ++ )
                    query.setString(i, params.get(i));
            return query.list();
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }

    }

    public List getList(String hsql, String param){
        try {
            Session session = sessionFactory.getCurrentSession();
            Query query = session.createQuery(hsql);
            if (param != null)
                query.setString(0, param);
            return query.list();
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    /**
    public Object uniqueResult(String hsql, HashMap<String,String> params){
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery(hsql);
        boolean first = true;
        if (params != null)
            for (MapService.Entry<String,String> entry : params.entrySet()){
                if (first) {
                    hsql += " where " + entry.getKey() + "=" + entry.getValue();
                    first = false;
                }
                else {
                    hsql += " and " + entry.getKey() + "=" + entry.getValue();
                }
            }
            for ( int i = 0; i < params.size();i ++ )
                query.setString(i, params.get(i));
        return query.uniqueResult();
    }
    **/

    public List getPagedList(String hsql, ArrayList<String> params, int pageIndex, int pageSize){
        try {
            Session session = sessionFactory.getCurrentSession();
            Query query = session.createQuery(hsql);
            if (params != null)
                for ( int i = 0; i < params.size();i ++ )
                    query.setString(i, params.get(i));
            query.setFirstResult(pageIndex*pageSize);
            query.setMaxResults(pageSize);
            return query.list();
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    public List getPagedList(String hsql,String param,int start,int num){
        try {
            Session session = sessionFactory.getCurrentSession();
            Query query = session.createQuery(hsql);
            if (param != null)
                query.setString(0, param);
            query.setFirstResult(start);
            query.setMaxResults(num);
            return query.list();
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

}
