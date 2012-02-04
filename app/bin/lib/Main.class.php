<?php

class Main {
	public function __construct() { if(!php_Boot::$skip_constructor) {
		$hostName = $_SERVER['SERVER_NAME'];
		$r = new EReg("^.+\\.bloghost", "");
		if($hostName === "bloghost") {
			_hx_deref(new app_distributer_ZhDist())->distribute();
		} else {
			if($r->match($hostName)) {
				_hx_deref(new app_distributer_EnDist())->distribute();
			}
		}
	}}
	static $urlRule;
	static $temp_dir = "lib/app/templates/";
	static $err_dir = "lib/app/errors/";
	static function main() {
		new Main();
	}
	function __toString() { return 'Main'; }
}
Main::$urlRule = new EReg("^/index.php/|^/index.php|^/|.html\$", "g");
