package blog.distributer;

import system.core.BaseDistributer;


class BlogDist extends BaseDistributer
{
	override function show404(?site:String)
	{
		super.show404("en");
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
		};
		super();
	}

	function siteIndex(?params:Array<String>)
	{
		if(params.length > 0)
		{
			trace("Too many parameters");
			show404();
			return;
		}
		showTemplate("blogs/index");
	}


}
