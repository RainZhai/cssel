package com.webmachine.css;

import java.io.IOException;

import javax.faces.component.UIOutput;
import javax.faces.context.FacesContext;
import javax.faces.context.ResponseWriter;

public class UIInputKey extends UIOutput {
	public final static String COMPONENT_TYPE = "css.InputKey";
	public final static String COMPONEN_FAMILY = "css.InputKey";
	private static final String CSS = "css";
	private String cssunit;

	public String getFamily() {
		return COMPONENT_FAMILY;
	}

	public void encodeBegin(FacesContext context) throws IOException {
		ResponseWriter writer = context.getResponseWriter(); 
		String clientId = getClientId(context);
		encodeTextField(writer, clientId);
	}

	private void encodeTextField(ResponseWriter writer, String clientId) throws IOException {
		Cssparser c = new Cssparser("css.properties");
		String menus = c.getValue(cssunit);
		writer.write(menus);
	}

	// private void encodeCommand(ResponseWriter writer, String clientId) throws
	// IOException {
	// writer.startElement("input", this);
	// writer.writeAttribute("type", "submit", null);
	// writer.writeAttribute("name", clientId + CMD, null);
	// writer.writeAttribute("value", "submit", null);
	// writer.endElement("input");
	// }

	public String getCssunit() {
		return cssunit;
	}

	@Override
	public void encodeEnd(FacesContext arg0) throws IOException {
		// TODO Auto-generated method stub
		super.encodeEnd(arg0);
	}

	public void setCssunit(String cssunit) {
		this.cssunit = cssunit;
	}

}
