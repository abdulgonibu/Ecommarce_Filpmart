<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Category;
use Session;

class CategoryController extends Controller
{
    public function managecategory(){
        $data = Category::orderBy('id','DESC')
            ->get();
        return view('addmin.category.manage-category', compact('data'));

    }

    public function addcategory(){
        return view('addmin.category.add-category');
    }

    public function savecategory(request $request){
        $request->validate([
            'category' => 'required',
        ]);

        $category = new Category();
        $category->category= $request->category;
        $category->category_slug = $request->category;
        $category->save();

        Session::flash('success','Category Save Successfully !');

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
    public function categoryStatus($id, $status){
        $category = Category::find($id);
        $category->status = $status;
        $category->save();
        return response()->json(['message' => 'Success']);
    }
    public function delete($id){
        $c = Category::find($id);
        $c->delete();

        Session::flash('success','Category Delete Successfully !');

        return back();

    }
}
