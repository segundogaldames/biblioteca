<?php
namespace models;

use Illuminate\Database\Eloquent\Model;

class Comuna extends Model
{
    protected $table = 'comunas';
    protected $fillable = ['nombre'];
}
