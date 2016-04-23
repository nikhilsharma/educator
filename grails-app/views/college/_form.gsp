<%@ page import="com.sukriti.College" %>



<div class="fieldcontain ${hasErrors(bean: collegeInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="college.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="city" required="" value="${collegeInstance?.city}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: collegeInstance, field: 'emailAddress', 'error')} required">
	<label for="emailAddress">
		<g:message code="college.emailAddress.label" default="Email Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="emailAddress" required="" value="${collegeInstance?.emailAddress}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: collegeInstance, field: 'foundedYear', 'error')} required">
	<label for="foundedYear">
		<g:message code="college.foundedYear.label" default="Founded Year" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="foundedYear" type="number" value="${collegeInstance.foundedYear}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: collegeInstance, field: 'motto', 'error')} required">
	<label for="motto">
		<g:message code="college.motto.label" default="Motto" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="motto" required="" value="${collegeInstance?.motto}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: collegeInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="college.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${collegeInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: collegeInstance, field: 'pinCode', 'error')} required">
	<label for="pinCode">
		<g:message code="college.pinCode.label" default="Pin Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="pinCode" required="" value="${collegeInstance?.pinCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: collegeInstance, field: 'sector', 'error')} required">
	<label for="sector">
		<g:message code="college.sector.label" default="Sector" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="sector" required="" value="${collegeInstance?.sector}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: collegeInstance, field: 'shortDescription', 'error')} required">
	<label for="shortDescription">
		<g:message code="college.shortDescription.label" default="Short Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="shortDescription" required="" value="${collegeInstance?.shortDescription}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: collegeInstance, field: 'state', 'error')} required">
	<label for="state">
		<g:message code="college.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="state" required="" value="${collegeInstance?.state}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: collegeInstance, field: 'websiteURL', 'error')} required">
	<label for="websiteURL">
		<g:message code="college.websiteURL.label" default="Website URL" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="websiteURL" required="" value="${collegeInstance?.websiteURL}"/>

</div>

