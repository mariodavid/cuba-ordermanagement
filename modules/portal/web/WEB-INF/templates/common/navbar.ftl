<nav class="navbar navbar-default navbar-static-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">CUBA-ordermanagement</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <#if userSession?? && userSession.authenticated>
                <ul class="nav navbar-nav navbar-right">
                    <li class="active"><a href="#">${userSession.user.login}</a></li>
                    <li><a href="logout">Logout</a></li>
                </ul>

                <#else>
                    <form class="navbar-form navbar-right" method="POST" action="<@spring.url "/login"/>">
                    <div class="form-group">
                        <@spring.formInput path="loginUserCommand.login" fieldType="text" attributes="class='form-control'"/>
                        <#--<input type="text" placeholder="Email" >-->
                    </div>
                    <div class="form-group">
                        <@spring.formInput path="loginUserCommand.password" fieldType="password" attributes="class='form-control'"/>
                        <#--<input type="password" placeholder="Password" class="form-control">-->
                    </div>
                    <button type="submit" class="btn btn-success">Sign in</button>
                    </form>
            </#if>

        </div>
    </div>
</nav>
