this.lindwurm_armor <- this.inherit("scripts/items/armor/named/named_armor", {
	m = {},
	function create()
	{
		this.named_armor.create();
		this.m.ID = "armor.body.lindwurm_armor";
		this.m.Description = "As escalas resistentes de um feroz lindwurm costurados juntos ontop uma corrente pesada.Não só é um troféu para um grande caçador, mas também desvia o mais feroz dos golpes, e as escalas cintilantes permanecem intocadas por qualquer sangue de Lindwurm.";
		this.m.NameList = [
			"Lindwurm Scales",
			"Dragon\'s Hide",
			"Lizard\'s Coat",
			"Lindwurm Harness",
			"Lindwurm Coat",
			"Wurmscales",
			"Coat of the Lindwurm"
		];
		this.m.Variant = 113;
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.InventorySound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.Value = 7500;
		this.m.Condition = 210;
		this.m.ConditionMax = 210;
		this.m.StaminaModifier = -26;
		this.randomizeValues();
	}

	function getTooltip()
	{
		local result = this.armor.getTooltip();
		result.push({
			id = 6,
			type = "text",
			icon = "ui/icons/special.png",
			text = "Unaffected by acidic Lindwurm blood"
		});
		return result;
	}

	function onEquip()
	{
		this.named_armor.onEquip();
		local c = this.getContainer();

		if (c != null && c.getActor() != null && !c.getActor().isNull())
		{
			this.m.Container.getActor().getFlags().add("body_immune_to_acid");
		}
	}

	function onUnequip()
	{
		local c = this.getContainer();

		if (c != null && c.getActor() != null && !c.getActor().isNull())
		{
			this.m.Container.getActor().getFlags().remove("body_immune_to_acid");
		}

		this.armor.onUnequip();
	}

});

