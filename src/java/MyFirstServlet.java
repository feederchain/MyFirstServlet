/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintStream;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author feede
 */
public class MyFirstServlet extends HttpServlet {

    /**
     *
     * @param req
     * @param res
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        PrintStream out = new PrintStream(res.getOutputStream());
        res.setContentType("text/html");
        String name = req.getParameter("name");
        out.println("<p>Hello World! Welcome " + name + "</p>");
        //out.println("<p>This is a random number - " + random() + "</p>");
    }

    private double random() {
        return Math.random();
    }
}
