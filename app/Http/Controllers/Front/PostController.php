<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Post;



class PostController extends Controller
{
    //
    public function index()
    {


        $postsWithMoreThanFiveVotes = Post::whereHas('votes', function ($query) {
            $query->havingRaw('COUNT(*) > 5');
        })->get();

        $posts = Post::paginate(3);
        return view('frontend.posts.index', ['posts' => $posts, 'postsWithMoreThanFiveVotes' =>$postsWithMoreThanFiveVotes]);
    }

    public function delete($postid){
        $post = Post::find($postid);
        if($post){
            $post->delete();
            return redirect('/')->with('status', 'Deleted Successfully');
        }
    }
}
