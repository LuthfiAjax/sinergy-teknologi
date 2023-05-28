@extends('layouts')

@section('content')
<main>
    <div class="container-fluid px-4">
        <h1 class="mt-4">View After Import</h1>
        @if(session('success'))
            <div class="alert alert-success">
                {{ session('success') }}
            </div>
        @endif

        @if(session('error'))
            <div class="alert alert-danger">
                {{ session('error') }}
            </div>
        @endif

        <ol class="breadcrumb mb-4">
            <li class="breadcrumb-item active">Soal Nomor 4</li>
        </ol>
        <div class="card mb-4">
            <div class="card-header">
                <i class="fas fa-table me-1"></i>
               Data Products
            </div>
            <div class="card-body">
                <table id="datatablesSimple">
                    <thead>
                        <tr>
                            <th>Title</th>
                            <th>Price</th>
                            <th>Discount</th>
                            <th>Rating</th>
                            <th>Stock</th>
                            <th>Brand</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>Title</th>
                            <th>Price</th>
                            <th>Discount</th>
                            <th>Rating</th>
                            <th>Stock</th>
                            <th>Brand</th>
                            <th>Action</th>
                        </tr>
                    </tfoot>
                    <tbody>
                        <?php foreach ($products as $row) : ?>
                        <tr>
                            <td><?= $row['title']; ?></td>
                            <td>$<?= $row['price']; ?></td>
                            <td><?= $row['discountPercentage']; ?>%</td>
                            <td><?= $row['rating']; ?></td>
                            <td><?= $row['stock']; ?></td>
                            <td><?= $row['brand']; ?></td>
                            <td>
                                <div class="dropdown">
                                    <button class="btn btn-sm btn-success dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                                      Click
                                    </button>
                                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                      <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#edit_<?= $row['id']; ?>"><i class="fa-solid fa-pen-to-square"></i> Edit</a></li>
                                      <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#detail_<?= $row['id']; ?>"><i class="fa-solid fa-circle-info"></i> Detail</a></li>
                                    </ul>
                                  </div>
                            </td>
                        </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</main>

{{-- modal detail --}}
<?php foreach ($products as $row) : ?>
<div class="modal fade" id="detail_<?= $row['id']; ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel"><?= $row['title']; ?></h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <div class="d-flex justify-content-center">
                <div class="card" style="width: 100%;">
                    <img src="<?= $row['thumbnail']; ?>" class="card-img-top" alt="...">
                    <div class="card-body">
                      <p class="card-text"><?= $row['description']; ?></p>
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">Price  : $<?= $row['price']; ?></li>
                        <li class="list-group-item">Discount : <?= $row['discountPercentage']; ?>%</li>
                        <li class="list-group-item">Rating : <?= $row['rating']; ?></li>
                        <li class="list-group-item">Stock : <?= $row['stock']; ?></li>
                        <li class="list-group-item">Brand : <?= $row['brand']; ?></li>
                        <li class="list-group-item">Images : </li>
                    </ul>
                    <?php $images = array_map('trim', explode(',', $row['images'])); ?>
                    <div class="row">
                        <?php foreach ($images as $image) : ?>
                        <div class="col-md-6">
                            <img src="<?= $image; ?>" class="img-thumbnail" alt="...">
                        </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </div>
</div>
<?php endforeach; ?>

{{-- modal Edit --}}
<?php foreach ($products as $row) : ?>
<div class="modal fade" id="edit_<?= $row['id']; ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel"><?= $row['title']; ?></h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <div class="d-flex justify-content-center">
                <div class="card" style="width: 100%;">
                    <img src="<?= $row['thumbnail']; ?>" class="card-img-top" alt="...">
                    <div class="container my-2 mx-2">
                        <form method="post" action="{{ url('/update-products') }}">
                            @csrf
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon1">Title</span>
                                <input type="text" class="form-control" value="<?= $row['title']; ?>" name="title">
                                <input type="hidden" class="form-control" value="<?= $row['id']; ?>" name="id">
                            </div>
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon1">Description</span>
                                <textarea class="form-control" name="description" id="description" cols="3" rows="2"><?= $row['description']; ?></textarea>
                            </div>
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon1">price</span>
                                <input type="number" class="form-control" value="<?= $row['price']; ?>" name="price">
                            </div>
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon1">Discount</span>
                                <input type="number" class="form-control" value="<?= $row['discountPercentage']; ?>" name="discount">
                            </div>
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon1">Rating</span>
                                <input type="number" class="form-control" value="<?= $row['rating']; ?>" name="rating">
                            </div>
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon1">Stock</span>
                                <input type="number" class="form-control" value="<?= $row['stock']; ?>" name="stock">
                            </div>
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon1">Brand</span>
                                <input type="text" class="form-control" value="<?= $row['brand']; ?>" name="brand">
                            </div>
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon1">Category</span>
                                <select class="form-control" name="category" aria-label="Default select example">
                                    <option selected disabled>Category Choise</option>
                                    <?php foreach ($categories as $category) : ?>
                                        <option <?= ($category == $row['category']) ? 'selected' : ''; ?> value="<?= $category; ?>"><?= $category; ?></option>
                                    <?php endforeach; ?>
                                  </select>
                            </div>
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </div>
</div>
<?php endforeach; ?>
@endsection