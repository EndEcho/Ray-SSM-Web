package com.ray.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.IOException;
import java.util.List;

/**
 * Created by GengRui
 * on 2017/5/22 0022.
 */
public class ShowDataHandler extends TagSupport {
    private String stable;

    public void setStable(String stable) {
        this.stable = stable;
    }

    @Override
    public int doStartTag() throws JspException {
        HttpServletRequest req = (HttpServletRequest) pageContext.getRequest();
        Object val = req.getAttribute(stable);
        JspWriter out = pageContext.getOut();
        try {
            if (val != null) {
                if (val instanceof String) {
                    out.println("<font color='red'>" + val + "</font>");
                } else if (val instanceof List) {
                    for (Object o : (List) val) {
                        out.println("<font color='red'>----" + o.toString() + "----</font>");
                    }
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return super.doStartTag();
    }
}
