<div class="card">
    <div class="card-header">
        <h1 class="card-title">
            {{$subject}}
        </h1>
    </div>
    <div class="card-body">
        {include file="../partials/_messages.tpl"}
        <div class="col-md-6">
            <table class="table table-hover">
                <tr>
                    <th>Nombre:</th>
                    <td>{$suscriptor.nombre}</td>
                </tr>
                <tr>
                    <th>RUT:</th>
                    <td>{$suscriptor.rut}</td>
                </tr>
                <tr>
                    <th>Email:</th>
                    <td>{$suscriptor.email}</td>
                </tr>
                <tr>
                    <th>Activo:</th>
                    <td>
                        {if $suscriptor.activo == 1}
                            Si
                        {else}
                            No
                        {/if}
                    </td>
                </tr>
                <tr>
                    <th>Dirección:</th>
                    <td>{$suscriptor.direccion}</td>
                </tr>
                <tr>
                    <th>Comuna:</th>
                    <td>{$suscriptor.comuna.nombre}</td>
                </tr>
                <tr>
                    <th>Nacionalidad:</th>
                    <td>{$suscriptor.nacionalidad.nombre}</td>
                </tr>
                <tr>
                    <th>Creado:</th>
                    <td>{$suscriptor.created_at|date_format:"%d-%m-%Y %H:%M:%S"}</td>
                </tr>
                <tr>
                    <th>Modificado:</th>
                    <td>{$suscriptor.updated_at|date_format:"%d-%m-%Y %H:%M:%S"}</td>
                </tr>
            </table>
        </div>
        <p>
            <a href="{$_layoutParams.root}suscriptores" class="btn btn-outline-primary btn-sm">Volver</a>
        </p>
    </div>
</div>