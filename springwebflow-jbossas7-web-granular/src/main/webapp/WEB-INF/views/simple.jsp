<%--
  #%L
  springwebflow-jbossas7-web-granular Webapp
  %%
  Copyright (C) 2015 gfernandez598
  %%
  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at
  
       http://www.apache.org/licenses/LICENSE-2.0
  
  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
  #L%
  --%>
<%@ page isELIgnored="false"%>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head></head>
<body>
	<h1>So simple...</h1>
	<div>
		<form name="f" method="POST"
			action="${flowExecutionUrl}&amp_eventId=stayhere">
			<input type="hidden" name="_flowExecutionKey"
				value="${flowExecutionKey}">
			<fieldset>
				<legend>Set some values</legend>
				<p>
					Every time you submit Spring Webflow take a snapshot saving the<br />
					text property that can be see it below.
				</p>
				<p>
					<label for="text1">Text property of a flow scope variable</label> <input
						type="text" id="text1" name="textProperty" /> <br />
				</p>
				<p>
					<label for="outText1">Previous <i>objectFlowVar.textProperty</i>
						value:
					</label> <br />
					<output id="outText1">${objectFlowVar.textProperty}</output>
				</p>
			</fieldset>
			<input type="submit" value="Save & Stay here" />

		</form>
		<a href="${flowExecutionUrl}&_eventId=end">End flow</a>
	</div>
</body>
</html>