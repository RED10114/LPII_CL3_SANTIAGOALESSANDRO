package Dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.NoResultException;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import Interfaces.IUsuario;
import model.TblUsuariocl3;

public class ClassUsuarioImp implements IUsuario {

	@Override
	public TblUsuariocl3 validarUsuario(String usuario, String password) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("LPII_CL3_SANTIAGOALESSANDRO");
        EntityManager em = emf.createEntityManager();
        try{
            TypedQuery<TblUsuariocl3> query = em.createQuery(
                    "SELECT u FROM TblUsuariocl3 u WHERE u.usuariocl3 = :usuario AND u.passwordcl3 = :password",TblUsuariocl3.class);
            query.setParameter("usuario", usuario);
            query.setParameter("password", password);

            return query.getSingleResult();
        }
        catch(NoResultException e){
            return null;
        }
        finally{
            em.close();
        }
	}

}
