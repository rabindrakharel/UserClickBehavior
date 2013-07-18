<%-- 
    Document   : index
    Created on : Jul 13, 2013, 2:53:53 PM
    Author     : paradise lost
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<body>
<% 
int jobCount=20;    
int rangeSec=1296000;
int graphHeight=jobCount*20+10;
double timeSpan =rangeSec/3600;
double xSpan=1000/rangeSec;
double xRange=1000+10;
int offsetX=75;
String jobName="123121";
%>
<table>
    </table>
<svg xmlns="http://www.w3.org/2000/svg" version="1.1" >

<!--  axis -->
<line x1="<%=offsetX%>" y1="0" x2="<%=offsetX%>" y2="<%=graphHeight%>" style="stroke:rgb(0,0,0); stroke-width:5" />
<line x1="<%=offsetX%>" y1="<%=graphHeight%>" x2="<%=xRange+offsetX%>" y2="<%=graphHeight%>" style="stroke:rgb(0,0,0); stroke-width:5" />
 

<!-- y=graph Height-y labels -->
<%
for(int i=0;i<jobCount;i++)
{%>
 <text x = "15" y = "<%=graphHeight-(i+1)*20%>" dx = "10" dy = "3" fill = "navy" font-size = "10">
        <%=jobName%>
    </text>
<%}
%>


<!-- horizontal lines -->
<%
for(int i=0;i<jobCount;i++)
{%>
<line x1="<%=offsetX%>" y1="<%=graphHeight-(i+1)*20%>" x2="<%=xRange+offsetX%>" y2="<%=graphHeight-(i+1)*20%>" style="stroke:rgb(0,0,0); stroke-width:0.1" />
<%}
%>

<!-- TimeStamp label -->
<%
for(int i=0;i<1000;i+=xSpan)
{ %>
 <text x = "<%=i*1%>" y = "<%=graphHeight+10%>" dx = "10" dy = "3" fill = "navy" font-size = "10" transform="rotate(40)">
        <%="2013 12 12"%>
    </text>
<%}<%
for(int i=0;i<horWidth/8;i++)
{%>
<text x = "<%=offsetX+i*10%>" y = "<%=offsetY+graphHeight+10%>"  transform="rotate(0 0,45)" >
        <%=+new Float(Math.random()*10+i).intValue()%>
    </text>
    
<%}
%>
%>




  </svg>
</body>
</html>
