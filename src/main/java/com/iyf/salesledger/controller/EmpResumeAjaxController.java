package com.iyf.salesledger.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iyf.salesledger.model.EmpResume;
import com.iyf.salesledger.service.EmpResumeService;

@Controller
public class EmpResumeAjaxController {
@Autowired
private EmpResumeService ers;

	@RequestMapping(value="/empPoolResume.ajax", method=RequestMethod.POST)
	public void insertEmpResume(EmpResume EmpResume, HttpSession session) throws IOException {
		String fileName = EmpResume.getFile().getOriginalFilename();
		if(fileName != null && !fileName.equals("")) {
			String real = session.getServletContext().getRealPath("").
					replace("\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps", "")
					+ "src\\main\\webapp\\resources\\upload";
			FileOutputStream fos=new FileOutputStream(new File(real+"/"+fileName));
			fos.write(EmpResume.getFile().getBytes());
			fos.close();
			EmpResume.setFile_name(fileName);
			
			//emppool의 Max키를 받아온다.
			Long empPoolMaxKey = ers.maxKeySelect();
			
			EmpResume.setEmp_pool_id(empPoolMaxKey);			
			ers.insert(EmpResume);
		}
	}
	
	@RequestMapping(value = "/empResumeDetail.ajax", produces = "text/html;charset=utf-8") 
	@ResponseBody
	public String empResumeDetail(long empPoolId) {
		List<EmpResume> empResumeList = ers.selectList(empPoolId);
		
		String data ="";
		if(!empResumeList.isEmpty()) {
			long temp = 0;
			for(EmpResume empResume : empResumeList) {
				if(empResume.getResume_id() > temp) {
					temp = empResume.getResume_id();
				}
			}
			long maxResumeno = temp;
			EmpResume empResume = ers.select(maxResumeno);		
			data = empResume.getFile_name();
		}
		return data;
	}
	
	@RequestMapping(value="/empPoolResumeUpdate.ajax", method=RequestMethod.POST)
	public void updateEmpResume(EmpResume EmpResume, HttpSession session) throws IOException {
		String fileName = EmpResume.getFile().getOriginalFilename();
		if(fileName != null && !fileName.equals("")) {
		
			String real = session.getServletContext().getRealPath("").
						replace("\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps", "")
						+ "src\\main\\webapp\\resources\\upload";
			FileOutputStream fos=new FileOutputStream(new File(real+"/"+fileName));
			fos.write(EmpResume.getFile().getBytes());
			fos.close();
			EmpResume.setFile_name(fileName);	
			ers.insert(EmpResume);
		}
	}
}
