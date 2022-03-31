this.decayed_full_helm <- this.inherit("scripts/items/helmets/helmet", {
	m = {},
	function create()
	{
		this.helmet.create();
		this.m.ID = "armor.head.decayed_full_helm";
		this.m.Name = "Helm completo decaído";
		this.m.Description = "Este leme completo sofre de peças de metal enferrujadas e inlays de couro frágil, mas ainda oferece boa proteção se você ignorar seu fedor.";
		this.m.ShowOnCharacter = true;
		this.m.HideCharacterHead = true;
		this.m.HideCorpseHead = true;
		this.m.HideHair = true;
		this.m.HideBeard = true;
		this.m.IsDroppedAsLoot = true;
		local variants = [
			56,
			59,
			60,
			61
		];
		this.m.Variant = variants[this.Math.rand(0, variants.len() - 1)];
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.InventorySound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.Value = 1500;
		this.m.Condition = 240;
		this.m.ConditionMax = 240;
		this.m.StaminaModifier = -20;
		this.m.Vision = -3;
	}

});

