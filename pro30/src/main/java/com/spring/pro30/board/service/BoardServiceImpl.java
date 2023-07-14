package com.spring.pro30.board.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.spring.pro30.board.dao.BoardDAO;
import com.spring.pro30.board.vo.ArticleVO;
@Service("boardService")
@Transactional(propagation = Propagation.REQUIRED)
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardDAO boardDAO;
	
	
	@Override
	public List<ArticleVO> listArticles() throws DataAccessException {
		List<ArticleVO> listArticles = boardDAO.selectAllArticlesList();
		return listArticles;
	}

/*	@Override
	public int addNewArticle(Map articleMap) throws DataAccessException {
		int articleNO = boardDAO.insertNewArticle(articleMap);
		return articleNO;
	}*/
	@Override
	public int addNewArticle(Map articleMap) throws DataAccessException {
		int articleNO = boardDAO.insertNewArticle(articleMap);
		articleMap.put("articleNO", articleNO);
		//boardDAO.insertNewImage(articleMap);
		return articleNO;
	}
	
	@Override
	public ArticleVO viewArticle(int articleNO) throws DataAccessException {
		ArticleVO articleVO = boardDAO.selectArticle(articleNO);
		return articleVO;
	}

	@Override
	public void modArticle(Map articleMap) throws DataAccessException {
		boardDAO.updateArticle(articleMap);
		
	}

	@Override
	public void removeArticle(int articleNO) throws DataAccessException {
		boardDAO.deleteArticle(articleNO);
		
	}

}
