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
			//setup: 
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



}
