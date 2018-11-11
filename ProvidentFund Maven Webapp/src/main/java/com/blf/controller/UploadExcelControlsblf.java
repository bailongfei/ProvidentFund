package com.blf.controller;

import java.io.InputStream;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.util.ImportExcelUtil;
import com.blf.service.individualPayService;
import com.entity.Individualpay;
import com.entity.Peraccount;

@Controller
@RequestMapping("/uploadExcel/*")  
public class UploadExcelControlsblf {
@Autowired
private individualPayService ips;
    /**
     * 描述：通过传统方式form表单提交方式导入excel文件
     * @param request
     * @throws Exception
     */
    @RequestMapping(value="upload.do",method={RequestMethod.GET,RequestMethod.POST})
    public  String  uploadExcel(HttpServletRequest request) throws Exception {
        MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;  
        System.out.println("通过传统方式form表单提交方式导入excel文件！");

        InputStream in =null;
        List<List<Object>> listob = null;
        MultipartFile file = multipartRequest.getFile("upfile");
        if(file.isEmpty()){
            throw new Exception("文件不存在！");
        }
        in = file.getInputStream();
        listob = new ImportExcelUtil().getBankListByExcel(in,file.getOriginalFilename());
        in.close();

        //该处可调用service相应方法进行数据保存到数据库中，现只对数据输出
        for (int i = 0; i < listob.size(); i++) {
            List<Object> lo = listob.get(i);
            Peraccount vo = new Peraccount();
           /* vo.setCode(String.valueOf(lo.get(0)));
            vo.setName(String.valueOf(lo.get(1)));
            vo.setDate(String.valueOf(lo.get(2)));
            vo.setMoney(String.valueOf(lo.get(3)));*/

            //System.out.println("打印信息-->机构:"+vo.getCode()+"  名称："+vo.getName()+"   时间："+vo.getDate()+"   资产："+vo.getMoney());
        }
        return "result";
    }

    /**
     * 描述：通过 jquery.form.js 插件提供的ajax方式上传文件
     * @param request
     * @param response
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping(value="ajaxUpload.do",method={RequestMethod.GET,RequestMethod.POST})
    public  void  ajaxUploadExcel(HttpServletRequest request,HttpServletResponse response) throws Exception {
        MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;  

        System.out.println("通过 jquery.form.js 提供的ajax方式上传文件！");

        InputStream in =null;
        List<List<Object>> listob = null;
        MultipartFile file = multipartRequest.getFile("upfile");
        if(file.isEmpty()){
            throw new Exception("文件不存在！");
        }

        in = file.getInputStream();
        listob = new ImportExcelUtil().getBankListByExcel(in,file.getOriginalFilename());

        //该处可调用service相应方法进行数据保存到数据库中，现只对数据输出
        for (int i = 0; i < listob.size(); i++) {
            List<Object> lo = listob.get(i);
            Peraccount vo = new Peraccount();
            vo.setZhztbh(Integer.valueOf((String) lo.get(0)));
            //vo.setZhztbh(Integer.parseInt(String.valueOf(lo.get(0))));
            vo.setUnitpositionid(Integer.valueOf((String) lo.get(1)));
            vo.setUnitinfoid(Integer.valueOf((String) lo.get(2)));
            vo.setUnitinfoaccount(Integer.valueOf((String) lo.get(3)));
            vo.setPeracid(String.valueOf(lo.get(4)));
            vo.setPeracloginpw(String.valueOf(lo.get(5)));
            vo.setPeractransactionpw(String.valueOf(lo.get(6)));
            vo.setBkname(String.valueOf(lo.get(7)));
            vo.setBksex(String.valueOf(lo.get(8)));
            vo.setPhonenum(String.valueOf(lo.get(9)));
            vo.setIdtype(String.valueOf(lo.get(10)));
            vo.setIdnumbers(String.valueOf(11));
            vo.setBirthday(String.valueOf(lo.get(12)));
            vo.setMarital(String.valueOf(lo.get(13)));
            vo.setEducation(String.valueOf(lo.get(14)));
            vo.setEmail(String.valueOf(lo.get(15)));
            vo.setPostcode(String.valueOf(lo.get(16)));
            vo.setAddress(String.valueOf(lo.get(17)));
            Individualpay ip=new Individualpay();
			ip.setUnitinfoaccount(Integer.valueOf((String) lo.get(3)));
            ip.setPersonalaccount(String.valueOf(lo.get(18)));
            ip.setPersonaldepositbase(Integer.valueOf((String) lo.get(19)));
            ip.setUnitratedeposit(Integer.valueOf((String) lo.get(20)));
            ip.setPercontributionrate(Integer.valueOf((String) lo.get(21)));
            ip.setOpenaccountstatus(String.valueOf(lo.get(22)));
            ip.setOpeningdate(String.valueOf(lo.get(23)));
            ip.setPeraccountbalance(Integer.valueOf((String) lo.get(24)));
            ips.saveIparOrperccOrUpdatePercc(vo, ip);
            System.out.println("打印信息-->机构:"+vo.getZhztbh()+" 机构:"+vo.getUnitinfoaccount()+"  名称："+vo.getEmail()+"   时间："+ip.getOpeningdate()+"   资产："+ip.getPersonaldepositbase());
        }

        PrintWriter out = null;
        response.setCharacterEncoding("utf-8");  //防止ajax接受到的中文信息乱码
        out = response.getWriter();
        out.print("文件导入成功!");
        out.flush();
        out.close();
    }


}