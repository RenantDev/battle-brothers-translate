this.khopesh <- this.inherit("scripts/items/weapons/weapon", {
	m = {},
	function create()
	{
		this.weapon.create();
		this.m.ID = "weapon.khopesh";
		this.m.Name = "Escarpa";
		this.m.Description = "Uma antiga espada curva em uma alça longa com ornamentações estranhas.Sua forma torna particularmente eficaz contra armadura.";
		this.m.Categories = "Cleaver, One-Handed";
		this.m.IconLarge = "weapons/melee/kopesh_01.png";
		this.m.Icon = "weapons/melee/kopesh_01_70x70.png";
		this.m.SlotType = this.Const.ItemSlot.Mainhand;
		this.m.ItemType = this.Const.Items.ItemType.Weapon | this.Const.Items.ItemType.MeleeWeapon | this.Const.Items.ItemType.OneHanded;
		this.m.IsDoubleGrippable = true;
		this.m.AddGenericSkill = true;
		this.m.ShowQuiver = false;
		this.m.ShowArmamentIcon = true;
		this.m.ArmamentIcon = "icon_khopesh_01";
		this.m.ShieldDamage = 0;
		this.m.Condition = 42.0;
		this.m.ConditionMax = 42.0;
		this.m.StaminaModifier = -10;
		this.m.Value = 1300;
		this.m.RegularDamage = 35;
		this.m.RegularDamageMax = 55;
		this.m.ArmorDamageMult = 1.2;
		this.m.DirectDamageMult = 0.25;
	}

	function onEquip()
	{
		this.weapon.onEquip();
		this.addSkill(this.new("scripts/skills/actives/cleave"));
		this.addSkill(this.new("scripts/skills/actives/decapitate"));
	}

	function onUpdateProperties( _properties )
	{
		this.weapon.onUpdateProperties(_properties);
	}

});

