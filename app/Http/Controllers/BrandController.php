<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Brand ;
use DB;
use Session;


class BrandController extends Controller
{
    public function addbrand(){
            return view ('addmin.brand-add');
    }

    public function savebrand(request $request){
        $request->validate([
            'brand_name' => 'required|unique:brands,brand_name|max:50',
        ]);

        $brand = new Brand();
        $brand->brand_name = $request->brand_name;
        $brand->brand_slug = $request->brand_name;
        $brand->save();

        Session::flash('success','Brand Save Success !');

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

    public function managebrand(){
        $brand = Brand::orderBy('id','DESC')
                     ->get();
        return view ('addmin.brand-manage', compact('brand'));

      /*Public function slug_generator ($string){
          $string = str_replace('','_', $string);
          $string = preg_replace('/[~A=Za=]')
        }*/
    }
/*
    public function inactive ($id){
             $brand = Brand::find($id);
             $brand->status = 0;
             $brand->save();

        Session::flash('success','Brand Inactive Successfully !');

        return back();

    }*/
   /* public function active ($id){
             $brand = Brand::find($id);
             $brand->status = 1;
             $brand->save();

        Session::flash('success','Brand active Successfully !');

        return back();

    }*/
    public function brandStatus($id, $status){
        $brand = Brand::find($id);
        $brand->status = $status;
        $brand->save();
        return response()->json(['message' => 'Success']);
    }
    public function delete($id){
             $brand = Brand::find($id);
             $brand->delete();

        Session::flash('success','Brand Delete Successfully !');

        return back();

    }

    public function edit($id){
        $row = Brand::find($id);
        /*return $row;*/
        return view ('addmin.brand-edit', compact('row'));

    }

    public function updatebrand(request $request){
       /*  return $request ;*/
        $request->validate([
            'brand_name' => 'required|unique:brands,brand_name|max:50',
        ]);

        $brand = Brand::find($request->id);
        $brand->brand_name = $request->brand_name;
        $brand->brand_slug = $request->brand_name;
        $brand->save();

        Session::flash('success','Brand Updated Successfully !');

        return back();

    }

}
