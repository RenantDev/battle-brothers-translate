this.named_undead_kite_shield <- this.inherit("scripts/items/shields/named/named_shield", {
	m = {},
	function create()
	{
		this.named_shield.create();
		this.m.Variant = this.Math.rand(1, 3);
		this.updateVariant();
		this.m.ID = "shield.named_undead_kite_shield";
		this.m.NameList = this.Const.Strings.ShieldNames;
		this.m.Description = "Um escudo de madeira alongado que oferece boa proteção também para a parte inferior do corpo, apesar de sua aparente idade.Um pouco volumoso para lidar com engajamentos de combate próximos.";
		this.m.AddGenericSkill = true;
		this.m.ShowOnCharacter = true;
		this.m.Value = 700;
		this.m.MeleeDefense = 15;
		this.m.RangedDefense = 25;
		this.m.StaminaModifier = -16;
		this.m.Condition = 48;
		this.m.ConditionMax = 48;
		this.randomizeValues();
	}

	function updateVariant()
	{
		this.m.Sprite = "shield_undead_02_named_0" + this.m.Variant;
		this.m.SpriteDamaged = "shield_undead_02_named_0" + this.m.Variant + "_damaged";
		this.m.ShieldDecal = "shield_undead_02_named_0" + this.m.Variant + "_destroyed";
		this.m.IconLarge = "shields/inventory_undead_shield_02_named_0" + this.m.Variant + ".png";
		this.m.Icon = "shields/icon_undead_shield_02_named_0" + this.m.Variant + ".png";
	}

	function onEquip()
	{
		this.named_shield.onEquip();
		this.addSkill(this.new("scripts/skills/actives/shieldwall"));
		this.addSkill(this.new("scripts/skills/actives/knock_back"));
	}

});

