<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Post;
use App\Models\Votes;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $posts = Post::all();
        
        // Generate exactly 10 users
       // Generate exactly 10 users
User::factory()->count(10)->create()->each(function ($user) use ($posts) {
    // Generate a random post for each user
    $postId = $posts->pluck('id')->random();

    // Associate post with user
    $post = Post::find($postId);
    $post->create_by = $user->id;
    $post->save();

    // Check if the user has already voted on this post
    $existingVote = Votes::where('user_id', $user->id)
                         ->where('post_id', $postId)
                         ->exists();

    // If the user hasn't voted on this post yet, create a random vote
    if (!$existingVote) {
        $numVotes = rand(-5, 5);
        $voteType = ($numVotes >= 0) ? 1 : -1;

        Votes::create([
            'user_id' => $user->id,
            'post_id' => $postId,
            'vote_type' => $voteType,
        ]);
    }
});

    }
    

    

}
 
