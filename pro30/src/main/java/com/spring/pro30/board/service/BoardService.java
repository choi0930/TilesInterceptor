package com.spring.pro30.board.service;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.spring.pro30.board.vo.ArticleVO;

public interface BoardService {
	public List<ArticleVO> listArticles() throws DataAccessException;
	public int addNewArticle(Map articleMap) throws DataAccessException;
	public ArticleVO viewArticle(int articleNO) throws DataAccessException;
	public void modArticle(Map articleMap) throws DataAccessException;
	public void removeArticle(int articleNO) throws DataAccessException;
}
