
<%@ page import="com.sukriti.College" %>
<!DOCTYPE html>
<html>
	<head>
		%{--<meta name="layout" content="main">--}%
		<meta name="layout" content="main-educator">
		<g:set var="entityName" value="${message(code: 'college.label', default: 'College')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#list-college" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%
		<div id="list-college" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>

						<g:sortableColumn property="name" title="${message(code: 'college.name.label', default: 'Name')}" />

						<g:sortableColumn property="city" title="${message(code: 'college.city.label', default: 'City')}" />

						<g:sortableColumn property="motto" title="${message(code: 'college.motto.label', default: 'Motto')}" />

						<g:sortableColumn property="emailAddress" title="${message(code: 'college.emailAddress.label', default: 'Email Address')}" />
					
						<g:sortableColumn property="foundedYear" title="${message(code: 'college.foundedYear.label', default: 'Founded Year')}" />

						<g:sortableColumn property="pinCode" title="${message(code: 'college.pinCode.label', default: 'Pin Code')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${collegeInstanceList}" status="i" var="collegeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${collegeInstance.id}">${fieldValue(bean: collegeInstance, field: "city")}</g:link></td>
					
						<td>${fieldValue(bean: collegeInstance, field: "emailAddress")}</td>
					
						<td>${fieldValue(bean: collegeInstance, field: "foundedYear")}</td>
					
						<td>${fieldValue(bean: collegeInstance, field: "motto")}</td>
					
						<td>${fieldValue(bean: collegeInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: collegeInstance, field: "pinCode")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${collegeInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
