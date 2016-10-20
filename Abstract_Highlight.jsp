<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
   <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
    
	
		
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Abstract and Highlight</title>
<link href="css.css" rel="stylesheet">
<style type="text/css">
	#DIV_1 {
    color: rgb(37, 37, 37);
    height: 142px;
    max-height: 392px;
    text-align: left;
    width: 794px;
    column-rule-color: rgb(37, 37, 37);
    perspective-origin: 405px 79px;
    transform-origin: 405px 79px;
    border: 1px solid rgb(210, 210, 210);
    font: normal normal normal normal 12px / 16.8px "Arial Unicode MS", "Arial Unicode", Arial, "URW Gothic L", Helvetica, Tahoma, "Cambria Math", sans-serif;
    list-style: none outside none;
    outline: rgb(37, 37, 37) none 0px;
    overflow: auto;
    padding: 14px 0px 0px 14px;
}
#DIV_2 {
    color: rgb(37, 37, 37);
    height: 200px;
    max-height: 392px;
    text-align: left;
    width: 794px;
    column-rule-color: rgb(37, 37, 37);
    perspective-origin: 405px 79px;
    transform-origin: 405px 79px;
    border: 1px solid rgb(210, 210, 210);
    font: normal normal normal normal 12px / 16.8px "Arial Unicode MS", "Arial Unicode", Arial, "URW Gothic L", Helvetica, Tahoma, "Cambria Math", sans-serif;
    list-style: none outside none;
    outline: rgb(37, 37, 37) none 0px;
    overflow: auto;
    padding: 14px 0px 0px 14px;
}
	</style>
	<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.0.min.js"></script>
	<script>

    $(document).ready(function(){
    	$("#DIV_1").hide();
    	$("#DIV_2").hide();
    	$("#hl").click(function(){
            $("#DIV_1").toggle();
            $("#DIV_2").hide();

        })

        $("#ab").click(function(){
        	$("#DIV_2").toggle();
        	
        	$("#DIV_1").hide();
        })
    })
	</script>
</head>
<body>

<span> <button id="ab">Abstract</button> | <button id="hl">Highlights</button> | <a href="E:\Workspace\src\Downloadfile.java">PDF</a></span>

	<div id="DIV_1">
		<strong>Hilight</strong>
		<ul>
			<li>Seven different prediction models for identifying at-risk students were compared.</li>
			<li>Only in-semester performance factors (i.e., grades) were used in the models.</li>
			<li>Models were created based on standards-based grading.</li>
			<li>Feature selection method resulted in higher accuracy of the models.</li>
		</ul>
	</div>
	<div id="DIV_2">
		<strong>Abstract</strong>
		<p>Using predictive modeling methods, it is possible to identify at-risk students early 
		and inform both the instructors and the students. While some universities have started 
		to use standards-based grading, which has educational advantages over common score-based grading, 
		at–risk prediction models have not been adapted to reap the benefits of standards-based 
		grading in courses that utilize this grading. In this paper, we compare predictive 
		methods to identify at-risk students in a course that used standards-based grading. 
		Only in-semester performance data that were available to the course instructors were 
		used in the prediction methods. When identifying at-risk students, it is important to 
		minimize false negative (i.e., type II) error while not increasing false positive (i.e., type I) 
		error significantly. To increase the generalizability of the models and accuracy of the predictions, 
		we used a feature selection method to reduce the number of variables used in each model. 
		The Naive Bayes Classifier model and an Ensemble model using a sequence of models (i.e., Support Vector Machine, K-Nearest Neighbors, and Naive Bayes Classifier) 
		had the best results among the seven tested modeling methods.</p>
	</div>
</body>
</html>