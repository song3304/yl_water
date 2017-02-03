<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateWatersTable extends Migration
{
	/**
	 * Run the migrations.
	 *
	 * @return  void
	 */
	public function up()
	{
		// 用户交费地址
		Schema::create('user_addresses', function (Blueprint $table) {
			$table->increments('id');
			$table->integer('user_id')->unsigned()->comment = '用户ID';
			$table->string('account_num',20)->nullable()->comment = '户号';
			$table->string('account_name',50)->nullable()->comment = '户名';
			$table->string('account_address')->nullable()->comment = '住址信息';
			$table->string('account_phone',20)->nullable()->comment = '预留电话';
			$table->timestamps();
			$table->softDeletes(); //软删除
			
			$table->foreign('user_id')->references('id')->on('users')
			->onUpdate('cascade')->onDelete('cascade');
		});

		// 交费订单
		Schema::create('pay_orders', function (Blueprint $table) {
		    $table->increments('id');
			$table->integer('user_id')->unsigned()->comment = '用户ID';
			$table->integer('address_id')->unsigned()->comment = '地址ID';
			$table->string('account_num',20)->nullable()->comment = '户号';
			$table->string('account_name',50)->nullable()->comment = '户名';
			$table->string('account_address')->nullable()->comment = '住址信息';
			$table->string('account_phone',20)->nullable()->comment = '预留电话';
			$table->decimal('sumMoney', 16, 2)->index()->comment = '交费总金额';
			$table->tinyInteger('status')->index()->comment = '订单状态';
			$table->tinyInteger('pay_type')->default(0)->index()->comment = '支付方式，0, 未支付，1.线下支付 2.支付宝 3.微信支付 4.农商银行';
			$table->string('out_trade_no',50)->nullable()->index()->commnet='对外支付订单号';
			$table->string('order_log',50)->nullable()->comment = '充值未成功,日志';
			
			$table->timestamps();
			$table->softDeletes(); //软删除
			$table->foreign('address_id')->references('id')->on('user_addresses')
			->onUpdate('cascade')->onDelete('cascade');
		});
        //订单重复支付
		Schema::create('repay_logs', function (Blueprint $table) {
		    $table->increments('id');
		    $table->integer('order_id')->unsigned()->comment = '订单id';
		    $table->string('order_log',50)->commnet='重复支付日志';
		    
		    $table->timestamps();
		    $table->softDeletes(); //软删除
		    $table->foreign('order_id')->references('id')->on('pay_orders')
		        ->onUpdate('cascade')->onDelete('cascade');
		});
        
		//通知
		Schema::create('notices', function (Blueprint $table) {
			$table->increments('id');
			$table->string('title',150)->unique()->comment = '标题';
			$table->text('contents')->nullable()->comment = '通知内容';
			$table->timestamps();
		});

		//常见问题
		Schema::create('articles', function (Blueprint $table) {
			$table->increments('id');
			$table->string('title',150)->comment = '问题标题';
			$table->unsignedInteger('pic_id')->default(0)->comment = '文章图片';
			$table->text('contents')->nullable()->comment = '问题内容';
			$table->tinyInteger('type')->index()->default(0)->comment = '文章类型 0.常见问题 1:公司简介 2.公司资讯 ';
			$table->timestamps();
		});

		//咨询解答
		Schema::create('questions', function (Blueprint $table) {
			$table->increments('id');
			$table->integer('user_id')->unsigned()->comment = '用户ID';
			$table->text('content')->nullable()->comment = '内容';
			
			$table->unsignedInteger('pid')->index()->comment = '父级id'; //父级id
			$table->unsignedInteger('order')->default(0)->index()->comment = 'TREE排序';
			$table->unsignedInteger('level')->default(0)->index()->comment = 'TREE等级';
			$table->string('path', '250')->index()->comment = 'TREE路径';
			$table->timestamps();
			$table->softDeletes(); //软删除
			
			$table->foreign('user_id')->references('id')->on('users')
				->onUpdate('cascade')->onDelete('cascade');
		});
		
		//支付宝日志
		Schema::create('alipay_bills', function (Blueprint $table) {
		    $table->increments('id');
		    $table->string('order_id',64)->comment='商户订单号';
		    $table->timestamp('notify_time')->nullable()->comment = '通知时间';
		    $table->string('notify_type', 25)->comment = '通知类型';
		    $table->string('notify_id', 64)->comment = '通知校验ID ';
		    $table->string('out_trade_no', 64)->comment = '商户网站唯一订单号 ';
		    $table->string('subject', 128)->nullable()->comment = '商品名称';
		    $table->string('out_biz_no', 64)->comment = '商户业务号';
		    $table->string('trade_no', 64)->comment = '支付宝交易号';
		    $table->string('trade_status', 20)->nullable()->comment = '交易状态 ';
		    $table->string('seller_id', 30)->comment = '卖家支付宝用户号';
		    $table->string('seller_email', 100)->nullable()->comment = '卖家支付宝账号';
		    $table->string('buyer_id', 30)->nullable()->comment = '买家支付宝用户号';
		    $table->string('buyer_logon_id', 100)->comment = '买家支付宝账号';
		    $table->decimal('total_amount',16,2)->comment = '订单总金额';
		    $table->decimal('receipt_amount',16,2)->comment = '实收金额';
		    $table->decimal('buyer_pay_amount', 16,2)->comment = '付款金额';
		    $table->string('body',512)->nullable()->comment = '商品描述 ';
		    $table->timestamp('gmt_create')->nullable()->comment = '交易创建时间 ';
		    $table->timestamp('gmt_payment')->nullable()->comment = '交易付款时间';
		    $table->decimal('point_amount', 16,2)->comment = '集分宝金额';
		    $table->string('fund_bill_list', 512)->comment = '支付金额信息';
		    $table->string('voucher_detail_list', 512)->comment = '优惠券信息';
		    $table->timestamps();
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return  void
	 */
	public function down()
	{
		Schema::drop('user_addresses');
		Schema::drop('pay_orders');
		Schema::drop('notices');
		Schema::drop('articles');
		Schema::drop('questions');
		Schema::drop('alipay_bills');
	}
}
