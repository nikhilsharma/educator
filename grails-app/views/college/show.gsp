
<%@ page import="com.sukriti.College" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		%{--<meta name="layout" content="main-educator">--}%
		<g:set var="entityName" value="${message(code: 'college.label', default: 'College')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-college" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<sec:ifAllGranted roles="ROLE_ADMIN">
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				</sec:ifAllGranted>
			</ul>
		</div>
		<div id="show-college" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list college">
			
				<g:if test="${collegeInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="college.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${collegeInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${collegeInstance?.emailAddress}">
				<li class="fieldcontain">
					<span id="emailAddress-label" class="property-label"><g:message code="college.emailAddress.label" default="Email Address" /></span>
					
						<span class="property-value" aria-labelledby="emailAddress-label"><g:fieldValue bean="${collegeInstance}" field="emailAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${collegeInstance?.foundedYear}">
				<li class="fieldcontain">
					<span id="foundedYear-label" class="property-label"><g:message code="college.foundedYear.label" default="Founded Year" /></span>
					
						<span class="property-value" aria-labelledby="foundedYear-label"><g:fieldValue bean="${collegeInstance}" field="foundedYear"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${collegeInstance?.motto}">
				<li class="fieldcontain">
					<span id="motto-label" class="property-label"><g:message code="college.motto.label" default="Motto" /></span>
					
						<span class="property-value" aria-labelledby="motto-label"><g:fieldValue bean="${collegeInstance}" field="motto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${collegeInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="college.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${collegeInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${collegeInstance?.pinCode}">
				<li class="fieldcontain">
					<span id="pinCode-label" class="property-label"><g:message code="college.pinCode.label" default="Pin Code" /></span>
					
						<span class="property-value" aria-labelledby="pinCode-label"><g:fieldValue bean="${collegeInstance}" field="pinCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${collegeInstance?.sector}">
				<li class="fieldcontain">
					<span id="sector-label" class="property-label"><g:message code="college.sector.label" default="Sector" /></span>
					
						<span class="property-value" aria-labelledby="sector-label"><g:fieldValue bean="${collegeInstance}" field="sector"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${collegeInstance?.shortDescription}">
				<li class="fieldcontain">
					<span id="shortDescription-label" class="property-label"><g:message code="college.shortDescription.label" default="Short Description" /></span>
					
						<span class="property-value" aria-labelledby="shortDescription-label"><g:fieldValue bean="${collegeInstance}" field="shortDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${collegeInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="college.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${collegeInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${collegeInstance?.websiteURL}">
				<li class="fieldcontain">
					<span id="websiteURL-label" class="property-label"><g:message code="college.websiteURL.label" default="Website URL" /></span>
					
						<span class="property-value" aria-labelledby="websiteURL-label"><g:fieldValue bean="${collegeInstance}" field="websiteURL"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<sec:ifAllGranted roles="ROLE_ADMIN">
			<g:form url="[resource:collegeInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${collegeInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
			</sec:ifAllGranted>
		</div>
	</body>
</html>
