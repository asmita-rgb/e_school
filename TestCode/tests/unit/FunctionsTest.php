<?php

class FunctionsTest extends \PHPUnit\Framework\TestCase

{
	public function testGetLastID($id,$table)
	{
		$this->assertEquals($this->functions->getLastID($id,$table), 1);
	}

    public function testGetCountID($idnum,$id,$table)
	{
		$this->assertEquals($this->functions->getCountID($idnum,$id,$table), 5);
	}

    public function testGetSalesTotal($orderID)
	{
		$this->assertEquals($this->functions->getSalesTotal($orderID), 20000);
	}

    public function testGetSalesGrandTotal($duration)
	{
		$this->assertEquals($this->functions->getSalesGrandTotal($duration), 80000);
	}

    public function testUpdateTotal($orderID)
	{
		$this->assertEquals($this->functions->updateTotal($orderID), "updated");
	}

    public function testInsertOrderDetailQuery($orderID,$itemID,$quantity,$user_id)
	{
		$this->assertEquals($this->functions->insertOrderDetailQuery($orderID,$itemID,$quantity,$user_id), "inserted.");
	}

    public function testInsertOrderQuery($orderID)
	{
		$this->assertEquals($this->functions->insertOrderQuery($orderID), "inserted.");
	}
}