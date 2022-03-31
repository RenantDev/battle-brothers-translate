this.faction_helm <- this.inherit("scripts/items/helmets/helmet", {
	m = {},
	function create()
	{
		this.helmet.create();
		this.m.ID = "armor.head.faction_helm";
		this.m.Name = "Decorado com leme completo";
		this.m.Description = "Um leme de metal fechado com buracos respiratórios e decoração intrincada ontop.Ótimo no caminho da proteção, uma peça de arte para evinar, mas difícil respirar e limitar o campo de visão.";
		this.m.ShowOnCharacter = true;
		this.m.HideCharacterHead = true;
		this.m.HideCorpseHead = true;
		this.m.HideHair = true;
		this.m.HideBeard = true;
		this.m.IsDroppedAsLoot = true;
		this.m.Variant = 1;
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.InventorySound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.Value = 4000;
		this.m.Condition = 320;
		this.m.ConditionMax = 320;
		this.m.StaminaModifier = -21;
		this.m.Vision = -3;
	}

	function updateVariant()
	{
		local variant = this.m.Variant > 9 ? this.m.Variant : "0" + this.m.Variant;
		this.m.Sprite = "faction_helmet_" + variant;
		this.m.SpriteDamaged = "faction_helmet_" + variant + "_damaged";
		this.m.SpriteCorpse = "faction_helmet_" + variant + "_dead";
		this.m.IconLarge = "";
		this.m.Icon = "helmets/inventory_faction_helmet_" + variant + ".png";
	}

});

