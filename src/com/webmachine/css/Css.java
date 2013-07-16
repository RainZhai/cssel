package com.webmachine.css;

import java.util.AbstractMap;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.Set;

public class Css {

	public Map<String, String> getCssResource() {
		return createMap();
	}

	protected Map<String, String> createMap() {
		//Locale loc = new Locale("en", "US");
		//final ResourceBundle bundle = ResourceBundle.getBundle("css", loc);
		final Cssparser bundle = new Cssparser("css.properties");
		if (bundle == null) {
			return null;
		}

		return new AbstractMap<String, String>() {
			@Override
			public String get(Object key) {
				if (key instanceof String) {
					String resourceKey = (String) key;

					String resource;
					try {
						resource = bundle.getValue(resourceKey);
					} catch (MissingResourceException mre) {
						return resourceKey;
					}

					return (resource == null) ? resourceKey : resource;
				} else {
					return null;
				}
			}

			@Override
			public Set<java.util.Map.Entry<String, String>> entrySet() {
				return null;
			}
		};

	}

	public static void main(String[] args) {
	}
}
