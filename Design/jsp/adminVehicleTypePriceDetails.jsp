<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix = "s" uri = "/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">

var count=0;

function validateForm()
{
	var flag =true;
	document.getElementById("errordiv").style.display="none";
	
	if(validateForVehicleTypeDuplicates())
	  {
	  	flag=false;
	  }
	  
	 if(vehicleTypeNull())
	  {
	  	flag=false;
	  }
	
	if(minPriceNull())
	  {
	  	flag=false;
	  }
	
	if(pricePerKmNull())
	  {
	  	flag=false;
	  } 
	  
	if(!flag)
		return false;
	else 
	{
		return true;
	}
	
}

function vehicleTypeNull()
{
	  //var vehicleType = document.getElementsByName("adminPriceDetails[0].vehicleType.id");
	  var nullFlag = false;
	  for(var i = 0; i  <=count;i++)
	  {
		  var outerobj = document.getElementById("adminPriceDetails["+i+"].vehicleType.id");
		  if(outerobj!=null)
		   	if(outerobj.value == "")
		   		{
		   			document.getElementById("errordiv").style.display="block";
			   		document.getElementById("errordiv").innerHTML="<s:text name='select.vehicleType'/>";
		   			nullFlag =  true;
					break;
		   		}
	   }
	  return nullFlag;
}

function minPriceNull()
{
	 // var minPrice = document.getElementsByName("adminPriceDetails[0].minPrice");
	  var nullFlag = false;
	  for(var i = 0; i <=count;i++)
	  {
		  var outerobj = document.getElementById("adminPriceDetails["+i+"].minPrice");
		  if(outerobj!=null)
			  {
				    if(outerobj.value == "")
			   		{
			   			document.getElementById("errordiv").style.display="block";
				   		document.getElementById("errordiv").innerHTML="<s:text name='select.minPrice'/>";
			   			nullFlag =  true;
						break;
			   		}
			  }
		   	
	   }
	  return nullFlag;
}

function pricePerKmNull()
{
	  //var pricePerKm = document.getElementsByName("adminPriceDetails[0].pricePerKm");
	  var nullFlag = false;
	 
	  for(var i = 0; i <=count;i++)
	  {
		  var outerobj = document.getElementById("adminPriceDetails["+i+"].pricePerKm");
		  if(outerobj!=null)
		  {
		   	if(outerobj.value == "")
		   		{
		   			document.getElementById("errordiv").style.display="block";
			   		document.getElementById("errordiv").innerHTML="<s:text name='select.pricePerKm'/>";
		   			nullFlag =  true;
					break;
		   		}
	   	  }
	  }
	  return nullFlag;
}

function validateForVehicleTypeDuplicates()
{
		  //var a = document.getElementsByName("adminPriceDetails[0].vehicleType.id");
		  var nullFlag = false;
		  for(var i = 0; i <count;i++)
		  {
			  var outerobj = document.getElementById("adminPriceDetails["+i+"].vehicleType.id");
			  if(outerobj!=null){
		   		for(var j = i+1;j <=count;j++)
			    {
		   			var innerobj = document.getElementById("adminPriceDetails["+j+"].vehicleType.id");
		   			if(innerobj!=null){
			   			if(innerobj.value == outerobj.value)
			   			{
			   				document.getElementById("errordiv").style.display="block";
			   				document.getElementById("errordiv").innerHTML="<s:text name='please.remove.duplicate.vehicletype'/>";
		   					nullFlag =  true;
							break;
			   			}
		   			}
			   }
		   }
		  }
		  return nullFlag;
} 


function addRow(tableID) 
{
	
	    var table = document.getElementById(tableID); 
	    var rows = table.rows;
	    var rowCount = table.rows.length; 
	    var idx = rowCount; 
	    var index=rows.length+1;
	    var clone=rows[rows.length-1].cloneNode(true);
	    table.appendChild(clone);
	    count=count+1;
	    var cells1 = clone.cells[1];
	    cells1.childNodes[0].name = "adminPriceDetails[" + count + "].vehicleType.id";
	    cells1.childNodes[0].id = "adminPriceDetails[" + count + "].vehicleType.id";
	    cells1.childNodes[0].value="";
	    
	    var cells2 = clone.cells[2];
	    cells2.childNodes[0].name = "adminPriceDetails[" + count + "].minPrice";
	    cells2.childNodes[0].id = "adminPriceDetails[" + count + "].minPrice";
	    cells2.childNodes[0].value="";
	    
	    var cells3 = clone.cells[3];
	    cells3.childNodes[0].name = "adminPriceDetails[" + count + "].pricePerKm";
	    cells3.childNodes[0].id = "adminPriceDetails[" + count + "].pricePerKm";
	    cells3.childNodes[0].value="";

}

/* function previousRowNotEmpty()
{
	var table = document.getElementById("dataTable");
    var rowCount = table.rows.length;
	var rowDetailFlag = false;
	for(var i=0; i<rowCount-1; i++) 
	{
		  rowDetailFlag = false;
		  
		  if(document.getElementById("adminPriceDetails["+i+"].vehicleType.id").value !="")
		  {
	    	  rowDetailFlag =true;
	    	  continue;
	      }
	      
	      if(document.getElementById("adminPriceDetails["+i+"].minPrice").value !="")
	      {
	    	  rowDetailFlag =true;
	    	  continue;
	      }
		  
		  if(document.getElementById("adminPriceDetails["+i+"].pricePerKm").value !="")
		  {
	    	  rowDetailFlag =true;
	    	  continue;
	      }
	      
	      if(!rowDetailFlag)
	      {
	    	 document.getElementById("errordiv").style.display="block";
	 		 document.getElementById("errordiv").innerHTML="<s:text name='alteast One column should be fill'/>";
	 		 
	    	  break;
	      }
	 } 
	
	if(!rowDetailFlag) 
	{
		return false;
	}
	else
		return true;
}*/


function validatePrice(e) 
{
    var val = e.value;
    var re = /^([0-9]+[\.]?[0-9]?[0-9]?|[0-9]+)$/g;
    var re1 = /^([0-9]+[\.]?[0-9]?[0-9]?|[0-9]+)/g;
    if (re.test(val))
    {

    } else {
        val = re1.exec(val);
        if (val) {
            e.value = val[0];
        } else {
            e.value = "";
        }
    }
}

function deleteRow(tableID) 
{
    try {
    var table = document.getElementById(tableID);
    var rowCount = table.rows.length;

    for(var i=0; i<rowCount; i++) {
        var row = table.rows[i];
        var chkbox = row.cells[0].childNodes[0];
        if(null != chkbox && true == chkbox.checked) {
            if(rowCount <= 1) {
          	  document.getElementById("errordiv").style.display="block";
			   	  document.getElementById("errordiv").innerHTML="<s:text name='cannot.delete'/>"+(i+1);
                break;
            }
            table.deleteRow(i);
            rowCount--;
            i--;
        }
    }
    }catch(e) {
        alert(e);
    }
}

function disableFields()
{
	if(document.getElementById("mode").value=="view")
	{
		var inputs = document.getElementsByTagName("input");
	    for (var i = 0; i < inputs.length; i++)
	    {
	    	inputs[i].disabled = true;
	    }
	    
	    var textareas = document.getElementsByTagName("textarea");
	    for (var i = 0; i < textareas.length; i++) {
	    	textareas[i].disabled = true;
	    }
	    
	    var textareas = document.getElementsByTagName("select");
	    for (var i = 0; i < textareas.length; i++)
	    {
	    	textareas[i].disabled = true;
	    }
	    var textareas = document.getElementsByTagName("option");
	    for (var i = 0; i < textareas.length; i++)
	    {
	    	textareas[i].disabled = true;
	    }
	}
}
</script>
<jsp:include page="include.jsp"></jsp:include>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><s:text name="page.AdminVehicleTypePriceDetails"></s:text></title>
</head>
<body onload="disableFields()">
<div class="header-container">	   
	<div class="home-tab">
	   <a href="${pageContext.request.contextPath}/adminLoginPanel!adminPanel.action" class="anchorCss"><s:text name="Go.Back"/></a>
	</div>
    <div class="heading-tab">
	   <s:text name="page.AdminVehicleTypePriceDetails"></s:text>
    </div>
   
</div>
<div id="errordiv" style="display:none;"  class="isa_error"></div>
<s:fielderror cssClass="isa_error"/>
<s:actionerror cssClass="isa_error"/>
<s:actionmessage cssClass="isa_success"/>
   <s:if test="%{mode!='view'}">
   </s:if>
    <br><br><br><br><br>
   
 <!-- <a href="${pageContext.request.contextPath}/adminLoginPanel!adminPanel.action"><s:text name= "Go.Back"/></a>
<body>
<div class="isa_info" align="center"><h1><s:text name="page.AdminVehicleTypePriceDetails"></s:text></h1></div>-->

	<s:form name="adminVehicleTypePriceDetails" action="adminVehicleTypePriceDetails!add.action" theme="simple" onSubmit="return validateForm();">
	<s:hidden name="mode" id="mode"/>
	<div align="center">
	<table   border="0" style="width:100%;align:center" id="dummyTable">
	<tr>
	<td style= "width:40%";><s:text name='select.type'/></td><td style=" width:28%";><s:text name='enter.minPrice'/></td><td><s:text name='enter.pricePerKm'/></td>
	</tr>
	</table>
	<table border="0" style="width:100%;align:center" id="dataTable" style="position: absolute;">
		<tr id="rowID0">
			<td style="float:right";><input type="checkbox" name="chk"></td>
			<td><s:select name = "adminPriceDetails[0].vehicleType.id" id="adminPriceDetails[0].vehicleType.id" list="vehicleTypeList" listKey="id" listValue="type" headerKey="" headerValue="%{getText('select.type')}" onchange="validateVehicleType(this);"></s:select></td>
			<td><s:textfield name="adminPriceDetails[0].minPrice" id = "adminPriceDetails[0].minPrice" placeholder="%{getText('enter.minPrice')}" onkeyup="validatePrice(this);" maxlength="6"></s:textfield></td>
			<td><s:textfield name="adminPriceDetails[0].pricePerKm" id = "adminPriceDetails[0].pricePerKm" placeholder="%{getText('enter.pricePerKm')}" onkeyup="validatePrice(this);" maxlength="6"></s:textfield></td>
		</tr>
	</table>
	<br><br><br>
	
     <INPUT type="button" value = "<s:text name='Add.Row'/>" onclick="addRow('dataTable')" class="addButton"/>
     <INPUT type="button" value="<s:text name='Delete.Row'/>" onclick="deleteRow('dataTable')" class="deleteButton"/><br><br>
	<s:submit key="submit" value="%{getText('submit.form')}" align="center"  cssClass="formButtonCss"></s:submit>
	</div>
	</s:form>
</body>
</html>
