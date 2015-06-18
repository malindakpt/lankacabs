<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: MalindaK
  Date: 6/17/2015
  Time: 6:30 PM
  To change this template use File | Settings | File Templates.
--%>

<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>jQuery UI Tabs - Collapse content</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <script src="/resources/js/auto.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script>
    $(function() {
      $( "#tabs" ).tabs({
        collapsible: true
      });
    });
  </script>
</head>
<body>

<div id="tabs">
  <ul>
    <li><a href="#tabs-1">Add Vehicle</a></li>
    <li><a href="#tabs-2">Search Vehicle</a></li>
    <li><a href="#tabs-3">Contact Us</a></li>
  </ul>
  <div id="tabs-1">

    <h2>Vehicle Information</h2>



    <form:form method="POST" action="/addStudent">
      <table>
        <tr>
          <%--<td><form:label path="REGNO">Name</form:label></td>--%>
          <td><form:input  path="REGNO" placeholder="Reg. No." /></td>

        </tr>
        <tr>
          <%--<td><form:label path="MAKE">Age</form:label></td>--%>

          <td><form:input path="MAKE" id="tags" class="ui-widget" placeholder="Manufacturer"/></td>
        </tr>
        <tr>

          <td><form:input path="MODEL" placeholder="Model" /></td>
        </tr>
        <tr>
          <td><form:input path="TYPE" id="autoTypes" placeholder="Type: (Car,Van.." /></td>
        </tr>
        <tr>
        <td><form:input path="SEATS" placeholder="No. Seats" /></td>
      </tr>
        <tr>
          <td><form:input placeholder="Cost/Km with A/C" path="ACCOST"/></td>
        </tr>
        <tr>

          <td><form:input path="NONACCOST" placeholder="Cost/Km without A/C" /></td>
        </tr>
        <tr>

          <td><form:input path="OWNER" placeholder="Driver Name"/></td>
        </tr>
        <tr>

          <td><form:input path="PHONE" placeholder="Phone No"/></td>
        </tr>
        <tr>

          <td><form:input path="EMAIL" placeholder="Email Address" /></td>
        </tr>
        <tr>

          <td><form:input path="DESCRIPTION" placeholder="Description about vehicle" /></td>
        </tr>
        <tr>
          <td colspan="2">
            <input type="submit" value="Submit"/>
          </td>
        </tr>
      </table>
    </form:form>




     </div>
  <div id="tabs-2">
    <p><strong>Click this tab again to close the content pane.</strong></p>
    <p>Morbi tincidunt, dui sit amet facilisis feugiat, odio metus gravida ante, ut pharetra massa metus id nunc. Duis scelerisque molestie turpis. Sed fringilla, massa eget luctus malesuada, metus eros molestie lectus, ut tempus eros massa ut dolor. Aenean aliquet fringilla sem. Suspendisse sed ligula in ligula suscipit aliquam. Praesent in eros vestibulum mi adipiscing adipiscing. Morbi facilisis. Curabitur ornare consequat nunc. Aenean vel metus. Ut posuere viverra nulla. Aliquam erat volutpat. Pellentesque convallis. Maecenas feugiat, tellus pellentesque pretium posuere, felis lorem euismod felis, eu ornare leo nisi vel felis. Mauris consectetur tortor et purus.</p>
  </div>
  <div id="tabs-3">
    <p><strong>Click this tab again to close the content pane.</strong></p>
    <p>Duis cursus. Maecenas ligula eros, blandit nec, pharetra at, semper at, magna. Nullam ac lacus. Nulla facilisi. Praesent viverra justo vitae neque. Praesent blandit adipiscing velit. Suspendisse potenti. Donec mattis, pede vel pharetra blandit, magna ligula faucibus eros, id euismod lacus dolor eget odio. Nam scelerisque. Donec non libero sed nulla mattis commodo. Ut sagittis. Donec nisi lectus, feugiat porttitor, tempor ac, tempor vitae, pede. Aenean vehicula velit eu tellus interdum rutrum. Maecenas commodo. Pellentesque nec elit. Fusce in lacus. Vivamus a libero vitae lectus hendrerit hendrerit.</p>
  </div>
</div>


</body>
</html>