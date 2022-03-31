this.apron <- this.inherit("scripts/items/armor/armor", {
	m = {},
	function create()
	{
		this.armor.create();
		this.m.ID = "armor.body.apron";
		this.m.Name = "Avental";
		this.m.Description = "Um avental de couro geralmente usado por aprendizes e artesãos.";
		this.m.IsDroppedAsLoot = true;
		this.m.ShowOnCharacter = true;
		this.m.Variant = 10;
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorLeatherImpact;
		this.m.InventorySound = this.Const.Sound.ClothEquip;
		this.m.Value = 55;
		this.m.Condition = 25;
		this.m.ConditionMax = 25;
		this.m.StaminaModifier = 0;
	}

});

