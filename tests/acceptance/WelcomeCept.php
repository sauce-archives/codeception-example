<?php
$capabilities = $scenario->current('capabilities');
print_r($capabilities);
codecept_debug($capabilities);

$I = new AcceptanceTester($scenario);
$I->wantTo('ensure that frontpage works');
$I->amOnPage('/');
$I->waitForText('Google', 60); // secs
?>