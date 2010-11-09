
<%@ page import="org.yplanner.domain.Story" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'story.label', default: 'Story')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="story.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: storyInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="story.actualHours.label" default="Actual Hours" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: storyInstance, field: "actualHours")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="story.description.label" default="Description" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: storyInstance, field: "description")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="story.estimatedHours.label" default="Estimated Hours" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: storyInstance, field: "estimatedHours")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="story.estimatedHoursCache.label" default="Estimated Hours Cache" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: storyInstance, field: "estimatedHoursCache")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="story.iterationId.label" default="Iteration Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: storyInstance, field: "iterationId")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="story.name.label" default="Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: storyInstance, field: "name")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="story.postponedHours.label" default="Postponed Hours" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: storyInstance, field: "postponedHours")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="story.priority.label" default="Priority" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: storyInstance, field: "priority")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="story.tasksEstimateAtIterationStart.label" default="Tasks Estimate At Iteration Start" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: storyInstance, field: "tasksEstimateAtIterationStart")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="story.trackerId.label" default="Tracker Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: storyInstance, field: "trackerId")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${storyInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
