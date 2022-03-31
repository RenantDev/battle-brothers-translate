this.broken_bladed_pike <- this.inherit("scripts/items/weapons/weapon", {
	m = {},
	function create()
	{
		this.weapon.create();
		this.m.ID = "weapon.broken_bladed_pike";
		this.m.Name = "Pike de pique antigo quebrado";
		this.m.Description = "Um lúcido pique com uma ponta quebrada.Nem todas as armas são o teste do tempo.Uma vez usado para atacar a alguma distância e manter o inimigo à distância.";
		this.m.Categories = "Polearm, Two-Handed";
		this.m.IconLarge = "weapons/melee/broken_pike_01.png";
		this.m.Icon = "weapons/melee/broken_pike_01_70x70.png";
		this.m.SlotType = this.Const.ItemSlot.Mainhand;
		this.m.BlockedSlotType = this.Const.ItemSlot.Offhand;
		this.m.ItemType = this.Const.Items.ItemType.Weapon | this.Const.Items.ItemType.MeleeWeapon | this.Const.Items.ItemType.TwoHanded | this.Const.Items.ItemType.Defensive;
		this.m.AddGenericSkill = true;
		this.m.ShowQuiver = false;
		this.m.ShowArmamentIcon = true;
		this.m.ArmamentIcon = "icon_bladed_pike_02";
		this.m.Value = 350;
		this.m.ShieldDamage = 0;
		this.m.Condition = 26.0;
		this.m.ConditionMax = 26.0;
		this.m.StaminaModifier = -12;
		this.m.RangeMin = 1;
		this.m.RangeMax = 2;
		this.m.RangeIdeal = 2;
		this.m.RegularDamage = 35;
		this.m.RegularDamageMax = 55;
		this.m.ArmorDamageMult = 0.8;
		this.m.DirectDamageMult = 0.3;
		this.m.ChanceToHitHead = 5;
	}

	function onEquip()
	{
		this.weapon.onEquip();
		local impale = this.new("scripts/skills/actives/impale");
		impale.m.Icon = "skills/active_54.png";
		impale.m.IconDisabled = "skills/active_54_sw.png";
		impale.m.Overlay = "active_54";
		this.addSkill(impale);
		this.addSkill(this.new("scripts/skills/actives/repel"));
	}

});

