<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="functions" uri="http://www.jahia.org/tags/functions" %>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>

<jcr:nodeProperty node="${currentNode}" name="jcr:description" var="description" />
<c:set var="linkTitle" value=""/>
<c:if test="${not empty description}">
    <c:set var="linkTitle"> title="<c:out value="${description.string}" escapeXml="true"/>"</c:set>
</c:if>

<a href="#" data-toggle="dropdown" class="dropdown-toggle"${linkTitle}
   role="button" aria-haspopup="true" aria-expanded="false">${currentNode.displayableName} <span class="caret"></span></a>