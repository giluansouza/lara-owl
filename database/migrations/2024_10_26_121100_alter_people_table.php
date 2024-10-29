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
        Schema::table('people', function (Blueprint $table) {
            $table->string('rg')->nullable();
            $table->date('birthDate')->nullable();
            $table->string('gender')->nullable();
            $table->string('father')->nullable();
            $table->string('mother')->nullable();
            $table->string('profession')->nullable();
            $table->string('color')->nullable();
            $table->string('nicknames')->nullable();
            $table->string('crimeGroup')->nullable();
            $table->string('function')->nullable();
            $table->string('priority')->nullable();
            $table->string('hasCriminalRecords')->nullable();
            $table->string('recordDescription')->nullable();
            $table->string('workArea')->nullable();
            $table->foreignId('city_id')->nullable()->constrained()->onDelete('set null');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('people', function (Blueprint $table) {
            //
        });
    }
};
