this.wizard_robe <- this.inherit("scripts/items/armor/armor", {
	m = {},
	function create()
	{
		this.armor.create();
		this.m.ID = "armor.body.wizard_robe";
		this.m.Name = "Robe do mago";
		this.m.Description = "Uma coverd de roupão de pano em todos os tipos de ornamentos e símbolos místicos.";
		this.m.IsDroppedAsLoot = true;
		this.m.ShowOnCharacter = true;
		this.m.Variant = 12;
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorLeatherImpact;
		this.m.InventorySound = this.Const.Sound.ClothEquip;
		this.m.Value = 60;
		this.m.Condition = 20;
		this.m.ConditionMax = 20;
		this.m.StaminaModifier = 0;
	}

});

