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
        Schema::table('occurrences', function (Blueprint $table) {
            $table->string('type');
            $table->string('opm');
            $table->foreignId('city_id')->nullable()->constrained()->onDelete('set null');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('occurrences', function (Blueprint $table) {
            $table->dropForeign(['city_id']);
            $table->dropColumn('type');
            $table->dropColumn('opm');
            $table->dropColumn('city_id');
        });
    }
};
