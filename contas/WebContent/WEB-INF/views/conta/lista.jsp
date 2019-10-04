<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table>
		<thead>
			<tr>
				<th>Código</th>
				<th>Descrição</th>
				<th>Valor</th>
				<th>Tipo</th>
				<th>Paga?</th>
				<th>Data de Pagamento</th>
				<th></th>				
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${contas}" var="conta">
				<tr>
					<td>${conta.id}</td>
					<td>${conta.descricao}</td>
					<td>${conta.valor}</td>
					<td>${conta.tipo}</td>
					<td id="conta_${conta.id}"><c:if test="${conta.paga eq false}">
                    Não paga
                </c:if> <c:if test="${conta.paga eq true }">
                    Paga!
                </c:if></td>
					<td><fmt:formatDate value="${conta.dataPagamento.time}"
							pattern="dd/MM/yyyy" /></td>
				
					<td><a href="removeConta?id=${conta.id}">Remover</a></td>
				</tr>
				
				
			</c:forEach>
		</tbody>
	</table>

</body>
</html>