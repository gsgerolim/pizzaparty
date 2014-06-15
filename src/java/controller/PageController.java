package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PageController extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try
        {
            //Message message = Message.singleton();

            String action = request.getParameter("action");

            RequestDispatcher view = request.getRequestDispatcher("index.jsp");
            
            switch(action) {
                case "home": 
                    request.setAttribute("page", "home.jsp");
                break; 
                    
                case "contato":
                    request.setAttribute("page", "contato.jsp");
                break;
                    
                case "sobre":
                    request.setAttribute("page", "sobre.jsp");
                break;
                  
            }
            
            view.forward(request, response);
        }
        catch (Exception ex) {
            System.out.println("Erro - Ana");
            //Logger.getLogger(AuthenticateController.class.getName()).log(Level.SEVERE, null, ex); 
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
    
    }
}