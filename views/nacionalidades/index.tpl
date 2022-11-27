<div class="card">
    <div class="card-header">
        <h1 class="card-title">
            {{$subject}}
            <a href="{$_layoutParams.root}nacionalidades/add" class="btn btn-outline-secondary">Nueva Nacionalidad</a>
        </h1>
    </div>
    <div class="card-body">
        {include file="../partials/_messages.tpl"}
        {if isset($nacionalidades) && count($nacionalidades)}
            <table id="table" class="table table-hover">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Nombre</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    {foreach from=$nacionalidades item=nacionalidad}
                        <tr>
                            <td>{$nacionalidad.id}</td>
                            <td>{$nacionalidad.nombre}</td>
                            <td>
                                <a href="{$_layoutParams.root}nacionalidades/show/{$nacionalidad.id}" class="btn btn-success btn-sm">Ver</a>
                                <a href="{$_layoutParams.root}nacionalidades/edit/{$nacionalidad.id}" class="btn btn-warning btn-sm">Editar</a>
                            </td>
                        </tr>
                    {/foreach}
                </tbody>
            </table>
        {else}
            <p class="text-info">No hay nacionalidades registradas</p>
        {/if}
    </div>
</div>