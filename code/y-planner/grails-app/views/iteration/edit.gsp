

<%@ page import="org.yplanner.domain.Iteration" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'iteration.label', default: 'Iteration')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${iterationInstance}">
            <div class="errors">
                <g:renderErrors bean="${iterationInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${iterationInstance?.id}" />
                <g:hiddenField name="version" value="${iterationInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="actualHours"><g:message code="iteration.actualHours.label" default="Actual Hours" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: iterationInstance, field: 'actualHours', 'errors')}">
                                    <g:textField name="actualHours" value="${fieldValue(bean: iterationInstance, field: 'actualHours')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="daysWorked"><g:message code="iteration.daysWorked.label" default="Days Worked" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: iterationInstance, field: 'daysWorked', 'errors')}">
                                    <g:textField name="daysWorked" value="${fieldValue(bean: iterationInstance, field: 'daysWorked')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="description"><g:message code="iteration.description.label" default="Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: iterationInstance, field: 'description', 'errors')}">
                                    <g:textField name="description" value="${iterationInstance?.description}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="endDate"><g:message code="iteration.endDate.label" default="End Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: iterationInstance, field: 'endDate', 'errors')}">
                                    <g:datePicker name="endDate" precision="day" value="${iterationInstance?.endDate}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="estimatedHours"><g:message code="iteration.estimatedHours.label" default="Estimated Hours" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: iterationInstance, field: 'estimatedHours', 'errors')}">
                                    <g:textField name="estimatedHours" value="${fieldValue(bean: iterationInstance, field: 'estimatedHours')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="name"><g:message code="iteration.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: iterationInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${iterationInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="projectId"><g:message code="iteration.projectId.label" default="Project Id" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: iterationInstance, field: 'projectId', 'errors')}">
                                    <g:textField name="projectId" value="${fieldValue(bean: iterationInstance, field: 'projectId')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="startDate"><g:message code="iteration.startDate.label" default="Start Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: iterationInstance, field: 'startDate', 'errors')}">
                                    <g:datePicker name="startDate" precision="day" value="${iterationInstance?.startDate}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="title"><g:message code="iteration.title.label" default="Title" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: iterationInstance, field: 'title', 'errors')}">
                                    <g:textField name="title" value="${iterationInstance?.title}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
