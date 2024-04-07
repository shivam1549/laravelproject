<?php

namespace Database\Factories;
use App\Models\Post;
use App\Models\User;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Post>
 */
class PostFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        $title = $this->faker->sentence;
        $slug = Str::slug($title);
        $description = $this->faker->paragraph;
        $image = $this->faker->imageUrl();
        $create_by = User::inRandomOrder()->first()->id; // Assuming you have a User model
        $votes = $this->faker->numberBetween(0, 100);

        return [
            'title' => $title,
            'slug' => $slug,
            'description' => $description,
            'image' => $image,
            'create_by' => $create_by,
            'votes' => $votes,
        ];
    }
}
