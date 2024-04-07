<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Votes extends Model
{
    use HasFactory;
    protected $table = 'uservotes';

    protected $fillable =[
        'user_id',
        'post_id',
        'vote_type'
    ];
}
