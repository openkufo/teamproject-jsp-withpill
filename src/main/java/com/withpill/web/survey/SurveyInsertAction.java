package com.withpill.web.survey;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpill.api.action.Action;
import com.withpill.api.action.ActionForward;
import com.withpill.web.survey.dao.SurveyDao;

public class SurveyInsertAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		
		SurveyDao sdao = new SurveyDao();
		Map<String, String> answerMap = (Map<String, String>) req.getSession().getAttribute("answerMap");
		System.out.println("--------------------------------");
		for( String key : answerMap.keySet() ){
            System.out.println( String.format("키 : %s, 값 : %s", key, answerMap.get(key)) );
        }
		sdao.insertSurvey(answerMap);
		
		int surveyId = sdao.getCurrentSeq();
		req.setAttribute("surveyId", surveyId);
		forward.setRedirect(false);
		forward.setPath("/survey/SurveyResult.wp");
		return forward;
	}

}
