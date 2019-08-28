<#include "header.ftl">
<#include "nav.ftl">

<div class="container" id="paste-bin">
    <div class="panel panel-primary" style="width:800px; margin-left: 30px">
        <div class="panel-heading">Bloque</div>
        <div class="panel-body">

            <form action="/paste/" method="post" name="myForm" onsubmit="return(validate());" >
                <div class="row">
                    <div class="col-md-offset col-md-7">
                        <div class="form-group">
                            <label for="title">Titulo</label>
                            <input type="text" class="form-control" name="title" id="title"
                                   placeholder="Nombre del titulo">
                        </div>
                        <div class="form-group">
                            <label for="bloqueDeTexto">Nuevo Bloque</label>
                            <textarea class="form-control" name="bloqueDeTexto" id="bloqueDeTexto" cols="50"
                                      rows="20"></textarea>
                            <p id="demo"></p>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="form-group" style="margin-top:77px">
                            <label for="syntax">Sintaxis</label>
                            <select class="form-control" name="syntax" id="syntax">
                                <option selected="disabled">Seleccione</option>
                                <option>apache</option>
                                <option>bash</option>
                                <option>c#</option>
                                <option>c++</option>
                                <option>css</option>
                                <option>coffeeScript</option>
                                <option>diff</option>
                                <option>html</option>
                                <option>xml</option>
                                <option>http</option>
                                <option>ini</option>
                                <option>json</option>
                                <option>java</option>
                                <option>javascript</option>
                                <option>lisp</option>
                                <option>makefile</option>
                                <option>markdown</option>
                                <option>ngnix</option>
                                <option>objective-C</option>
                                <option>php</option>
                                <option>perl</option>
                                <option>python</option>
                                <option>ruby</option>
                                <option>sql</option>
                                <option>shell</option>
                                <option>session</option>
                                <option>arduino</option>
                                <option>arm assembler</option>
                                <option>clojure</option>
                                <option>django</option>
                                <option>excel</option>
                                <option>f#</option>
                                <option>go</option>
                                <option>haskell</option>
                                <option>groovy</option>
                                <option>r</option>
                                <option>sml</option>
                                <option>swift</option>
                                <option>vb.net</option>
                                <option>yaml</option>

                            </select>
                        </div>
                        <div class="form-group">
                            <label for="expirationDate">Fecha de expiracion</label>
                            <select class="form-control" name="expirationDate" id="expirationDate" >
                                <option selected="disabled">Seleccione</option>
                                <option>never</option>
                                <option>10 minutes</option>
                                <option>15 minutes</option>
                                <option>30 minutes</option>
                                <option>1 hour</option>
                                <option>1 day</option>
                                <option>1 week</option>
                            </select>
                            <div class="form-group">
                                <label for="expositionType">Tipo de exposicion</label>
                                <select class="form-control" name="expositionType" id="expositionType" >
                                    <option selected="disabled">Seleccione</option>
                                    <option>public</option>
                                    <option>private</option>
                                    <option>unlisted</option>
                                </select>
                            </div>
                            <div class="row">
                                <div class="col-md-offset-6 col-md-6">
                                    <div class="form-group" style="margin-top:190px">
                                        <button class="btn btn-primary form-control" type="submit">Publicar Bloque
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
            </form>
        </div>
    </div>

</div>

<script type="text/javascript">

    function validate() {

        if (document.myForm.title.value === "") {
            alert("Please provide the title of the form");
            document.myForm.title.focus();
            return false;
        }

        if (document.myForm.bloqueDeTexto.value == "") {
            alert("Please provide the text block of the form");
            document.myForm.bloqueDeTexto.focus();
            return false;
        }

        if (document.myForm.syntax.value === "Select One")
        {
            alert('Please enter Syntax name');
            document.getElementById('syntax').style.borderColor = "red";
            return false;
        }

        if (document.myForm.expirationDate.value === "Select One")
        {
            alert('Please enter expiration date');
            document.getElementById('expirationDate').style.borderColor = "red";
            return false;
        }

        if (document.myForm.expositionType.value === "Select One")
        {
            alert('Please enter expiration date');
            document.getElementById('expositionType').style.borderColor = "red";
            return false;
        }

    }



</script>
<#include "footer.ftl">

