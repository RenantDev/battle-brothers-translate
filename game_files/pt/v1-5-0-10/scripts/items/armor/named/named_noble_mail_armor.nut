this.named_noble_mail_armor <- this.inherit("scripts/items/armor/named/named_armor", {
	m = {},
	function create()
	{
		this.named_armor.create();
		this.m.ID = "armor.body.named_noble_mail_armor";
		this.m.Description = "Esta peça de armadura de correio de luz já foi o item pessoal de um conhecido mestre de esgrima.É tão leve quanto uma túnica, mas protege todas as partes do corpo vital.";
		this.m.NameList = [
			"Reinforced Mail",
			"Nightcloak",
			"Noble Mail",
			"Fencing Mail"
		];
		this.m.Variant = 99;
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorChainmailImpact;
		this.m.InventorySound = this.Const.Sound.ArmorChainmailImpact;
		this.m.Value = 5500;
		this.m.Condition = 160;
		this.m.ConditionMax = 160;
		this.m.StaminaModifier = -15;
		this.randomizeValues();
	}

});

