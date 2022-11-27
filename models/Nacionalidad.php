<?php
namespace models;

use Illuminate\Database\Eloquent\Model;

class Nacionalidad extends Model
{
    protected $table = 'nacionalidades';
    protected $fillable = ['nombre'];

}