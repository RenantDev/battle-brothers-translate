this.emperors_countenance <- this.inherit("scripts/items/helmets/helmet", {
	m = {},
	function create()
	{
		this.helmet.create();
		this.m.ID = "armor.head.emperors_countenance";
		this.m.Name = "O semente do imperador";
		this.m.Description = "Um capacete de ouro e facemak, mostrando a visão de um imperador de uma idade passada, imbuída de energias místicas.Quando você segura a luz, quase parece que o rosto estava se movendo e fazendo expressões de desgosto.";
		this.m.ShowOnCharacter = true;
		this.m.IsDroppedAsLoot = true;
		this.m.HideHair = true;
		this.m.HideBeard = true;
		this.m.HideCharacterHead = true;
		this.m.HideCorpseHead = true;
		this.m.IsIndestructible = true;
		this.m.Variant = 84;
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.InventorySound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.Value = 20000;
		this.m.Condition = 400.0;
		this.m.ConditionMax = 400.0;
		this.m.StaminaModifier = -20;
		this.m.ItemType = this.m.ItemType | this.Const.Items.ItemType.Legendary;
	}

	function getTooltip()
	{
		local result = this.helmet.getTooltip();
		result.push({
			id = 6,
			type = "text",
			icon = "ui/icons/special.png",
			text = "Reflects [color=" + this.Const.UI.Color.PositiveValue + "]25%[/color] of damage taken in melee back to the attacker"
		});
		return result;
	}

	function onDamageReceived( _damage, _fatalityType, _attacker )
	{
		this.helmet.onDamageReceived(_damage, _fatalityType, _attacker);

		if (_attacker != null && _attacker.isAlive() && _attacker.getHitpoints() > 0 && _attacker.getID() != this.getContainer().getActor().getID() && _attacker.getTile().getDistanceTo(this.getContainer().getActor().getTile()) == 1 && !_attacker.getCurrentProperties().IsImmuneToDamageReflection)
		{
			local hitInfo = clone this.Const.Tactical.HitInfo;
			hitInfo.DamageRegular = this.Math.maxf(1.0, _damage * 0.25);
			hitInfo.DamageArmor = this.Math.maxf(1.0, _damage * 0.25);
			hitInfo.DamageDirect = 0.0;
			hitInfo.BodyPart = this.Const.BodyPart.Head;
			hitInfo.BodyDamageMult = 1.0;
			hitInfo.FatalityChanceMult = 0.0;
			_attacker.onDamageReceived(_attacker, null, hitInfo);
		}
	}

});

