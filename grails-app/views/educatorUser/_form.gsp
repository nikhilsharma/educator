<%@ page import="com.sukriti.EducatorUser" %>




<div class="fieldcontain ${hasErrors(bean: educatorUserInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="educatorUser.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${educatorUserInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: educatorUserInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="educatorUser.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:passwordField name="password" required="" value="${educatorUserInstance?.password}"/>
</div>

<p>
	<label for="Confirm password">Confirm password:</label>
	<input name="Confirm password" required="required" type="password" id="Confirm password" oninput="check(this)" />
</p>
<script language='javascript' type='text/javascript'>
	function check(input)
	{
		if (input.value != document.getElementById('password').value)
		{
			input.setCustomValidity('Password Must be Matching.');
		}
		else
		{
			// input is valid -- reset the error message
			input.setCustomValidity('');
		}
	}
</script>
<br /><br />

%{--<div class="fieldcontain ${hasErrors(bean: educatorUserInstance, field: 'accountExpired', 'error')} ">--}%
	%{--<label for="accountExpired">--}%
		%{--<g:message code="educatorUser.accountExpired.label" default="Account Expired" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:checkBox name="accountExpired" value="${educatorUserInstance?.accountExpired}" />--}%

%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: educatorUserInstance, field: 'accountLocked', 'error')} ">--}%
	%{--<label for="accountLocked">--}%
		%{--<g:message code="educatorUser.accountLocked.label" default="Account Locked" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:checkBox name="accountLocked" value="${educatorUserInstance?.accountLocked}" />--}%

%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: educatorUserInstance, field: 'enabled', 'error')} ">--}%
	%{--<label for="enabled">--}%
		%{--<g:message code="educatorUser.enabled.label" default="Enabled" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:checkBox name="enabled" value="${educatorUserInstance?.enabled}" />--}%

%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: educatorUserInstance, field: 'passwordExpired', 'error')} ">--}%
	%{--<label for="passwordExpired">--}%
		%{--<g:message code="educatorUser.passwordExpired.label" default="Password Expired" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:checkBox name="passwordExpired" value="${educatorUserInstance?.passwordExpired}" />--}%

%{--</div>--}%

