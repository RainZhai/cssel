﻿<%@page import="com.webmachine.css.Css"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
Css css = new Css();
java.util.Map<String, String> cssmap = css.getCssResource();
request.setAttribute("cssmap",cssmap);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>css el example</title>
<!-- Framework CSS -->
<link rel="stylesheet" href="css/blueprint/screen.css" type="text/css" media="screen, projection"/>
<link rel="stylesheet" href="css/blueprint/print.css" type="text/css" media="print"/> 
<!--[if lte IE 8]><link rel="stylesheet" href="css/blueprint/ie.css" type="text/css" media="screen, projection"><![endif]--> 
<link rel="stylesheet" href="css/rain.css" type="text/css" media="screen, projection"/>
</head>

<body class="body">
	<div class="container">
    <div class="banner">
      <h1 class="${cssmap['logo']}">
        <a href="#" class="${cssmap['logolink']}">
          <img src="images/logo.png" width="200" height="70" alt="logo image"/>
          <span class="${cssmap['logoText']}">websit logo</span>
        </a>
      </h1>
      <p>web site introduction</p>
      <ul class="${cssmap['menuNav']}">
      	<li class="${cssmap['menuItem']}"><a class="${cssmap['menuLink']}" href="#">link</a></li>
      	<li class="${cssmap['menuItem']}"><a class="menuLink" href="#">link</a></li>
      	<li class="${cssmap['menuItem']}"><a class="menuLink" href="#">link</a></li>
      </ul>
    </div>
    
    <div class="content">
    	<div class="${cssmap['sidebar']}">
        <div class="sidebox">
          <h2 class="category">Web Design and Applications</h2>
          <ul class="${cssmap['theme']}">
            <li><a href="#">Math on the Web Math on the WebMath on the WebMath on the WebMath on the Web</a></li>
            <li><a href="#">Privacy</a></li>
            <li><a href="#">Mobile Web</a></li>
            <li><a href="#">Internationalization</a></li>
            <li><a href="#">Accessibility</a></li>
            <li><a href="#">Audio and Video</a></li>
            <li><a href="#">Graphics</a></li>
            <li><a href="#">Scripting and Ajax</a></li>
            <li><a href="#">HTML &amp; CSS</a></li> 
          </ul> 
        </div>
        
        <div class="sidebox">
          <h2 class="category">Web Design and Applications</h2>
           <ul class="${cssmap['theme']}">
            <li><a href="#">Math on the Web</a></li>
            <li><a href="#">Privacy</a></li>
            <li><a href="#">Mobile Web</a></li>
            <li><a href="#">Internationalization</a></li>
            <li><a href="#">Accessibility</a></li>
            <li><a href="#">Audio and Video</a></li>
            <li><a href="#">Graphics</a></li>
            <li><a href="#">Scripting and Ajax</a></li>
            <li><a href="#">HTML &amp; CSS</a></li> 
          </ul> 
        </div>
        
      </div>
      
      <div class="${cssmap['main']}">
      	<div class="entry mainBox">  
          <h1 class="entryTitle">HTML &amp; CSS</h1>
          <p><a href="#">ran</a> 发表于 , 分类:<a href="#"></a>, Tips, <a href="#">6条评论 »</a>,10次阅读</p> 
          <p>HTML (the Hypertext Markup Language) and CSS  (Cascading Style Sheets) are two of the core technologies 
          for building Web pages. HTML provides the structure of the page, CSS the (visual and aural) layout, for a 
          variety of devices. Along with graphics and scripting, HTML and CSS are the basis of building Web pages and 
          Web Applications. Learn more below about:</p>
					<h2>What is HTML?</h2>

					<p>HTML is the language for describing the structure of Web pages. HTML gives authors the means to:</p>
					<ul>
    				<li>Publish online documents with headings, text, tables, lists, photos, etc.</li>
            <li>Retrieve online information via hypertext links, at the click of a button.</li>
            <li>Design forms for conducting transactions with remote services, for use in searching for information, 
            making reservations, ordering products, etc.</li>
            <li>Include spread-sheets, video clips, sound clips, and other applications directly in their documents.</li>
					</ul>
					<p>With HTML, authors describe the structure of pages using markup. The elements of the language label pieces of 
          content such as "paragraph," "list," "table," and so on.</p>
					<h2>What is XHTML?</h2>

          <p>XHTML is a variant of HTML that uses the syntax of XML, the Extensible Markup Language. XHTML has all the same 
          elements (for paragraphs, etc.) as the HTML variant, but the syntax is slightly different. Because XHTML is an 
          XML application, you can use other XML tools with it (such as XSLT, a language for transforming XML content).</p>

					<h2>What is CSS?</h2>

					<p>CSS is the language for describing the presentation of Web pages, including colors, layout, and fonts. It allows 
          to adapt the presentation to different types of devices, such as large screens, small screens, or printers. CSS is 
          independent of HTML and can be used with any XML-based markup language. The separation of HTML from CSS makes it 
          easier to maintain sites, share style sheets across pages, and tailor pages to different environments. This is 
          referred to as the separation of structure (or: content) from presentation.</p>

					<h2>Examples</h2>

					<p>The following very simple example of a portion of an HTML document illustrates how to create a link within a paragraph. 
          When rendered on the screen (or by a speech synthesizer), the link text will be "final report"; when somebody activates the 
          link, the browser will retrieve the resource identified by "http://www.example.com/report":</p>
 
					<p>The class attribute on the paragraph's start tag ("&lt;p&gt;") can be used, among other thing, to add style. For instance, to 
          italicize the text of all paragraphs with a class of "moreinfo," one could write, in CSS:</p>

					<p>p.moreinfo { font-style: italic }</p>

					<p>By placing that rule in a separate file, the style may be shared by any number of HTML documents.</p> 
        </div>
        
        <div class="relativeArticle mainBox">
          <h2 class="commonTitle">相关文章：</h2>
          <ul>
            <li><a href="#">aaaaaaaaaaaaaaa</a></li>
            <li><a href="#">aaaaaaaaaaaaaaa</a></li>
            <li><a href="#">aaaaaaaaaaaaaaa</a></li> 
          </ul> 
        </div>
        
        <div class="comments mainBox">
          <h2 class="commonTitle">文章评论</h2>
          <ol class="commentsList">
            <li>
              <p class=""><a href="#">rain</a> 在 17 日 之前 说：</p>
              <p>demo</p> 
            </li> 
          </ol>
        </div>
        
        <div class="addComment mainBox">
          <h2 class="commonTitle">发表评论</h2>
          <form action="" method="post" id="commonform" class="commonform">
            <p class="bottom"><input type="text" name="username"/><span>呢称</span></p>
            <p class="bottom"><input type="text" name="email"/><span>邮件</span></p>
            <p class="bottom"><input type="text" name="website"/><span>网站</span></p>
            <p class="bottom"><textarea name="comment" id="comment_text" cols="20" rows="5"></textarea></p>
            <p><input type="submit" value="OK" name="submit" id="comment_submit"/></p>
          </form>
        </div>        
      </div>
      
      <div class="footer clear">
        <p class="bottom">Copyright 2010 Web Development Machine All rights reserved.</p>
      </div> 
    </div>
  </div>
</body>
</html>
