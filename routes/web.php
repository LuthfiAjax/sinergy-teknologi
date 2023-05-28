<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;


Route::get('/', function () {
    return view('import');
});

Route::post('/import-products', [ProductController::class, 'importProducts']);
Route::get('/view-products', [ProductController::class, 'viewProducts']);
Route::post('/update-products', [ProductController::class, 'updateproduct']);
