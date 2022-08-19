package servs;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class ProductDAO 
{
	SessionFactory sf = Config.hibCon();
	Session s = sf.openSession();
	
	public int insert(Product p)
	{
		Transaction t = s.beginTransaction();
		int insert = (int) s.save(p);
		t.commit();
		return insert;
	}
	
	public List<Product> retrieve()
	{
		Transaction t = s.beginTransaction();
		Query query = s.createQuery("from Product");
		List<Product> plist = query.list();
		return plist;
	}
	
	
	
	
}