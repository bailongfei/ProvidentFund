package com.wangc.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wangc.serviceimpl.JointborrowerServiceimpl;

@Controller
@RequestMapping("/joint")
public class Jointborrower {
@Autowired
	private JointborrowerServiceimpl jb;
	public Jointborrower  jo;

/**/


}
