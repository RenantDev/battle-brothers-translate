this.mask_of_davkul <- this.inherit("scripts/items/helmets/helmet", {
	m = {},
	function create()
	{
		this.helmet.create();
		this.m.ID = "armor.head.mask_of_davkul";
		this.m.Name = "Vislumbre de Davkul.";
		this.m.Description = "O vislumbre de Davkul é um presente concedido ao homem por poderes antigos e escuros, um capacete fundido com pele humana e ossos através dos mais indescritíveis de rituais.Um vislumbre de um futuro onde o homem se tornará um com criações de um reino além.Nunca deve quebrar, mas, em vez disso, ressaltar sua pele cicatrizada no local.";
		this.m.ShowOnCharacter = true;
		this.m.IsDroppedAsLoot = true;
		this.m.HideHair = true;
		this.m.HideBeard = true;
		this.m.HideCharacterHead = true;
		this.m.HideCorpseHead = true;
		this.m.IsIndestructible = true;
		this.m.Variant = 85;
		this.updateVariant();
		this.m.ImpactSound = [
			"sounds/combat/cleave_hit_hitpoints_01.wav",
			"sounds/combat/cleave_hit_hitpoints_02.wav",
			"sounds/combat/cleave_hit_hitpoints_03.wav"
		];
		this.m.Value = 20000;
		this.m.Condition = 270.0;
		this.m.ConditionMax = 270.0;
		this.m.StaminaModifier = -10;
		this.m.ItemType = this.m.ItemType | this.Const.Items.ItemType.Legendary;
	}

	function getTooltip()
	{
		local result = this.helmet.getTooltip();
		result.push({
			id = 6,
			type = "text",
			icon = "ui/icons/special.png",
			text = "Regenerates itself by [color=" + this.Const.UI.Color.PositiveValue + "]90[/color] points of durability each turn."
		});
		return result;
	}

	function onTurnStart()
	{
		this.m.Condition = this.Math.minf(this.m.ConditionMax, this.m.Condition + 90.0);
		this.updateAppearance();
	}

	function onCombatFinished()
	{
		this.m.Condition = this.m.ConditionMax;
		this.updateAppearance();
	}

});

