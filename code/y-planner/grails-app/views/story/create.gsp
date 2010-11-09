

<%@ page import="org.yplanner.domain.Story" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'story.label', default: 'Story')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${storyInstance}">
            <div class="errors">
                <g:renderErrors bean="${storyInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="actualHours"><g:message code="story.actualHours.label" default="Actual Hours" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: storyInstance, field: 'actualHours', 'errors')}">
                                    <g:textField name="actualHours" value="${fieldValue(bean: storyInstance, field: 'actualHours')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="description"><g:message code="story.description.label" default="Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: storyInstance, field: 'description', 'errors')}">
                                    <g:textField name="description" value="${storyInstance?.description}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="estimatedHours"><g:message code="story.estimatedHours.label" default="Estimated Hours" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: storyInstance, field: 'estimatedHours', 'errors')}">
                                    <g:textField name="estimatedHours" value="${fieldValue(bean: storyInstance, field: 'estimatedHours')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="estimatedHoursCache"><g:message code="story.estimatedHoursCache.label" default="Estimated Hours Cache" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: storyInstance, field: 'estimatedHoursCache', 'errors')}">
                                    <g:textField name="estimatedHoursCache" value="${fieldValue(bean: storyInstance, field: 'estimatedHoursCache')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="iterationId"><g:message code="story.iterationId.label" default="Iteration Id" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: storyInstance, field: 'iterationId', 'errors')}">
                                    <g:textField name="iterationId" value="${fieldValue(bean: storyInstance, field: 'iterationId')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="story.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: storyInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${storyInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="postponedHours"><g:message code="story.postponedHours.label" default="Postponed Hours" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: storyInstance, field: 'postponedHours', 'errors')}">
                                    <g:textField name="postponedHours" value="${fieldValue(bean: storyInstance, field: 'postponedHours')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="priority"><g:message code="story.priority.label" default="Priority" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: storyInstance, field: 'priority', 'errors')}">
                                    <g:textField name="priority" value="${fieldValue(bean: storyInstance, field: 'priority')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tasksEstimateAtIterationStart"><g:message code="story.tasksEstimateAtIterationStart.label" default="Tasks Estimate At Iteration Start" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: storyInstance, field: 'tasksEstimateAtIterationStart', 'errors')}">
                                    <g:textField name="tasksEstimateAtIterationStart" value="${fieldValue(bean: storyInstance, field: 'tasksEstimateAtIterationStart')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="trackerId"><g:message code="story.trackerId.label" default="Tracker Id" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: storyInstance, field: 'trackerId', 'errors')}">
                                    <g:textField name="trackerId" value="${fieldValue(bean: storyInstance, field: 'trackerId')}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
