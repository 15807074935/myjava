package controller;

import Utils.myUtils;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import pojo.user;
import service.userService;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RequestMapping("/user")
@Controller
public class userController {
    @Autowired
    userService us;

    @RequestMapping("/userlogin")
    public ModelAndView userLogin(HttpServletResponse response, HttpServletRequest request, user u) {
        ModelAndView mav = new ModelAndView();
        user getu = us.getOneUser(u.getUser_name());
        if (getu == null) {
            mav.addObject("loginmes", "账号输入错误");
            mav.setViewName("register");
        } else {
            if (getu.getPassword().equals(u.getPassword())) {
                mav.addObject("loginmes", "登陆成功");
                Cookie cookie[] = request.getCookies();
                Cookie cke = myUtils.getCookie(cookie, "user_name");
                if (cke == null) {
                    System.out.println("cke is null");
                    cke = new Cookie("user_name", u.getUser_name());
                } else {
                    System.out.println("cke is not null1" + cke.getValue() + " " + cke.getName());
                    cke.setValue(u.getUser_name());
                    System.out.println("cke is not null2" + cke.getValue() + " " + cke.getName());
                }
                cke.setMaxAge(1800);
                cke.setPath("/");
                response.addCookie(cke);
                mav.setViewName("pp");
            } else {
                mav.addObject("loginmes", "密码输入错误");
                mav.setViewName("register");
            }
        }
        return mav;
    }

    @RequestMapping("/username")
    public void userName(String name, HttpServletResponse response) throws IOException {
        System.out.println(name);
        user getu = us.getOneUser(name);
        if (getu == null) {
            response.getWriter().write("false");
        } else {
            response.getWriter().write("true");
        }
    }

    @RequestMapping("/userregister")
    public ModelAndView userRegister(user u, HttpServletRequest request, HttpServletResponse response) {
        ModelAndView mav = new ModelAndView();
        int m = us.userInsert(u);
        if (m > 0) {
            mav.addObject("registermes", "注册成功");
            Cookie cookie[] = request.getCookies();
            Cookie cke = myUtils.getCookie(cookie, "user_name");
            if (cke == null) {
                cke = new Cookie("user_name", u.getUser_name());

            } else {
                cke.setValue(u.getUser_name());
            }
            cke.setMaxAge(1800);
            cke.setPath("/");
            response.addCookie(cke);
        } else {
            mav.addObject("registermes", "注册失败");
        }
        mav.setViewName("pp");
        return mav;
    }

    @RequestMapping("/usermodify")
    public void userModify(user nu,HttpServletResponse response) {
        user ou = us.getOneUser(nu.getUser_name());
        nu.setUser_id(ou.getUser_id());
        int m = us.userUpdate(nu);
        Map<String,String> hm=new HashMap<>();
        JSONObject jsonObject;
        if (m > 0) {
            hm.put("result","修改成功");
            jsonObject =JSONObject.fromObject(hm);
           System.out.println("jsonObject is"+jsonObject);
        } else {
            hm.put("result","修改失败");
            jsonObject =JSONObject.fromObject(hm);
            System.out.println("jsonObject is"+jsonObject);
        }
        try {
            response.setContentType("text/html;charset=UTF-8");
            response.getWriter().write(jsonObject.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //    /**
//     * 读取所有cookie
//     * 注意二、从客户端读取Cookie时，包括maxAge在内的其他属性都是不可读的，也不会被提交。浏览器提交Cookie时只会提交name与value属性。maxAge属性只被浏览器用来判断Cookie是否过期
//     * @param request
//     * @param response
//     */
//    @RequestMapping("/showCookies")
//    public void showCookies(HttpServletRequest request, HttpServletResponse response ){
//
//        Cookie[] cookies = request.getCookies();//这样便可以获取一个cookie数组
//        if (null==cookies) {
//            System.out.println("没有cookie=========");
//        } else {
//            for(Cookie cookie : cookies){
//                System.out.println("name:"+cookie.getName()+",value:"+ cookie.getValue());
//            }
//        }
//    }
//    /**
//     * 添加cookie
//     * @param response
//     * @param name
//     * @param value
//     */
//    @RequestMapping("/addCookie")
//    public void addCookie(HttpServletResponse response,String name,String value){
//        Cookie cookie = new Cookie(name.trim(), value.trim());
//        cookie.setMaxAge(30 * 60);// 设置为30min
//        cookie.setPath("/");
//        System.out.println("已添加===============");
//        response.addCookie(cookie);
//    }
//    /**
//     * 修改cookie
//     * @param request
//     * @param response
//     * @param name
//     * @param value
//     * 注意一、修改、删除Cookie时，新建的Cookie除value、maxAge之外的所有属性，例如name、path、domain等，都要与原Cookie完全一样。否则，浏览器将视为两个不同的Cookie不予覆盖，导致修改、删除失败。
//     */
//    @RequestMapping("/editCookie")
//    public void editCookie(HttpServletRequest request,HttpServletResponse response,String name,String value){
//        Cookie[] cookies = request.getCookies();
//        if (null==cookies) {
//            System.out.println("没有cookie==============");
//        } else {
//            for(Cookie cookie : cookies){
//                if(cookie.getName().equals(name)){
//                    System.out.println("原值为:"+cookie.getValue());
//                    cookie.setValue(value);
//                    cookie.setPath("/");
//                    cookie.setMaxAge(30 * 60);// 设置为30min
//                    System.out.println("被修改的cookie名字为:"+cookie.getName()+",新值为:"+cookie.getValue());
//                    response.addCookie(cookie);
//                    break;
//                }
//            }
//        }
//
//    }
//    /**
//     * 删除cookie
//     * @param request
//     * @param response
//     * @param name
//     */
//    @RequestMapping("/delCookie")
//    public void delCookie(HttpServletRequest request,HttpServletResponse response,String name){
//        Cookie[] cookies = request.getCookies();
//        if (null==cookies) {
//            System.out.println("没有cookie==============");
//        } else {
//            for(Cookie cookie : cookies){
//                if(cookie.getName().equals(name)){
//                    cookie.setValue(null);
//                    cookie.setMaxAge(0);// 立即销毁cookie
//                    cookie.setPath("/");
//                    System.out.println("被删除的cookie名字为:"+cookie.getName());
//                    response.addCookie(cookie);
//                    break;
//                }
//            }
//        }
//    }
    @RequestMapping("/getoneuser")
    public ModelAndView getOneUser(HttpServletRequest request) {
        ModelAndView mav = new ModelAndView();
        Cookie cookie[] = request.getCookies();
        Cookie cke = myUtils.getCookie(cookie, "user_name");
        String user_name = cke.getValue();
        user u = us.getOneUser(user_name);
        mav.addObject("oneuser",u);
        mav.setViewName("user");
        return mav;
    }
    @RequestMapping("/loginout")
    public void loginOut(Model m,HttpServletRequest request,HttpServletResponse response){
        Cookie cookie[] = request.getCookies();
        Cookie cke = myUtils.getCookie(cookie, "user_name");
            cke.setValue(null);
            cke.setMaxAge(1800);
            cke.setPath("/");
            response.addCookie(cke);
        try {
            System.out.println("userout is"+cke.getValue());
            response.getWriter().write("success");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}