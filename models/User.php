<?php
namespace models;

use Illuminate\Database\Eloquent\Model;

class User extends Model
{
    protected $table = 'users';
    protected $fillable = ['name','email','status','password'];

    public function comuna()
    {
        return $this->belongsTo(Comuna::class);
    }

    public function role()
    {
        return $this->belongsTo(Role::class);
    }
}
