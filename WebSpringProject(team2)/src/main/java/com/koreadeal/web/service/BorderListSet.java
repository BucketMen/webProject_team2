package com.koreadeal.web.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import com.koreadeal.web.DAO.BorderDAO;
import com.koreadeal.web.beans.BorderBean;
import com.koreadeal.web.model.BorderList;

public class BorderListSet {
	

	@Autowired
	private BorderDAO borderDAO;
	
	private int totalListCount;
	
	ArrayList<BorderBean> borderListAll; //DB에서 가져온 게시물을 담기 위한 ArrayList
	
	public ArrayList<BorderBean> getBorderList(int page){
		ArrayList<BorderBean> borderList = new ArrayList<BorderBean>();
		borderListAll = borderDAO.getBorderList(); //총게시물
		totalListCount = borderListAll.size(); //총 게시물의 개수
		int startIndex = (page - 1) * 10; //첫번쨰 게시물
		int endIndex = page * 10;  //마지막 개시물
		
		for(int i = startIndex;i<totalListCount && i < endIndex;i++) { //게시물을 10개씩 잘라서 1페이지에 보여주기
			borderList.add(borderListAll.get(i)); //게시물을 10개자른걸 ArrayList에 저장
		}
		return borderList; 
	}
	
	public int getTotalPage() { //총페이지수
		return (totalListCount%10 == 0? totalListCount/10 : totalListCount/10 + 1);
	}
	
	public int getPageStart(int page) { //시작페이지
		return (page%5 == 0 ? page - 4 : page -(page%5) + 1);
	}
	
	public int getPageEnd(int page) { //끝페이지
		int pageStart = getPageStart(page);
		int totalPage = getTotalPage();
		return (pageStart + 4 <= totalPage ? pageStart +4 : totalPage);
	}
	
}
