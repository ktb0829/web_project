package library.session;

import java.io.InputStream;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import library.model.Book;

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
	
	public void updateRentState(String bookNum) {
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{	
			HashMap map = new HashMap();
			map.put("bookNum", bookNum);
			
			int result = sqlSess.update(namespace+".updateRentState", map);
			
			if( result > 0 ) {
				sqlSess.commit();
			} else {
				sqlSess.rollback();
			}	
		} finally {
			sqlSess.close();
		}
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
	
	
//	public Board insertBoard(Board board) {
//		// JDBC : Connection, Mybatis : SqlSession
//		SqlSession sqlSess = getSelSessionFactory().openSession();
//		try {
//			int groupId = getGroupId();
//			board.setGroupId(groupId);
//			
//			DecimalFormat dformat = new DecimalFormat("0000000000");
//			board.setSequenceNo( dformat.format(groupId) + "999999");
//			
//			String statement = namespace + ".insertBoard";
//			int result = sqlSess.insert(statement, board);
//			
//			if ( result > 0) {
//				sqlSess.commit();
//				// JDBC : auto-commit, Mybatis : not auto-commit
//			} else {
//				sqlSess.rollback();
//			}
//			
//			int articleId = (Integer)sqlSess.selectOne(namespace+".getArticleId");
//			sqlSess.commit();
//			
//			board.setArticleId(articleId);
//		} finally {
//			sqlSess.close();
//		}
//		return board;
//	}
//	
//	public Board selectBoardById(int articleId) {
//		SqlSession sqlSess = getSelSessionFactory().openSession();
//		Board board = null;
//		try {
//			HashMap map = new HashMap();
//			map.put("articleId", articleId);
//			board = (Board)sqlSess.selectOne(namespace+".selectBoard", map);
//			if( board == null ) {
//				sqlSess.rollback();
//			} else {
//				sqlSess.commit();
//			}
//		} finally {
//			sqlSess.close();
//		}
//		return board;
//	}
//	
//	public int getGroupId()
//	{
//		SqlSession sqlSess = getSelSessionFactory().openSession();
//		int groupId;
//		try{
//			groupId = (Integer)sqlSess.selectOne(namespace+".getGroupId");
//			if( groupId == 0 ) {
//				groupId = 1;
//				sqlSess.rollback();
//			} else { 
//				sqlSess.commit();
//			}
//		} finally {
//			sqlSess.close();
//		}
//		return groupId;
//	}
//	
//	public List <Board> selectBoard() {
//		SqlSession sqlSess = getSelSessionFactory().openSession();
//		List list = null;
//		try{
//			list = (List)sqlSess.selectList(namespace+".selectBoard");
//			if( list == null ) {
//				sqlSess.rollback();
//			} else { 
//				sqlSess.commit();
//			}
//		} finally {
//			sqlSess.close();
//		}
//		return list;
//	}
}
