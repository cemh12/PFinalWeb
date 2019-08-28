<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="/"><i class="glyphicon glyphicon-home"></i><span class="sr-only">(current)</span></a></li>
                        <li> <a href="/">Agregar un nuevo bloque</a></li>
                        <li> <a href="/paste/show/list">Mostrar Bloques</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li> <a href="/user/show/paste">Mi Bloques</a></li>
                <li><a href="/user/update/profile">Mi Perfil</a></li>
                <#if usuario??>
                    <li id="LoggedIn"><a  href="/user/update/profile">Welcome, <strong style="color: blue;">${usuario}</strong></a></li>
                <#else >
                    <li id="LoggedIn"><a id="logged" href="/user/signIn">Login</a></li>
                </#if>

                        <#if usuario??>
                            <li> <a href="/user/signOut">Sign Out</a></li>
                            <#else>
                                <li> <a href="/user/signIn">Sign in</a></li>
                        </#if>
                        <li> <a href="/user/signUp">Registrarse</a></li>
                        <li> <a href="/user/listar/user">Administrador</a></li>

            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
