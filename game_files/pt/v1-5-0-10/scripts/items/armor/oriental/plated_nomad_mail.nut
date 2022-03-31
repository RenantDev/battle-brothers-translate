this.plated_nomad_mail <- this.inherit("scripts/items/armor/armor", {
	m = {},
	function create()
	{
		this.armor.create();
		this.m.ID = "armor.body.plated_nomad_mail";
		this.m.Name = "Mail do Nomad Plated.";
		this.m.Description = "Um email ligeiramente desgastado, fino e leve com placas de metal adicionais enxertadas sobre ele.";
		this.m.IsDroppedAsLoot = true;
		this.m.ShowOnCharacter = true;
		this.m.VariantString = "body_southern";
		this.m.Variant = 15;
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorChainmailImpact;
		this.m.InventorySound = this.Const.Sound.ArmorChainmailImpact;
		this.m.Value = 350;
		this.m.Condition = 105;
		this.m.ConditionMax = 105;
		this.m.StaminaModifier = -11;
	}

});

