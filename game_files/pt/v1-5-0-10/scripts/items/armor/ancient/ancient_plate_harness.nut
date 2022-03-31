this.ancient_plate_harness <- this.inherit("scripts/items/armor/armor", {
	m = {},
	function create()
	{
		this.armor.create();
		this.m.ID = "armor.body.ancient_plate_harness";
		this.m.Name = "Chicote de placa antiga";
		this.m.Description = "Feito de placas de metal espessas e correio, esta pesada armadura antiga ainda oferece grande proteção após inúmeros anos.É crosted e podre em partes, no entanto, limitando severamente a mobilidade do usuário.";
		this.m.SlotType = this.Const.ItemSlot.Body;
		this.m.IsDroppedAsLoot = true;
		this.m.ShowOnCharacter = true;
		this.m.Variant = 67;
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.InventorySound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.Value = 2800;
		this.m.Condition = 200;
		this.m.ConditionMax = 200;
		this.m.StaminaModifier = -28;
	}

});

