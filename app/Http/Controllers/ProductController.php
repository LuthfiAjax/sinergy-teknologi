<?php 
namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;

class ProductController extends Controller
{
    public function importProducts(Request $request)
    {
        $api = $request->input('api');

        $response = Http::get($api);

        $responseData = $response->json();
        $products = $responseData['products']; 

        if (!empty($products)) {
            foreach ($products as $productData) {
                if (isset($productData['id'])) {
                    $imagesString = '';

                    if (isset($productData['images']) && is_array($productData['images'])) {
                        $imagesString = implode(',', $productData['images']);
                    }

                    $data = [
                        'id' => $productData['id'],
                        'title' => $productData['title'],
                        'description' => $productData['description'],
                        'price' => $productData['price'],
                        'discountPercentage' => $productData['discountPercentage'],
                        'rating' => $productData['rating'],
                        'stock' => $productData['stock'],
                        'brand' => $productData['brand'],
                        'category' => $productData['category'],
                        'thumbnail' => $productData['thumbnail'],
                        'images' => $imagesString,
                    ];

                    try {
                        $product = Product::create($data);
                        $importedCount++;
                    } catch (\Exception $e) {
                        Log::error('Failed to save product: ' . $e->getMessage());
                        continue; 
                    }
                }
            }

            session()->flash('success', 'Products imported successfully,  Data Added '.$importedCount);
        } else {
            session()->flash('error', 'No products imported');
        }
        return redirect('/');
    }

    public function viewProducts()
    {
        $products = Product::all();
        $categories = Product::pluck('category')->unique()->values();

        return view('view', ['products' => $products, 'categories' => $categories]);
    }

    public function updateProduct(Request $request)
    {
        $id = $request->input('id');
        $title = $request->input('title');
        $description = $request->input('description');
        $price = $request->input('price');
        $discountPercentage = $request->input('discount');
        $rating = $request->input('rating');
        $stock = $request->input('stock');
        $brand = $request->input('brand');
        $category = $request->input('category');

        $product = Product::find($id);

        if (!$product) {
            session()->flash('error', 'Product not found');
        }

        $product->title = $title;
        $product->description = $description;
        $product->price = $price;
        $product->discountPercentage = $discountPercentage;
        $product->rating = $rating;
        $product->stock = $stock;
        $product->brand = $brand;
        $product->category = $category;

        $product->save();

        session()->flash('success', 'Product updated successfully');
        return redirect('/view-products');
    }

}


?>