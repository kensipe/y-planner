
<%@ page import="org.yplanner.domain.Iteration" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'iteration.label', default: 'Iteration')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'iteration.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="actualHours" title="${message(code: 'iteration.actualHours.label', default: 'Actual Hours')}" />
                        
                            <g:sortableColumn property="daysWorked" title="${message(code: 'iteration.daysWorked.label', default: 'Days Worked')}" />
                        
                            <g:sortableColumn property="description" title="${message(code: 'iteration.description.label', default: 'Description')}" />
                        
                            <g:sortableColumn property="endDate" title="${message(code: 'iteration.endDate.label', default: 'End Date')}" />
                        
                            <g:sortableColumn property="estimatedHours" title="${message(code: 'iteration.estimatedHours.label', default: 'Estimated Hours')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${iterationInstanceList}" status="i" var="iterationInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${iterationInstance.id}">${fieldValue(bean: iterationInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: iterationInstance, field: "actualHours")}</td>
                        
                            <td>${fieldValue(bean: iterationInstance, field: "daysWorked")}</td>
                        
                            <td>${fieldValue(bean: iterationInstance, field: "description")}</td>
                        
                            <td><g:formatDate date="${iterationInstance.endDate}" /></td>
                        
                            <td>${fieldValue(bean: iterationInstance, field: "estimatedHours")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${iterationInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
