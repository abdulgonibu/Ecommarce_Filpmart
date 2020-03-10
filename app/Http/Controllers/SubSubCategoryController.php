<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SubSubCategoryController extends Controller
{
    public function manageSubsubcategory(){
        return view('addmin.category.manage-subsubcategory');
    }
}
