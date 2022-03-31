this.reinforced_leather_tunic <- this.inherit("scripts/items/armor/armor", {
	m = {},
	function create()
	{
		this.armor.create();
		this.m.ID = "armor.body.reinforced_leather_tunic";
		this.m.Name = "Armadura de couro reforçado";
		this.m.Description = "Um casaco preto sinistro usado sobre uma túnica resistente, reforçada com armadura de couro e bracres de ferro.";
		this.m.IsDroppedAsLoot = true;
		this.m.ShowOnCharacter = true;
		this.m.Variant = 112;
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorLeatherImpact;
		this.m.InventorySound = this.Const.Sound.ClothEquip;
		this.m.Value = 410;
		this.m.Condition = 100;
		this.m.ConditionMax = 100;
		this.m.StaminaModifier = -9;
	}

});

