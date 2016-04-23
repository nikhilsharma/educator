<%@ page import="com.sukriti.TestD" %>



<div class="fieldcontain ${hasErrors(bean: testDInstance, field: 'fName', 'error')} required">
	<label for="fName">
		<g:message code="testD.fName.label" default="F Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="fName" required="" value="${testDInstance?.fName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: testDInstance, field: 'lName', 'error')} required">
	<label for="lName">
		<g:message code="testD.lName.label" default="L Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lName" required="" value="${testDInstance?.lName}"/>

</div>

