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
                    <td>{$user.name}</td>
                </tr>
                <tr>
                    <th>RUT:</th>
                    <td>{$user.rut}</td>
                </tr>
                <tr>
                    <th>Email:</th>
                    <td>{$user.email}</td>
                </tr>
                <tr>
                    <th>Status:</th>
                    <td>
                        {if $user.status == 1}
                            Activo
                        {else}
                            Inactivo
                        {/if}
                    </td>
                </tr>
                <tr>
                    <th>Dirección:</th>
                    <td>{$user.direccion}</td>
                </tr>
                <tr>
                    <th>Comuna:</th>
                    <td>{$user.comuna.nombre}</td>
                </tr>
                <tr>
                    <th>Rol:</th>
                    <td>{$user.role.nombre}</td>
                </tr>
                <tr>
                    <th>Creado:</th>
                    <td>{$user.created_at|date_format:"%d-%m-%Y %H:%M:%S"}</td>
                </tr>
                <tr>
                    <th>Modificado:</th>
                    <td>{$user.updated_at|date_format:"%d-%m-%Y %H:%M:%S"}</td>
                </tr>
            </table>
            <p>
                <a href="{$_layoutParams.root}users" class="btn btn-outline-primary btn-sm">Volver</a>
                <a href="{$_layoutParams.root}passwords/edit" class="btn btn-outline-success btn-sm">Cambiar Password</a>
            </p>
        </div>
    </div>
</div>