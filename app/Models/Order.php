<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;
 protected $fillable= [
   'name',
    'date',
    'id_customer',
    'address',
    'email',
    'phone',
    'total',
    'ship',
    'note',
    'status',
    'payment',
 ];

    public function customer()
    {
        return $this->belongsTo(User::class);
    }
}
