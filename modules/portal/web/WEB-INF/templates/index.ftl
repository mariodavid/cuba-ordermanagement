<#-- @ftlroot "" -->
<#import "/spring.ftl" as spring />

<html>
<head>
    <title>
        Cuba Portal
    </title>
    <link rel="shortcut icon" type="image/x-icon" href="<@spring.url "/resources/favicon.ico"/>">
    <link rel="icon" type="image/gif" href="<@spring.url "/resources/favicon.ico"/>">
    <link rel="stylesheet" href="<@spring.url "/resources/css/common.css"/>"/>
    <link rel="stylesheet" href="<@spring.url "/resources/bootstrap/css/bootstrap.min.css"/>"/>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.3/jquery.min.js"/>"></script>
    <script type="text/javascript" src="<@spring.url "/resources/bootstrap/js/bootstrap.min.js"/>"></script>
    <script>
        $(function () {
            $('[data-toggle="popover"]').popover()
        })
    </script>
</head>
<body>

<#include "common/navbar.ftl">


<div class="container">
    <div class="row">

    <#if userSession?? && userSession.authenticated>
        <div class="col-md-12">
            <h2>All Products</h2>

            <ul>
                <#list products as product>
                    <li data-toggle="popover" title="Popover title" data-content="And here's some amazing content. It's very engaging. Right?">${product.name}</li>



                </#list>
            </ul>
        </div>

    </#if>
    </div>


    <hr>

    <footer>
        <p>© 2016 CUBA-ordermanagement Inc.</p>
    </footer>
</div>
</body>
</html>

