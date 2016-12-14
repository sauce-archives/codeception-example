<?php
$capabilities = $scenario->current('capabilities');
codecept_debug($capabilities);
$I = new AcceptanceTester($scenario);
$I->wantTo('ensure that frontpage works');
$I->amOnPage('/');
$I->see('Google')
?>