this.monk_robe <- this.inherit("scripts/items/armor/armor", {
	m = {},
	function create()
	{
		this.armor.create();
		this.m.ID = "armor.body.monk_robe";
		this.m.Name = "Robe de monge";
		this.m.Description = "Um robe robusto, grande feito de pano simples geralmente usado por monges e indivíduos semelhantes que não se importam com a moda.";
		this.m.IsDroppedAsLoot = true;
		this.m.ShowOnCharacter = true;
		this.m.Variant = 11;
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorLeatherImpact;
		this.m.InventorySound = this.Const.Sound.ClothEquip;
		this.m.Value = 45;
		this.m.Condition = 20;
		this.m.ConditionMax = 20;
		this.m.StaminaModifier = 0;
	}

});

