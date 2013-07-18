<%-- 
    Document   : index
    Created on : Jul 13, 2013, 2:53:53 PM
    Author     : paradise lost
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="Canvas.css">
        <style>
   
            <% 
    int timeRange=23222190;
    int totalJobs=20;
    int horWidth=10000;
    int heightSpan=30;    
    int graphHeight=(totalJobs+1)*heightSpan;
    double xPixRate=horWidth/timeRange;
    int offsetX=0;
    int offsetY=50;
    int yLabelMargin=25;
    String jobName="124323";
    int boxX=20;
    int boxY=20;
%>
#Canvas_Outer { overflow-x: scroll; width: 1000px;  white-space: nowrap ; margin-left:400px; position: relative;}
#Canvas_Inner { width: <%=horWidth%>px; float:left; }
#leftbar {position: absolute;
    left: 200px;
    width: 500px;}

        </style>
        
    </head>
<body>
<div id="main">
<div id="leftbar">
    <svg xmlns="http://www.w3.org/2000/svg" version="1.1" >
    <line x1="200" y1="<%=offsetY%>" x2="200" y2="<%=offsetY+graphHeight%>" style="stroke:rgb(0,9,0); stroke-width:0.5" />
   <%
for(int i=0;i<totalJobs;i++)
{%>
 <text x = "<%=yLabelMargin%>" y = "<%=offsetY+(totalJobs-i)*heightSpan%>" dx = "10" dy = "3" fill = "navy" font-size = "12">
        <%="Job Id: "+Math.random()*1000000000%>
    </text>
<%}
%>
    
    </svg>
</div>
    
<div id="Canvas_Outer">
    <div id="Canvas_Inner">

<svg xmlns="http://www.w3.org/2000/svg" version="1.1" >
<text x = "200" y = "30" dx = "30" dy = "3" fill = "Blue" font-size = "20">
        <%="Contractor No: "+Math.random()*1000000000%>
    </text>
<!--  axis -->
<line x1="<%=offsetX%>" y1="<%=offsetY+graphHeight%>" x2="<%=offsetX+horWidth%>" y2="<%=offsetY+graphHeight%>" style="stroke:rgb(0,9,0); stroke-width:0.5" />
 

<!-- y=graph Height-y labels -->


<!-- horizontal lines -->
<%
for(int i=0;i<totalJobs;i++)
{%>
<line x1="<%=offsetX%>" y1="<%=offsetY+(totalJobs-i)*heightSpan%>" x2="<%=offsetX+horWidth%>" y2="<%=offsetY+(totalJobs-i)*heightSpan%>" style="stroke:rgb(0,0,0); stroke-width:0.05" />
<%}
%>
<%
for(int i=0;i<totalJobs;i++)
{%>
<rect x="<%=offsetX+Math.random()*2000-3.5%>" y="<%=offsetY+(totalJobs-i)*heightSpan-boxY/2%>" width="<%=boxX%>" height="<%=boxY%>" fill="green" stroke="red"/>
<rect x="<%=offsetX+Math.random()*2000+700-3.5%>" y="<%=offsetY+(totalJobs-i)*heightSpan-boxY/2%>" width="<%=boxX%>" height="<%=boxY%>" fill="red" stroke="green"/>
<rect x="<%=offsetX+Math.random()*2000+1400-3.5%>" y="<%=offsetY+(totalJobs-i)*heightSpan-boxY/2%>" width="<%=boxX%>" height="<%=boxY%>" fill="yellow" stroke="red"/>
<%
    if(Math.random()>0.85)
    {%>
<rect x="<%=offsetX+Math.random()*200+550-3.5%>" y="<%=offsetY+(totalJobs-i)*heightSpan-boxY/2%>" width="<%=boxX%>" height="<%=boxY%>" fill="blue" stroke="green"/>

<%} }
%>
<%
for(int i=0;i<horWidth/70;i++)
{%>
<text x = "<%=offsetX+i*40%>" y = "<%=offsetY+graphHeight+18%>" font-size = "12" >
        <%="T"+i+1%>
    </text>
    
<%}%>


  </svg>
  </div>
 </div>
</div>
</body>
</html>
