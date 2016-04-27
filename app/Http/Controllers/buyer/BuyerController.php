<?php

namespace App\Http\Controllers\buyer;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

class BuyerController extends Controller
{
  public function index()
    {
       return view('buyer.index');
	}
}
