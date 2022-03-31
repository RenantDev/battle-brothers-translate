this.lamellar_harness <- this.inherit("scripts/items/armor/armor", {
	m = {},
	function create()
	{
		this.armor.create();
		this.m.ID = "armor.body.lamellar_harness";
		this.m.Name = "Chicote lamelar";
		this.m.Description = "Uma armadura corporal feita de espessas placas de metal sobrepostas que cobrem a maior parte da parte superior do corpo.";
		this.m.SlotType = this.Const.ItemSlot.Body;
		this.m.IsDroppedAsLoot = true;
		this.m.ShowOnCharacter = true;
		this.m.Variant = 88;
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.InventorySound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.Value = 3000;
		this.m.Condition = 230;
		this.m.ConditionMax = 230;
		this.m.StaminaModifier = -30;
	}

});

