<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateJobsTable extends Migration
{
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('jobs', function (Blueprint $table) {
			$table->bigIncrements('id');
			$table->string('queue');
			$table->longText('payload');
			$table->tinyInteger('attempts')->unsigned();
			$table->tinyInteger('reserved')->unsigned();
			$table->unsignedInteger('reserved_at')->nullable();
			$table->unsignedInteger('available_at');
			$table->unsignedInteger('created_at');
			$table->index(['queue', 'reserved', 'reserved_at']);
		});

		Schema::create('failed_jobs', function (Blueprint $table) {
			$table->increments('id');
			$table->text('connection');
			$table->text('queue');
			$table->longText('payload');
			$table->timestamp('failed_at');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('jobs');
		Schema::drop('failed_jobs');
	}
}