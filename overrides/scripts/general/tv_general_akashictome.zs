import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

#packmode normal simplified
#modloaded akashictome

print(" =================== Akashic Tome =================== ");
print(" ==================================================== ");
/*
	Script just for the "all books included" tome to make it easier
	to see/find/edit/organize things related to just this tome
*/
var completeTome = <akashictome:tome>.withTag(
		{
			"akashictome:data": 
			{
				tconstruct: 
				{
					ForgeCaps: { "astralsorcery:cap_item_amulet_holder": {} }, 
					id: "tconstruct:book", 
					Count: 1 as byte, 
					tag: {"akashictome:definedMod": "tconstruct"}, Damage: 0 as short
				}, 
				industrialforegoing: 
				{
					id: "industrialforegoing:book_manual", 
					Count: 1 as byte, 
					tag: {"akashictome:definedMod": "industrialforegoing"}, 
					Damage: 0 as short
				}, 
				astralsorcery: 
				{
					ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, 
					id: "astralsorcery:itemjournal", 
					Count: 1 as byte, 
					tag: {"akashictome:definedMod": "astralsorcery"}, 
					Damage: 0 as short
				}, 
				conarm: 
				{
					ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, 
					id: "conarm:book", 
					Count: 1 as byte, 
					tag: {"akashictome:definedMod": "conarm"}, 
					Damage: 0 as short
				}, 
				valkyrielib: 
				{
					ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, 
					id: "valkyrielib:guide", 
					Count: 1 as byte, 
					tag: {"akashictome:definedMod": "valkyrielib"}, 
					Damage: 0 as short
				}, 
				roots: 
				{
					ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, 
					id: "patchouli:guide_book", 
					Count: 1 as byte, 
					tag: {"akashictome:definedMod": "roots", "patchouli:book": "roots:roots_guide"}, 
					Damage: 0 as short
				}, 
				rftools: 
				{
					ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, 
					id: "rftoolsdim:rftoolsdim_manual", 
					Count: 1 as byte, 
					tag: {"akashictome:definedMod": "rftools"}, 
					Damage: 0 as short
				}, 
				rftools1: 
				{
					ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, 
					id: "rftools:rftools_shape_manual", 
					Count: 1 as byte, 
					tag: {"akashictome:definedMod": "rftools1"}, 
					Damage: 0 as short
				}, 
				rftools2: 
				{
					ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, 
					id: "rftools:rftools_manual", 
					Count: 1 as byte, 
					tag: {"akashictome:definedMod": "rftools2"}, 
					Damage: 0 as short
				}, 
				botania: 
				{
					ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, 
					id: "botania:lexicon", 
					Count: 1 as byte, 
					tag: {"akashictome:definedMod": "botania"}, 
					Damage: 0 as short
				}, 
				bloodmagic1: 
				{
					ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, 
					id: "guideapi:bloodmagic-guide", 
					Count: 1 as byte, 
					tag: {"akashictome:definedMod": "bloodmagic1"}, 
					Damage: 0 as short
				}, 
				draconicevolution: 
				{
					id: "draconicevolution:info_tablet", 
					Count: 1 as byte, 
					tag: {"akashictome:definedMod": "draconicevolution"}, 
					Damage: 0 as short
				}, 
				extrautils2: 
				{
					ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, 
					id: "extrautils2:book", 
					Count: 1 as byte, 
					tag: {"akashictome:definedMod": "extrautils2"}, 
					Damage: 0 as short
				},
				bloodmagic: 
				{
					ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, 
					id: "bloodmagic:sanguine_book", 
					Count: 1 as byte, 
					tag: {"akashictome:definedMod": "bloodmagic"}, 
					Damage: 0 as short
				}, 
				opencomputers: 
				{
					id: "opencomputers:tool", 
					Count: 1 as byte, 
					tag: {"akashictome:definedMod": "opencomputers"},
					Damage: 4 as short
				}, 
				openblocks: 
				{
					id: "openblocks:info_book",
					Count: 1 as byte, 
					tag: {"akashictome:definedMod": "openblocks"}, 
					Damage: 0 as short}
				}
			}
		);
		
	//add the full book to JEI as it's own entry
	mods.jei.JEI.addItem(completeTome);

	//metadata to item
	completeTome.addTooltip(format.aqua("Contains all basic mod manuals/guides already included"));
	mods.jei.JEI.addDescription(completeTome, "The Akashic tome is a book for your books...",
												  "This recipe of 1 dirt = full book is added by Thermal Vanila to ALREADY contain most/all modded manuals as a convenience for our players");

	//1 dirt = book
	recipes.addShapeless(completeTome, [<minecraft:dirt>]);

	// Starting item
	mods.initialinventory.InvHandler.addStartingItem(completeTome);


//====== Tooltip for added books ======
//
	var addedBooks = [
		<tconstruct:book>, 
		<industrialforegoing:book_manual>, 
		<astralsorcery:itemjournal>, 
		<conarm:book>,
		<rftools:rftools_manual>, 
		<botania:lexicon>, 
		<draconicevolution:info_tablet>, 
		<extrautils2:book>, 
		<guideapi:bloodmagic-guide>, 
		<opencomputers:tool:4>,
		<patchouli:guide_book>.withTag({"patchouli:book": "roots:roots_guide"}),
		<rftoolsdim:rftoolsdim_manual>,
		<rftools:rftools_shape_manual>, 
		<openblocks:info_book>,
		<valkyrielib:guide>,
		] as IItemStack[];

	for itemBook in addedBooks {
		itemBook.addTooltip(format.aqua("Included within the \"default\" Akashic Tome"));
	}

//====== DE/Enderio Tooltip ======
//
	<draconicevolution:info_tablet>.addTooltip(format.aqua("Includes knowledge of Enderio"));