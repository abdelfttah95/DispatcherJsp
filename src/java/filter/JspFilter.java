package filter;

import java.io.*;
import jakarta.servlet.*;

/**
 *
 * @author abdel
 */
public class JspFilter implements Filter {
    
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {
        System.out.println("filter ...");
        chain.doFilter(request, response);
    }
    public void destroy() {        
    }

    public void init(FilterConfig filterConfig) {        
       
    }

}
