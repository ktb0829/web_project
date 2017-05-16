package board.notice.mybatis;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;




public class NoticeRepository {

	String namespace = "NoticeMapper";
	
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
	
	public NoticeComment viewComment( String num ){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		NoticeComment result = null;
		try{
			HashMap map = new HashMap();
			map.put("boardNum", num);
			result = (NoticeComment)sqlSess.selectOne(namespace+".viewComment", map);
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
	
	public List<NoticeComment> selectComment(){
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
	
	public Integer insertCommnet ( NoticeComment notice ){
		
		//JDBC : Connection, Mybatis : sqlSession
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			String statement = namespace + ".insertComment";
			int result = sqlSess.insert(statement, notice);
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
	

	public Integer deleteComment( NoticeComment notice ){
		
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			String statement = namespace + ".deleteComment";
			int result = sqlSess.delete(statement, notice);
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

	
	public Integer modifyComment( NoticeComment notice ){
		
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			String statements = namespace + ".modifyComment";
			
			int results = sqlSess.update(statements, notice);
			
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































