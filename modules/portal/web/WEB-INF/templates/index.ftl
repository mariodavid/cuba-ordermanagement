<#-- @ftlroot "" -->
<#import "/spring.ftl" as spring />

<html>
<head>
    <title> CUBA-ordermanagement </title>
    <link rel="shortcut icon" type="image/x-icon" href="<@spring.url "/resources/favicon.ico"/>">
    <link rel="icon" type="image/gif" href="<@spring.url "/resources/favicon.ico"/>">
    <link rel="stylesheet" href="<@spring.url "/resources/css/common.css"/>"/>
    <link rel="stylesheet" href="<@spring.url "/resources/bootstrap/css/bootstrap.min.css"/>"/>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.3/jquery.min.js"/>"></script>
    <script type="text/javascript" src="<@spring.url "/resources/bootstrap/js/bootstrap.min.js"/>"></script>

</head>
<body>

<#include "common/navbar.ftl">


<div class="container">
    <div class="row">

        <div class="col-md-4">
            <h2>All Products</h2>

            <div class="list-group">
                <#list products as product>
                    <#if product.description??>
                        <a class="list-group-item product"
                                data-title="${product.name}"
                                data-content="${product.description}">
                        ${product.name}
                        </a>
                    <#else>
                        <a class="list-group-item product"
                           data-title="${product.name}"
                            data-content="">
                            ${product.name}
                        </a>
                    </#if>


                </#list>
            </div>
        </div>

        <div class="col-sm-8" id="product-detail-column"  style="display: none">

            <h2>Productinformation</h2>
            <div class="panel panel-default" id="product-details">
                <div class="panel-heading"></div>
                <div class="panel-body"></div>
            </div>

        </div>

    </div>


    <hr>

    <footer>
        <p>© 2016 CUBA-ordermanagement Inc.</p>
    </footer>
</div>

<script>
    $(function () {
        $(".product").click(function() {

            var productElement = this;

            setProductActiveState(productElement);

            $("#product-detail-column").fadeOut("fast", function() {

                var product = readProductDetailsFromElement(productElement);
                changeProductDetails(product);

                $("#product-detail-column").fadeIn("fast");
            });

        })
    });

    function setProductActiveState(productElement) {
        $(".product").removeClass("active");
        $(productElement).addClass("active");
    }


    function readProductDetailsFromElement(productElement) {
        return {
            title: $(productElement).data("title"),
            content: $(productElement).data("content"),
        }
    }

    function changeProductDetails(product) {
        $("#product-details .panel-heading").html(product.title)

        if (product.content) {
            $("#product-details .panel-body").html(product.content)
        }
        else {
            $("#product-details .panel-body").html('<div class="alert alert-warning">No description available</div>')
        }
    }

</script>
</body>
</html>


