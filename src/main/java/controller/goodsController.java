package controller;
import Utils.myUtils;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import pojo.goods;
import pojo.user;
import service.goodsService;
import service.userService;

import javax.servlet.ServletContext;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@RequestMapping("/goods")
@Controller
public class goodsController {

    @Autowired
     goodsService gs;
    @Autowired
     userService us;
    /**
     * 添加用户信息
     * @param ，封装表单中除图片地址以外的其他数据（要求<input>中的name跟实体类中的属性一致）
     * @param request，用来获取文件的存储位置等
     * @param pictureFile，封装上传图片的信息如大小、文件名、扩展名等,（要求<input>中的name跟次命名一致）。
     * @return
     * 注意：图片提交input输入框的name属性值要与Controller中MultipartFile
     * 接口所声明的形参名一致，不然需要用@RequestParam注解绑定
     */
    @RequestMapping(value = "/addgoods.do", method = RequestMethod.POST)
    public ModelAndView addgoods(goods g, HttpServletRequest request, HttpServletResponse response, MultipartFile pictureFile) {

        ModelAndView mav=new ModelAndView();

        // 得到上传图片的地址
        String imgPath;

        Cookie cookie[]=request.getCookies();
        Cookie cke= myUtils.getCookie(cookie,"user_name");
        String user_name=cke.getValue();
        System.out.println(user_name);
        if(cke!=null){
            user u=us.getOneUser(user_name);
            System.out.println("u"+u);
            g.setUser_id(u.getUser_id());
        }

        try {
            //ImageUtils为之前添加的工具类
            imgPath = myUtils.upload(request, pictureFile);
            if (imgPath != null) {
                // 将上传图片的地址封装到实体类
                g.setImgPath(imgPath);
                g.setAmount(1);
                mav.addObject("pic",imgPath);
                mav.setViewName("wc");
                System.out.println("-----------------图片上传成功！");
            }else{
                mav.setViewName("fb");
                System.out.println("-----------------图片上传失败！");
            }
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            mav.setViewName("fb");
            System.out.println("----------------图片上传失败！");
        }
        //将数据提交到数据库（包含文件和普通表单数据）
        int rowNo = gs.goodsInsert(g);
        if (rowNo > 0) {
            updataGoodsSession(request);
            System.out.println("----------------------用户添加成功！");
            // 转发：forword，重定向：redirect
//            return "redirect:/user/findUsers.do";
            return mav;
        } else {
            System.out.println("----------------------用户添加失败！");
//            return "addUser";
            return mav;
        }
    }
    @RequestMapping(value = "/showFile.do")
    public String showFile(HttpServletRequest request, Model m) {
        ServletContext servletContext = request.getServletContext();
        //动态获取存放文件的本地路径【绝对路径】
        System.out.println(request.getServletContext());
        String path = servletContext.getRealPath("/upload");
        String path2 = servletContext.getRealPath("/upload/2ec33438a6954c0bb70b17081a40636e.jpg");
        System.out.println(servletContext.getRealPath("/upload/2ec33438a6954c0bb70b17081a40636e.jpg"));
        //获取文件夹下的所有文件【ImageUtils为之前编写的工具类】
        //File[] fileList = new File(path).listFiles();//原生写法
        List<File> fileList = myUtils.getFileSort(path);
        m.addAttribute("fileList", fileList);
        m.addAttribute("path2",path2);
        for(int i=0;i<fileList.size();i++){
            System.out.println(fileList.get(i));
        }
        return "showFile";
    }
    @RequestMapping(value = "/mytest.do")
    public String getImg(HttpServletRequest request,Model m){
        ServletContext servletContext=request.getServletContext();
        String path=servletContext.getRealPath("/upload/2ec33438a6954c0bb70b17081a40636e.jpg");
        File file=new File(path);
        m.addAttribute("file",file);
        return "test";
    }
    /**
     * 文件下载
     * 用ResponseEntity<byte[]> 返回值完成文件下载
     * @param request
     * @param fileName:文件的名称
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "fileDownload.do")
    public ResponseEntity<byte[]> fileDownload(HttpServletRequest request, @RequestParam(value = "fileName") String fileName)
            throws Exception {
        String fName = fileName.substring(fileName.lastIndexOf("_") + 1); // 从uuid_name.jpg中截取文件名
        //根据文件的绝对路径，获取文件
        File file = new File(request.getServletContext().getRealPath("/upload/"+fName));
        //设置请求头
        HttpHeaders headers = new HttpHeaders();
        fileName = new String(fileName.getBytes("utf-8"), "iso8859-1");
        headers.add("Content-Disposition", "attachment;filename=" + fileName);
        HttpStatus statusCode = HttpStatus.OK;
        ResponseEntity<byte[]> response = new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file), headers, statusCode);
        return response;
    }

    @RequestMapping("/getgoods")
    public ModelAndView getUserGoods(HttpServletResponse response, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView();
        updataGoodsSession(request);
        mav.setViewName("sjzx");
        return mav;
    }
    @RequestMapping("/delgoods")
    public ModelAndView delGoods(int goods_id,HttpServletRequest request){
        ModelAndView mav=new ModelAndView();
        if(gs.goodsDelete(goods_id)>0){
            mav.addObject("delmes","删除成功");
            updataGoodsSession(request);
        }else{
            mav.addObject("delmes","删除失败");
        }
        mav.setViewName("sjzx");
        return mav;
    }

    public void updataGoodsSession(HttpServletRequest request) {
        Cookie cookie[] = request.getCookies();
        Cookie cke = myUtils.getCookie(cookie, "user_name");
        String user_name = cke.getValue();
        user u = us.getOneUser(user_name);
        List<goods> list = new ArrayList<goods>();
        list = gs.getSomeGoods(u.getUser_id());
        HttpSession session = request.getSession();
        session.setAttribute("goodslist", list);
    }
}