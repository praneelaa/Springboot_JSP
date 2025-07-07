<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Your Cart</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css">
<link href="https://fonts.googleapis.com/css2?family=Crimson+Text&display=swap" rel="stylesheet">
    
</head>
<body>
<div class="logo-banner">
    <img src="https://i.pinimg.com/originals/38/4e/c7/384ec74949c68b3829d34a3c4e22dcc3.jpg" alt="Ancient Library Logo" class="logo-img">
    <h1 class="site-title">The Grand Ancient Library</h1>
</div>
<div class="container">
    <h2>🛒 Your Cart</h2>

    <table border="1">
        <tr>
            <th>Title</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Total</th>
            <th>Action</th> <!-- Remove Button Column -->
        </tr>

        <c:set var="total" value="0" />
        <c:forEach var="entry" items="${cartDetails}">
            <tr>
                <td>${entry.book.title}</td>
                <td>₹${entry.book.price}</td>
                <td>${entry.quantity}</td>
                <td>
                    ₹<c:out value="${entry.book.price * entry.quantity}" />
                    <c:set var="total" value="${total + (entry.book.price * entry.quantity)}" />
                </td>
                <td>
                    <a href="/cart/remove/${entry.cartId}" class="btn" onclick="return confirm('Remove this book from cart?')">❌ Remove</a>
                </td>
            </tr>
        </c:forEach>

        <tr>
            <td colspan="4"><strong>Total:</strong></td>
            <td><strong>₹${total}</strong></td>
        </tr>
    </table>

    <br>
    <a href="/cart/thankyou" class="btn">🧾 Checkout</a>
    <a href="/catalog" class="btn">← Continue Shopping</a>
</div>
</body>
</html>
