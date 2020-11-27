package com.wsk.ajaxsevlet;

import com.wsk.common.JsonUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

/**
 * 在$.ajax方法中提交JSON格式的数据
 */
@WebServlet("/jsonDemo.do")
public class JsonDataServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userid = req.getParameter("id");
        String username = req.getParameter("name");
        Map<String ,String> map = new HashMap<>();
        map.put("userid",userid);
        map.put("username",username);

        String s = JsonUtils.objectToJson(map);
        resp.setContentType("application/json");
        PrintWriter pw = resp.getWriter();
        pw.print(s);
        pw.flush();
        pw.close();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       //读取Json格式的字符串
        String s = req.getReader().readLine();
        PrintWriter pw = resp.getWriter();
        pw.print(s);
        pw.flush();
        pw.close();
    }
}
