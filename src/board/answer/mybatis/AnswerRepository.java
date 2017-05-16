package board.answer.mybatis;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


import board.answer.mybatis.AnswerComment;

public class AnswerRepository {

	String namespace = "AnswerMapper";
	
	private SqlSessionFactory getSelSessionFactory(){
		
		String resource = "mybatis-config.xml";
		InputStream inputStream = null;
		try{
			
			inputStream = Resources.getResourceAsStream(resource);
			
		}catch( Exception ex){
			System.out.println("에러 : "+ex);
		}
		SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(inputStream);
		return factory;
	}
	
//	public AnswerComment selectCommentByPk(Answer answer){
//		SqlSession sqlSess = getSelSessionFactory().openSession();
//		try{
//			HashMap map = new HashMap();
//			map.put("commentNo", answer);
//			return sqlSess.selectOne(namespace+".selectComment", map);
//		}finally{
//			sqlSess.close();
//		}
//		
//	}
	
	public AnswerComment viewComment( String num ){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		AnswerComment result = null;
		try{
			HashMap map = new HashMap();
			map.put("boardNum", num);
			result = (AnswerComment) sqlSess.selectOne(namespace+".viewComment", map);
			if( result != null ){
				sqlSess.commit();
				// JDBC : auto-commit, Mybatis : 아님
			}else{
				sqlSess.rollback();
			}
			
		}finally{
			sqlSess.close();
		}
		return result;
		
	}
	
	public List<AnswerComment> selectComment(){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		List list = null;
		try{
//			return sqlSess.selectList(namespace+".selectComment");
			String statement = namespace + ".selectComment";
			list = sqlSess.selectList(statement);
			if( list.size() > 0 ){
				sqlSess.commit();
				// JDBC : auto-commit, Mybatis : 아님
			}else{
				sqlSess.rollback();
			}
		}finally{
			sqlSess.close();
		}
		return list;
	}
	
	public Integer insertCommnet ( AnswerComment answerinsert ){
		
		//JDBC : Connection, Mybatis : sqlSession
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			String statement = namespace + ".insertComment";
			int result = sqlSess.insert(statement, answerinsert);
			if( result > 0 ){
				sqlSess.commit();
				// JDBC : auto-commit, Mybatis : 아님
			}else{
				sqlSess.rollback();
			}
			
			
		}finally{
			sqlSess.close();
		}
		
		return 0;
		
	}
	

	public Integer deleteComment( AnswerComment answerinsert ){
		
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			String statement = namespace + ".deleteComment";
			int result = sqlSess.delete(statement, answerinsert);
			if( result > 0 ){
				sqlSess.commit();
				// JDBC : auto-commit, Mybatis : 아님
			}else{
				sqlSess.rollback();
			}
		}finally{
			sqlSess.close();
		}
		return 0;
	}

	
	public Integer modifyComment( AnswerComment answerinsert ){
		
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			String statements = namespace + ".modifyComment";
			
			int results = sqlSess.update(statements, answerinsert);
			
			if( results > 0 ){
				sqlSess.commit();
				// JDBC : auto-commit, Mybatis : 아님
			}else{
				sqlSess.rollback();
			}
		}finally{
			sqlSess.close();
		}
		return 0;
	}
	
	
	
	
public Integer readComment( String num ){
		
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			String statements = namespace + ".readComment";
			
			int results = sqlSess.update(statements, num);
			
			if( results > 0 ){
				sqlSess.commit();
				// JDBC : auto-commit, Mybatis : 아님
			}else{
				sqlSess.rollback();
			}
		}finally{
			sqlSess.close();
		}
		return 0;
	}
	
	
	
	
	
}































