package lib.session;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import javax.xml.stream.events.Comment;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import lib.model.Book;



public class CommentRepository {
	
	String namespace="CommentMapper";
	
	private SqlSessionFactory getSelSessionFactory() {
		String resource = "mybatis-config.xml";
		InputStream inputStream = null;
		try{ 
			inputStream = Resources.getResourceAsStream(resource);
		}catch(Exception e) {
			
		}
		
		SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(inputStream);
			return factory;
			
			
			
	}
	
	public String loginCheck(String username,String password){
		
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			HashMap map = new HashMap();
			map.put("username", username);
			map.put("password", password);
			
			String id = sqlSess.selectOne(namespace+".loginCheck", map );
			if(id!=null) return id;
			else{
				return "loginFaile";
			}
			
		}finally{
			sqlSess.close();
		}
		
	}
	
//	public Integer deleteComment(long commentNo){
//		SqlSession sqlSess = getSelSessionFactory().openSession();
//		try{
//			HashMap map = new HashMap();
//			map.put("commentNo", commentNo);
//			int result= sqlSess.delete( namespace+".deleteComment", map ); 
//			if(result >0) {
//				sqlSess.commit();
//				
//			}else {
//				sqlSess.rollback();
//			}
//		}finally{
//			sqlSess.close();
//		}
//		
//		return 0;
//	}
//	
//	public Comment selectCommentByPK(long commentNo){
//		SqlSession sqlSess = getSelSessionFactory().openSession();
//		try{
//			HashMap map = new HashMap();
//			map.put("commentNo", commentNo);
//			return sqlSess.selectOne( namespace+".selectComment", map ); 
//		}finally{
//			sqlSess.close();
//		}
//	}
//	
//	public List<Comment> selectComment(){
//		SqlSession sqlSess = getSelSessionFactory().openSession();
//		try{
//			return sqlSess.selectList(namespace+ ".selectComment"); //목록보기 한 부분
//		}finally{
//			sqlSess.close();
//		}
//	}
	
	public Integer insertComment(Book book){ //repo변수 보내준걸 여기서 받아줌 
		SqlSession sqlSess = getSelSessionFactory().openSession();
		
		try{
			System.out.println("reposi 접속");
			String statement = namespace + ".insertComment";
			int result = sqlSess.insert(statement , book);
			
			if( result > 0 ){
				sqlSess.commit();
				//jdbc : auto-commit, Mybatis : 아님 
			}else{
				sqlSess.rollback();
			}
		}finally {
			sqlSess.close();
		}
		return 0;
	}
	
//	public Integer modifyComment(Comment c){
//		SqlSession sqlSess = getSelSessionFactory().openSession();
//		
//		try{
//			String statement = namespace + ".modifyComment" ;
//			int result = sqlSess.update(statement , c);
//			
//			if( result >0 ){
//				sqlSess.commit();
//				//jdbc : auto-commit, Mybatis : 아님 
//			}else{
//				sqlSess.rollback();
//			}
//		}finally {
//			sqlSess.close();
//		}
//		
//		return 0;
//	}
	
}


