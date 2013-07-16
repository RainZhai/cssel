package com.webmachine.css;

import javax.faces.application.Application;
import javax.faces.component.UIComponent;
import javax.faces.webapp.UIComponentELTag;

public class UIInputKeyTag extends UIComponentELTag {

	private String cssunit;

	@Override
	public String getComponentType() {
		return UIInputKey.COMPONENT_TYPE;// 返回组件的类型，关联到了一个类
	}

	@Override
	public String getRendererType() {
		return null; // 因为组件自身渲染自己,所以不需要外部渲染器
	}

	protected void setProperties(UIComponent component) {
		super.setProperties(component);
		Application app = getFacesContext().getApplication();
		Util.addAttribute(app, component, "cssunit", cssunit);
	}

	@Override
	public void release() {
		super.release(); // 释放资源
		this.cssunit = null;
	}

	public String getCssunit() {
		return cssunit;
	}

	public void setCssunit(String cssunit) {
		this.cssunit = cssunit;
	}

}
