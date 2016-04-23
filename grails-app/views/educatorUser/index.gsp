
<%@ page import="com.sukriti.EducatorUser" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'educatorUser.label', default: 'EducatorUser')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-educatorUser" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-educatorUser" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'educatorUser.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'educatorUser.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="accountExpired" title="${message(code: 'educatorUser.accountExpired.label', default: 'Account Expired')}" />
					
						<g:sortableColumn property="accountLocked" title="${message(code: 'educatorUser.accountLocked.label', default: 'Account Locked')}" />
					
						<g:sortableColumn property="enabled" title="${message(code: 'educatorUser.enabled.label', default: 'Enabled')}" />
					
						<g:sortableColumn property="passwordExpired" title="${message(code: 'educatorUser.passwordExpired.label', default: 'Password Expired')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${educatorUserInstanceList}" status="i" var="educatorUserInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${educatorUserInstance.id}">${fieldValue(bean: educatorUserInstance, field: "username")}</g:link></td>
					
						<td>${fieldValue(bean: educatorUserInstance, field: "password")}</td>
					
						<td><g:formatBoolean boolean="${educatorUserInstance.accountExpired}" /></td>
					
						<td><g:formatBoolean boolean="${educatorUserInstance.accountLocked}" /></td>
					
						<td><g:formatBoolean boolean="${educatorUserInstance.enabled}" /></td>
					
						<td><g:formatBoolean boolean="${educatorUserInstance.passwordExpired}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${educatorUserInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
