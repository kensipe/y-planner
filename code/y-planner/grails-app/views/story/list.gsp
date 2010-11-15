
<%@ page import="org.yplanner.domain.Story" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'story.label', default: 'Story')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'story.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="actualHours" title="${message(code: 'story.actualHours.label', default: 'Actual Hours')}" />
                        
                            <g:sortableColumn property="description" title="${message(code: 'story.description.label', default: 'Description')}" />
                        
                            <g:sortableColumn property="estimatedHours" title="${message(code: 'story.estimatedHours.label', default: 'Estimated Hours')}" />
                        
                            <g:sortableColumn property="estimatedHoursCache" title="${message(code: 'story.estimatedHoursCache.label', default: 'Estimated Hours Cache')}" />
                        
                            <g:sortableColumn property="name" title="${message(code: 'story.name.label', default: 'Name')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${storyInstanceList}" status="i" var="storyInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${storyInstance.id}">${fieldValue(bean: storyInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: storyInstance, field: "actualHours")}</td>
                        
                            <td>${fieldValue(bean: storyInstance, field: "description")}</td>
                        
                            <td>${fieldValue(bean: storyInstance, field: "estimatedHours")}</td>
                        
                            <td>${fieldValue(bean: storyInstance, field: "estimatedHoursCache")}</td>
                        
                            <td>${fieldValue(bean: storyInstance, field: "name")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${storyInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
