<?php
Route::get('/', 'SiteController@index')->name('index');
Route::get('/product','SiteController@product')->name('product');

Auth::routes();
Route::middleware(['auth'])->group(function(){

});

Route::get('/dashboard', 'HomeController@index')->name('home');
Route::get('/brand/add-brand', 'BrandController@addbrand')->name('add-brand');
Route::post('/brand/save-brand', 'BrandController@savebrand')->name('save-brand');
Route::get('/brand/manage-brand', 'BrandController@managebrand')->name('manage-brand');

/*Route::get('/brand/inactive/{id}', 'BrandController@inactive')->name('inactive-brand');
Route::get('/brand/active/{id}', 'BrandController@active')->name('active-brand');*/

Route::get('/brand/delete/{id}', 'BrandController@delete')->name('delete-brand');
Route::get('/brand/edit/{id}', 'BrandController@edit')->name('edit-brand');
Route::post('/brand/update', 'BrandController@updatebrand')->name('update-brand');
Route::get('/brand/brandStatus/{id}/{s}', 'BrandController@brandStatus')->name('brandStatus');

//categories
Route::get('/category/manage-category', 'CategoryController@managecategory')->name('manage-category');
Route::post('/category/save-category', 'CategoryController@savecategory')->name('save-category');
Route::get('/category/add-category', 'CategoryController@addcategory')->name('add-category');
Route::get('/category/categoryStatus/{id}/{s}', 'CategoryController@categoryStatus')->name('categoryStatus');
Route::get('/category/delete/{id}', 'CategoryController@delete')->name('delete-category');


Route::get('/category/manage-subcategory', 'SubCategoryController@manageSubcategory')->name('manage-subcategory');
Route::get('/category/add-subcategory', 'SubCategoryController@addSubcategory')->name('add-subcategory');
Route::Post('/category/save-subcategory', 'SubCategoryController@saveSubcategory')->name('save-subcategory');



Route::get('/category/manage-sub-subcategory', 'SubSubCategoryController@manageSubsubcategory')->name('manage-subsubcategory');
