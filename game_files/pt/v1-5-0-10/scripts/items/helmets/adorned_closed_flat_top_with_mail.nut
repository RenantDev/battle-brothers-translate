this.adorned_closed_flat_top_with_mail <- this.inherit("scripts/items/helmets/helmet", {
	m = {},
	function create()
	{
		this.helmet.create();
		this.m.ID = "armor.head.adorned_closed_flat_top_with_mail";
		this.m.Name = "Top liso fechado adornado";
		this.m.Description = "Um capacete fechado com faceguard completo e e-mail para proteger o pescoço.Fortemente usado do uso extensivo, mas adornado com relíquias e bem conservado.";
		this.m.ShowOnCharacter = true;
		this.m.IsDroppedAsLoot = true;
		this.m.HideHair = true;
		this.m.HideBeard = true;
		this.m.Variant = 238;
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.InventorySound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.Value = 2300;
		this.m.Condition = 250;
		this.m.ConditionMax = 250;
		this.m.StaminaModifier = -15;
		this.m.Vision = -3;
	}

});

