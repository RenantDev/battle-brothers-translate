this.mouth_piece <- this.inherit("scripts/items/helmets/helmet", {
	m = {},
	function create()
	{
		this.helmet.create();
		this.m.ID = "armor.head.witchhunter_hat";
		this.m.Name = "Peça de boca";
		this.m.Description = "Um pedaço de pano cobrindo a face inferior para proteger de respirar a poeira ou evitar a identificação.";
		this.m.ShowOnCharacter = true;
		this.m.IsDroppedAsLoot = true;
		this.m.HideHair = false;
		this.m.HideBeard = true;
		this.m.ReplaceSprite = true;
		local variants = [
			28,
			45,
			46,
			47
		];
		this.m.Variant = variants[this.Math.rand(0, variants.len() - 1)];
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorLeatherImpact;
		this.m.InventorySound = this.Const.Sound.ClothEquip;
		this.m.Value = 15;
		this.m.Condition = 10;
		this.m.ConditionMax = 10;
		this.m.StaminaModifier = 0;
	}

});

