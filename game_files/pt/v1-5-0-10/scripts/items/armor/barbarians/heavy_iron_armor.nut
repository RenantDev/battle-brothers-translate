this.heavy_iron_armor <- this.inherit("scripts/items/armor/armor", {
	m = {},
	function create()
	{
		this.armor.create();
		this.m.ID = "armor.body.heavy_iron_armor";
		this.m.Name = "Armadura de ferro pesado";
		this.m.Description = "Esta armadura é feita de placas de metal pesadas, escalas e pedaços de chainmal.A verdadeira armadura de um norte do guerreiro.";
		this.m.SlotType = this.Const.ItemSlot.Body;
		this.m.IsDroppedAsLoot = true;
		this.m.ShowOnCharacter = true;
		this.m.Variant = 95;
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.InventorySound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.Value = 700;
		this.m.Condition = 170;
		this.m.ConditionMax = 170;
		this.m.StaminaModifier = -24;
	}

});

