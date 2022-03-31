this.hate_greenskins_trait <- this.inherit("scripts/skills/traits/character_trait", {
	m = {},
	function create()
	{
		this.character_trait.create();
		this.m.ID = "trait.hate_greenskins";
		this.m.Name = "Hate for Greenskins";
		this.m.Icon = "ui/traits/trait_icon_52.png";
		this.m.Description = "Some past event in this character\'s life has fueled a burning hatred for all things green and mean.";
		this.m.Titles = [
			"Orcbane"
		];
		this.m.Excluded = [
			"trait.weasel",
			"trait.craven",
			"trait.dastard",
			"trait.fainthearted",
			"trait.fear_greenskins"
		];
	}

	function getTooltip()
	{
		return [
			{
				id = 1,
				type = "title",
				text = this.getName()
			},
			{
				id = 2,
				type = "description",
				text = this.getDescription()
			},
			{
				id = 10,
				type = "text",
				icon = "ui/icons/bravery.png",
				text = "[color=" + this.Const.UI.Color.PositiveValue + "]+10[/color] Resolve when in battle with greenskins"
			}
		];
	}

	function onUpdate( _properties )
	{
		if (!this.getContainer().getActor().isPlacedOnMap())
		{
			return;
		}

		if (this.Tactical.Entities.getInstancesNum(this.World.FactionManager.getFactionOfType(this.Const.FactionType.Orcs).getID()) != 0 || this.Tactical.Entities.getInstancesNum(this.World.FactionManager.getFactionOfType(this.Const.FactionType.Goblins).getID()) != 0)
		{
			_properties.Bravery += 10;
		}
	}

});

