<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->date('date');
            $table->bigInteger('id_customer')->unsigned();
            $table->string('address');
            $table->string('phone');
            $table->string('email');
            $table->string('total');
            $table->string('ship');
            $table->string('status');
            $table->string('payment');
            $table->string('note');
            $table->json('cart_id')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('orders');
    }
};
