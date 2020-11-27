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

@WebServlet("/single.do")
public class SingleObjectServlt extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //创建User对象
        Users users = new Users();
        users.setUserid(1);
        users.setUsername("bjsxt");
        //使用jackson的API将Users对象转换为Json格式的字符串对象
        ObjectMapper objectMapper = new ObjectMapper();
        String string =objectMapper.writeValueAsString(users);
        System.out.println(string);

        //设置响应类型application/json
        resp.setContentType("application/json");
        PrintWriter  pw = resp.getWriter();
        pw.print(string);
        pw.flush();
        pw.close();
    }
}
