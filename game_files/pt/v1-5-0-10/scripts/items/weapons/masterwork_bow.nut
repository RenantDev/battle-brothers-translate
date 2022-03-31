this.masterwork_bow <- this.inherit("scripts/items/weapons/weapon", {
	m = {},
	function create()
	{
		this.weapon.create();
		this.m.ID = "weapon.masterwork_bow";
		this.m.Name = "Arco principal";
		this.m.Description = "Um arco finamente trabalhado, luz no aperto e perfeitamente equilibrada para precisão.Construído a partir de diferentes madeiras, tem cores desta árvore e que espiral através da curva da arma, parecendo arbórea damasced.Verdadeiramente o trabalho de um mestre Bowyer.";
		this.m.Categories = "Bow, Two-Handed";
		this.m.IconLarge = "weapons/ranged/bow_03.png";
		this.m.Icon = "weapons/ranged/bow_03_70x70.png";
		this.m.SlotType = this.Const.ItemSlot.Mainhand;
		this.m.BlockedSlotType = this.Const.ItemSlot.Offhand;
		this.m.ItemType = this.Const.Items.ItemType.Weapon | this.Const.Items.ItemType.RangedWeapon;
		this.m.EquipSound = this.Const.Sound.ArmorLeatherImpact;
		this.m.AddGenericSkill = true;
		this.m.ShowQuiver = true;
		this.m.ShowArmamentIcon = true;
		this.m.ArmamentIcon = "icon_event_bow_01";
		this.m.Value = 3500;
		this.m.RangeMin = 2;
		this.m.RangeMax = 7;
		this.m.RangeIdeal = 7;
		this.m.StaminaModifier = -6;
		this.m.Condition = 110.0;
		this.m.ConditionMax = 110.0;
		this.m.RegularDamage = 50;
		this.m.RegularDamageMax = 75;
		this.m.ArmorDamageMult = 0.65;
		this.m.DirectDamageMult = 0.35;
		this.m.AdditionalAccuracy = 5;
	}

	function getAmmoID()
	{
		return "ammo.arrows";
	}

	function getAdditionalRange( _actor )
	{
		return _actor.getCurrentProperties().IsSpecializedInBows ? 1 : 0;
	}

	function onEquip()
	{
		this.weapon.onEquip();
		local quick_shot = this.new("scripts/skills/actives/quick_shot");
		this.addSkill(quick_shot);
		local aimed_shot = this.new("scripts/skills/actives/aimed_shot");
		this.addSkill(aimed_shot);
	}

	function onSerialize( _out )
	{
		this.weapon.onSerialize(_out);
		_out.writeString(this.m.Name);
	}

	function onDeserialize( _in )
	{
		this.weapon.onDeserialize(_in);
		this.m.Name = _in.readString();
	}

});

