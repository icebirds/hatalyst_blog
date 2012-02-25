package blog.distributer;

import system.core.BaseDistributer;


class MainDist extends BaseDistributer
{
	override function show404(?site:String)
	{
		super.show404("zh");
	}

	public function new()
	{
		uris = 
		{
			defaultpage: this.siteIndex,
			site:
			{
				index: this.siteIndex
			},
			/*admin: {
				//index:this.paramSample,
			}*/
			setup: this.setup,
			install: this.install
		};
		super();
	}


	function siteIndex(?params:Array<String>)
	{
		if(params.length > 0)
		{
			trace("太多參數");
			show404();
			return;
		}
		showTemplate("main/index");
	}

	function setup(?params:Array<String>)
	{
		if(params.length > 0)
		{
			trace("太多参数");
			show404();
			return;
		}
		showTemplate("main/setup");
	}

	function install(?params:Array<String>)
	{
		if(params.length > 0)
		{
			show404();
			return;
		}
		var postData = php.Web.getParams();
		if(Lambda.array(postData).length !=3)
		{
			php.Web.setReturnCode(400);
			php.Lib.print("fuck");
		}

		trace(postData);
	}


}
