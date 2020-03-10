<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\SubCategory;
use App\Category;
use Session;

class SubCategoryController extends Controller
{
    public function manageSubcategory(){
        $data = SubCategory::with('category')->get();
        return view('addmin.category.manage-SubCategoty', compact('data'));
    }

    public function addSubcategory(){
        $categories = Category::where('status', 1)
              ->orderBy('category','ASC')
            ->get();
        return view('addmin.category.add-subcategory', compact('categories'));
    }
    public function saveSubcategory(request $request){
        $request->validate([
            'cat_name' => 'required',
        ]);

        $category = new SubCategory();
        $category->cat_it= $request->cat_it;
        $category->cat_name= $request->cat_name;
        $category->save();

        Session::flash('success','SubCategory Save Successfully !');

        return back();

        //return back()->with('message','Brand Save Succes !');

        /* return back();*/
        /*return redirect('brand/add-brand');*/
        /* return redirect()->back();*/

        /*  Brand::create($request->all());*/
        /* DB::table('brands')->insert(
             [
                 'brand_name' => $request->brand_name
             ]
         );*/

        /*return 'Succes';*/
    }
}
