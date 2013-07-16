/*
 * @Cssparser.java 8/11/2010
 * webdevelopmentmachine.com.  
 *  
 */
package com.webmachine.css;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * Class Cssparser use to parese css.properties
 * 
 * @version 1.0 11 August 2010
 * @author Rain Zhai
 */
public class Cssparser {
	private Properties propertie;
	private InputStream inputFile;
	private FileOutputStream outputFile;

	public Cssparser() {
		propertie = new Properties();
	}

	/**
	 * initialize class
	 * 
	 * @param filePath
	 *          file path and name
	 */
	public Cssparser(String filePath) {
		propertie = new Properties();
		try {
			inputFile = Cssparser.class.getClassLoader().getResourceAsStream(filePath);
			// inputFile = new FileInputStream(filePath);
			propertie.load(inputFile);
			inputFile.close();
		} catch (FileNotFoundException ex) {
			System.out.println("File Not Found");
			ex.printStackTrace();
		} catch (IOException ex) {
			System.out.println("loaded failure");
			ex.printStackTrace();
		}
	}

	/**
	 * get value by key
	 * 
	 * @param key
	 * @return key's value
	 */
	public String getValue(String key) {
		if (propertie.containsKey(key)) {
			String value = propertie.getProperty(key);
			return value;
		} else {
			return "";
		}
	}

	/**
	 * get value by file and a key
	 * 
	 * @param fileName
	 * @param key
	 * @return key'value
	 */
	public String getValue(String fileName, String key) {
		try {
			String value = "";
			inputFile = Cssparser.class.getClassLoader().getResourceAsStream(fileName);
			// inputFile = new FileInputStream(fileName);
			propertie.load(inputFile);
			inputFile.close();
			if (propertie.containsKey(key)) {
				value = propertie.getProperty(key);
				return value;
			} else
				return value;
		} catch (FileNotFoundException e) {
			e.printStackTrace();
			return "";
		} catch (IOException e) {
			e.printStackTrace();
			return "";
		} catch (Exception ex) {
			ex.printStackTrace();
			return "";
		}
	}

	/**
	 * clear properties
	 */
	public void clear() {
		propertie.clear();
	}

	/**
	 * set a key and value
	 * 
	 * @param key
	 * @param value
	 */
	public void setValue(String key, String value) {
		propertie.setProperty(key, value);
	}

	/**
	 * save a properties file as a new file
	 * 
	 * @param fileName
	 * @param description
	 */
	public void saveFile(String fileName, String description) {
		try {
			outputFile = new FileOutputStream(fileName);
			propertie.store(outputFile, description);
			outputFile.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException ioe) {
			ioe.printStackTrace();
		}
	} 
}
