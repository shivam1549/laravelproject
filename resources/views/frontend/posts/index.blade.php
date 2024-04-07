@extends('layouts.app')

@section('content')

<div class="container">
    <h2>View All Latest Posts</h2>
    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
    <div class="row">
        @foreach($posts as $post)
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <div class="img-box mb-2">
                        <img class="w-100" src="{{$post->image}}" alt="">
                    </div>
                    <h4>{{$post->title}}</h4>
                    <p>{{$post->created_at->format('d-m-Y')}}</p>
                    @if(Auth::check() && Auth::user()->role_as == '1')
                    <a href="{{url('delete-post/'.$post->id)}}" class="btn btn-danger">Delete</a>
                    @endif

                </div>
            </div>
        </div>
        @endforeach
        <div class="col-md-12">
            <div class="pagination">
                {{ $posts->links() }}
            </div>
        </div>
    </div>

    <h2 class="mt-4">Top 5 Voted Posts</h2>
    <div class="row">
        @foreach($postsWithMoreThanFiveVotes as $postfive)
        <div class="col-md-3">
            <div class="card">
                <div class="card-body">
                    <div class="img-box mb-2">
                        <img class="w-100" src="{{$postfive->image}}" alt="">
                    </div>
                    <h4>{{$postfive->title}}</h4>
                    <p>{{$postfive->created_at->format('d-m-Y')}}</p>
                    @if(Auth::check() && Auth::user()->role_as == '1')
                    <a href="{{url('delete-post/'.$postfive->id)}}" class="btn btn-danger">Delete</a>
                    @endif

                </div>
            </div>
        </div>
        @endforeach
    </div>
</div>


@endsection