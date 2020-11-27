package com.wsk.ajaxsevlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.wsk.pao.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/multiple.do")
public class MultipleObjectServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //创建多个User对象
        Users users1 = new Users();
        users1.setUserid(1);
        users1.setUsername("bjsxt");
        Users users2 = new Users();
        users2.setUserid(2);
        users2.setUsername("gaoqi");

        //将创建的User对象存入List集合
        List<Users> list =new ArrayList<>();
        list.add(users1);
        list.add(users2);

        //使用Jackson的API将User对象转化为json对象
        ObjectMapper objectMapper = new ObjectMapper();
        String string = objectMapper.writeValueAsString(list);
        System.out.println(string);

        //设置响应类型application/json
        resp.setContentType("application/json");
        PrintWriter pw = resp.getWriter();
        pw.print(string);
        pw.flush();
        pw.close();
    }
}
