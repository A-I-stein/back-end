package com.aistein.controller.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Arthur
 */
public class FiltroCORSGeral implements Filter {
    
    public FiltroCORSGeral(){
        
    }
    
    @Override
     public void destroy() {
    }
    
    @Override
    public void doFilter(ServletRequest req, ServletResponse res,
            FilterChain chain)
            throws IOException, ServletException {
        
        HttpServletRequest request = (HttpServletRequest) req;
        System.out.println("CORSFilter HTTP Request: " + request.getMethod());
        ((HttpServletResponse) res).addHeader("Access-Control-Allow-Origin", "*");
        ((HttpServletResponse) res).addHeader("Access-Control-Allow-Methods","GET, OPTIONS, HEAD, PUT, POST");
        ((HttpServletResponse) res).setContentType("text/html;charset=UTF-8");
        req.setCharacterEncoding("utf-8");
        HttpServletResponse response = (HttpServletResponse) res;
        
        // For HTTP OPTIONS verb/method reply with ACCEPTED status code -- per CORS handshake
        if (request.getMethod().equals("OPTIONS")) {
            response.setStatus(HttpServletResponse.SC_ACCEPTED);
            return;
        }
        
        chain.doFilter(req, res);
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

   

}