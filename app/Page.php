<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Page extends Model
{
    protected $fillable = ['title', 'link', 'textSize', 'textColour', 'backgroundColour', 'font'];
}
