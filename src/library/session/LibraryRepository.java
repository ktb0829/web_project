package library.session;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import library.model.Book;
import library.model.Rent;
import library.model.Reserve;
import library.model.Seat;

public class LibraryRepository {
String namespace = "library.mapper.BoardMapper"; // CommentMapper.xml의 namespace 하고 같아야함
	
	private SqlSessionFactory getSelSessionFactory() {
		String resource = "mybatis-config.xml";
		InputStream inputStream = null;
		try {
			inputStream = Resources.getResourceAsStream(resource);
		} catch ( Exception e) {
			System.out.println("CommentRepository inputStream 오류 "+e.getMessage());
		}
		
		SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(inputStream);
		return factory;
	}
	
	public List <Book> selectBoardByTitle(String bookTitle) {
	SqlSession sqlSess = getSelSessionFactory().openSession();
	List list = null;
	try{
		
		HashMap map = new HashMap();
		map.put("bookTitle", bookTitle);
		
		list = (List)sqlSess.selectList(namespace+".selectBoardByTitle", map);
		if( list.size() == 0 ) {
			sqlSess.rollback();
		} else {
			sqlSess.commit();
		}
		
	} finally {
		sqlSess.close();
	}
	return list;
}
	
	public List <Book> selectBoardByWriter(String bookWriter) {
	SqlSession sqlSess = getSelSessionFactory().openSession();
	List list = null;
	try{
		
		HashMap map = new HashMap();
		map.put("bookWriter", bookWriter);
		
		list = (List)sqlSess.selectList(namespace+".selectBoardByWriter", map);
		if( list.size() == 0 ) {
			sqlSess.rollback();
		} else {
			sqlSess.commit();
		}
		
	} finally {
		sqlSess.close();
	}
	return list;
}
	
	public List <Book> selectBoardByPublisher(String bookPublisher) {
		SqlSession sqlSess = getSelSessionFactory().openSession();
		List list = null;
		try{
			
			HashMap map = new HashMap();
			map.put("bookPublisher", bookPublisher);
			
			list = (List)sqlSess.selectList(namespace+".selectBoardByPublisher", map);
			if( list.size() == 0 ) {
				sqlSess.rollback();
			} else {
				sqlSess.commit();
			}
			
		} finally {
			sqlSess.close();
		}
		return list;
	}
	
	public void updateRentStateReserve(String bookNum) {
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{	
			HashMap map = new HashMap();
			map.put("bookNum", bookNum);
			
			int result = sqlSess.update(namespace+".updateRentStateReserve", map);
			
			if( result > 0 ) {
				sqlSess.commit();
			} else {
				sqlSess.rollback();
			}	
		} finally {
			sqlSess.close();
		}
	}
	
	public List <Reserve> reserveView(String bookNum) {
		SqlSession sqlSess = getSelSessionFactory().openSession();
		List list = null;
		try{	
			HashMap map = new HashMap();
			map.put("bookNum", bookNum);
			
			String id = sqlSess.selectOne(namespace+".selectIdByBookNum", map);
			
			if( id != null ) {
				sqlSess.commit();
			} else {
				sqlSess.rollback();
			}
			map.put("id", id);
			
			list = (List)sqlSess.selectList(namespace+".selectReserveById", map);
			
			if( list.size() == 0 ) {
				sqlSess.rollback();
			} else {
				sqlSess.commit();
			}
		} finally {
			sqlSess.close();
		}
		return list;
	}
	
	public List <Reserve> reserveViewById(String id) {
		SqlSession sqlSess = getSelSessionFactory().openSession();
		List list = null;
		try{	
			HashMap map = new HashMap();
			map.put("id", id);
			
			list = (List)sqlSess.selectList(namespace+".selectReserveById", map);
			
			if( list.size() == 0 ) {
				sqlSess.rollback();
			} else {
				sqlSess.commit();
			}
		} finally {
			sqlSess.close();
		}
		return list;
	}
	
	public void reserve(String bookNum) {
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{	
			HashMap map = new HashMap();
			map.put("bookNum", bookNum);
			
			String rentNum = sqlSess.selectOne(namespace+".selectRentNumByBookNum", map);
			
			if( rentNum != null ) {
				sqlSess.commit();
			} else {
				sqlSess.rollback();
			}
			
			
			map.put("rentNum", rentNum);
			
			int result = sqlSess.insert(namespace+".reserve", map);
			
			if( result > 0 ) {
				sqlSess.commit();
			} else {
				sqlSess.rollback();
			}	
		} finally {
			sqlSess.close();
		}
	}
	
	
	public List<Seat> selectSeatByNum(String num) {
		SqlSession sqlSess = getSelSessionFactory().openSession();
		List<Seat> list = null;
		try{	
			HashMap map = new HashMap();
			map.put("num", num);
			
			list = sqlSess.selectList(namespace+".selectSeatByNum", map);
			
			if( list != null ) {
				sqlSess.commit();
			} else {
				sqlSess.rollback();
			}
		} finally {
			sqlSess.close();
		}
		return list;
	}
	
	public void insertseat(String seat, String id) {
		SqlSession sqlSess = getSelSessionFactory().openSession();
		List<Seat> list = null;
		try{	
			HashMap map = new HashMap();
			map.put("seat", seat);
			map.put("id", id);
			System.out.println(seat+id);
			int result = sqlSess.insert(namespace+".insertseat", map);
			
			if( result > 0 ) {
				sqlSess.commit();
			} else {
				sqlSess.rollback();
			}
		} finally {
			sqlSess.close();
		}
	}
	
	public String seatNum() {
		String seatNum = null;
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			seatNum = sqlSess.selectOne(namespace+".seatNum");
			
			if( seatNum != null ) {
				sqlSess.commit();
			} else {
				sqlSess.rollback();
			}
		} finally {
			sqlSess.close();
		}
		return seatNum;
	}
	
	public List<Rent> rentListById(String id) {
		SqlSession sqlSess = getSelSessionFactory().openSession();
		List<Rent> list = null;
		try{	
			HashMap map = new HashMap();
			map.put("id", id);
			list = sqlSess.selectList(namespace+".rentListById", map);
			
			if( list != null ) {
				sqlSess.commit();
			} else {
				sqlSess.rollback();
			}
		} finally {
			sqlSess.close();
		}
		return list;
	}
	
	public void extend(String rentNum) {
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{	
			HashMap map = new HashMap();
			map.put("rentNum", rentNum);
			int result = sqlSess.update(namespace+".extend", map);
			if( result > 0 ) {
				sqlSess.commit();
			} else {
				sqlSess.rollback();
			}
		} finally {
			sqlSess.close();
		}
	}
}
