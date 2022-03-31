this.fangshire <- this.inherit("scripts/items/helmets/helmet", {
	m = {},
	function create()
	{
		this.helmet.create();
		this.m.ID = "armor.head.fangshire";
		this.m.Name = "O Fang Shire";
		this.m.Description = "O fangshire é um crânio do norte do tigre que aninha os rostos de homens profundamente e obscuramente atrás de duas presas ferozes.Originalmente desgastado por Bjarund The Beastman, um feroz um atacante norte, incutiu o medo nos corações de seus inimigos quando ele passou a raques sangrentos e queimou muitas aldeias ao longo do litoral.Quando Bjarund foi finalmente morto, Fangshire foi tomado como um troféu e foi mais para o sul.Rumores proclamam que seus olhos de usuário brilham um amarelo afiado, permitindo que eles vejam durante a noite.";
		this.m.ShowOnCharacter = true;
		this.m.IsDroppedAsLoot = true;
		this.m.HideHair = true;
		this.m.HideBeard = false;
		this.m.IsIndestructible = true;
		this.m.Variant = 24;
		this.updateVariant();
		this.m.ImpactSound = [
			"sounds/enemies/skeleton_hurt_03.wav"
		];
		this.m.Value = 300;
		this.m.Condition = 60;
		this.m.ConditionMax = 60;
		this.m.StaminaModifier = -5;
		this.m.ItemType = this.m.ItemType | this.Const.Items.ItemType.Legendary;
	}

	function getTooltip()
	{
		local result = this.helmet.getTooltip();
		result.push({
			id = 6,
			type = "text",
			icon = "ui/icons/vision.png",
			text = "Allows the wearer to see at night and negates any penalties due to nighttime."
		});
		return result;
	}

	function onUpdateProperties( _properties )
	{
		this.helmet.onUpdateProperties(_properties);
		_properties.IsAffectedByNight = false;
	}

});

