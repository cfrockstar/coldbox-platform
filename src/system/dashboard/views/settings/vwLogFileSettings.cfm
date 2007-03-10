<cfoutput><!--- HELPBOX ---><div id="helpbox" class="helpbox" style="display: none">	<div class="helpbox_header">	  <div class="helpbox_header_title"><img src="images/icons/icon_guide_help.gif" align="absmiddle"> Help Tip</div>	</div>		<div class="helpbox_message" >	  <ul>	  	<li>In this screen you can modify ColdBox's logging facility parameters.You can change the file encoding,	  	the buffer size for the logger and the maximum size in kbytes for the auto-archiving of the log files.</li>	  	<li>The file buffer size is for using the StringBuffer java class. The minimum is 8192 and the maximum is 64000</li>	  	<li>The log file max size is in kbytes. This size is checked by the framework on entries. Once this threshold is reached,	  	the framework will auto-archive the log file and create a new one.</li>	  </ul>	</div>	<div align="right" style="margin-right:5px;">	<input type="button" value="Close" onClick="helpoff()" style="font-size:9px">	</div></div><form name="updateform" id="udpateform" action="javascript:doFormEvent('#Context.getValue("xehDoSave")#','content',document.updateform)" onSubmit="return confirmit()" method="post"><div class="maincontentbox">		<div class="contentboxes_header">		<div class="contentboxes_title"><img src="images/icons/logviewer_icon.gif" align="absmiddle" />&nbsp; Log File Settings</div>	</div>	<!--- Messagebox --->	#getPlugin("messagebox").renderit()#	<div class="contentboxes">		<p>Below are the ColdBox's logging facility setting parameters. After submitting these settings they will be saved to the	framework's settings.xml file. However, in order for the settings to take effect, you will need to reinitialize your running	applications so the application scope can be refreshed.</p>	<br>		<div style="margin: 5px">	    <table width="100%" border="0" cellspacing="0" cellpadding="5" class="tablelisting">	    	<tr>			<th>Setting</th>			<th>Value</th>		  </tr>		  	     <tr>	     	<td align="right" width="40%" style="border-right:1px solid ##ddd">	     	<strong>Log File Encoding</strong>	     	</td>	     	<td>	     	<select name="LogFileEncoding">	     		<cfloop from="1" to="#listlen(Context.getValue("AvailableLogFileEncodings"))#" index="counter">				<option value="#listgetat(Context.getValue("AvailableLogFileEncodings"),counter)#"				        <cfif listgetat(Context.getValue("AvailableLogFileEncodings"),counter) eq Context.getValue("LogFileEncoding")>selected</cfif>>#listgetat(Context.getValue("AvailableLogFileEncodings"),counter)#</option>	     		</cfloop>	     	</select>	     	</td>	     </tr>		     	     <tr bgcolor="##f5f5f5">	     	<td align="right"  style="border-right:1px solid ##ddd">	     	<strong>Log File Buffer Size (In Bytes 8000 - 64000)</strong>	     	</td>	     	<td>	     	<input type="text" name="LogFileBufferSize" value="#Context.getValue("LogFileBufferSize")#" size="10" maxlength="5"> Bytes (Ex: 65536, 32768, 16384, 8192)	     	</td>	     </tr>	     	     <tr>	     	<td align="right"  style="border-right:1px solid ##ddd">	     	<strong>Log File Maximum Size (In Kbytes)</strong>	     	</td>	     	<td>	     	<input type="text" name="LogFileMaxSize" value="#Context.getValue("LogFileMaxSize")#" size="10" maxlength="6" > KBytes	     	</td>	     </tr>	         </table>		</div>	</div>		<div align="right" style="margin-right:5px;margin-bottom: 10px">		<input type="submit" value="Submit Changes" >	</div></div></form></cfoutput>