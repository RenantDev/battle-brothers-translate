this.thick_plated_barbarian_armor <- this.inherit("scripts/items/armor/armor", {
	m = {},
	function create()
	{
		this.armor.create();
		this.m.ID = "armor.body.thick_plated_barbarian_armor";
		this.m.Name = "Armadura Bárbara Banhada Espessa";
		this.m.Description = "Uma armadura pesada que é feita da maioria metal.Apenas um escolhido pelos ancestrais possuirá um conjunto como este.";
		this.m.SlotType = this.Const.ItemSlot.Body;
		this.m.IsDroppedAsLoot = true;
		this.m.ShowOnCharacter = true;
		this.m.Variant = 96;
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.InventorySound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.Value = 1200;
		this.m.Condition = 230;
		this.m.ConditionMax = 230;
		this.m.StaminaModifier = -35;
	}

});

