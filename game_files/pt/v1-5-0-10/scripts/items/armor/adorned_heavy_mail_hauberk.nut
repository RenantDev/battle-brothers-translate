this.adorned_heavy_mail_hauberk <- this.inherit("scripts/items/armor/armor", {
	m = {},
	function create()
	{
		this.armor.create();
		this.m.ID = "armor.body.adorned_heavy_mail_hauberk";
		this.m.Name = "Adorned Heavy Mail Hauberk";
		this.m.Description = "Um pesado Chainmail Hauberk usado sob uma coleta rebitada espessa e reforçada com Vambraces.Adornado com troféus e cuidadosamente mantidos apesar de seu uso extensivo, esta é a armadura de um verdadeiro cavaleiro de busca.";
		this.m.SlotType = this.Const.ItemSlot.Body;
		this.m.IsDroppedAsLoot = true;
		this.m.ShowOnCharacter = true;
		this.m.Variant = 109;
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorChainmailImpact;
		this.m.InventorySound = this.Const.Sound.ArmorChainmailImpact;
		this.m.Value = 6800;
		this.m.Condition = 300;
		this.m.ConditionMax = 300;
		this.m.StaminaModifier = -34;
	}

});

