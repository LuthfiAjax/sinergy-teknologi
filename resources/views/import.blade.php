@extends('layouts')

@section('content')
<main>
    <div class="container-fluid px-4">
        <h1 class="mt-4">Get Data From API</h1>
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
            <li class="breadcrumb-item active">Soal Nomor 3</li>
        </ol>
        <div class="card mb-4">
            <div class="card-header">
              Form Import Datas 
            </div>
            <div class="card-body">
                <form method="POST" action="{{ url('/import-products') }}">
                    @csrf 
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" placeholder="Masuka url API Endpoint" name="api" aria-label="Recipient's username" aria-describedby="basic-addon2">
                        <button type="submit" class="input-group-text" id="basic-addon2">Submit</button>
                    </div>
                </form>
            </div>
        </div>
        <a class="btn btn-sm btn-primary" href="{{ url('/view-products') }}">view result</a>
    </div>
</main>
@endsection