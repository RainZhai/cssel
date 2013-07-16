/*
 * @CssTags.java 8/11/2010
 * webdevelopmentmachine.com.  
 *  
 */
package com.webmachine.css;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

/**
 * Class CssTags
 * 
 * @version 1.0 11 August 2010
 * @author Rain Zhai
 */
public class CssTags extends TagSupport {

	private static final long serialVersionUID = 3425502421304181839L;
	public String cssunit;

	public String getCssunit() {
		return cssunit;
	}

	public void setCssunit(String cssunit) {
		this.cssunit = cssunit;
	}

	public int doEndTag() throws JspException {
		JspWriter out = pageContext.getOut();
		Cssparser c = new Cssparser("css.properties");

		String menus = c.getValue(cssunit);
		try {
			out.println(menus);
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return EVAL_PAGE;
	}

}
