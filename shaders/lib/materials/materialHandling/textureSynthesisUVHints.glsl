// uv offsets

#define NUM_NORMAL_BLOCKS 285
#define NUM_4BRICKS_BLOCKS 5
#define NUM_2BRICKS_BLOCKS 13
#define BLR_BLOCKS 12
#define BORDER_LESS_BLOCKS 27
#define ROTATE_BLOCKS 110


// Define UV offsets for each block category
const vec2 normalBlockOffsets[NUM_NORMAL_BLOCKS] = vec2[NUM_NORMAL_BLOCKS](
    vec2(336.0, 416.0),
    vec2(448.0, 128.0),
    vec2(448.0, 144.0),
    vec2(32.0, 80.0),
vec2(48.0, 80.0),
vec2(80.0, 80.0),
vec2(48.0, 96.0),
vec2(80.0, 96.0),
vec2(112.0, 96.0),
vec2(64.0, 112.0),
vec2(128.0, 16.0),
vec2(128.0, 32.0),
vec2(128.0, 80.0),
vec2(128.0, 96.0),
vec2(128.0, 112.0),
vec2(144.0, 0.0),
vec2(144.0, 48.0),
vec2(144.0, 112.0),
vec2(160.0, 32.0),
vec2(160.0, 80.0),
vec2(160.0, 96.0),
vec2(176.0, 0.0),
vec2(208.0, 112.0),
vec2(224.0, 0.0),
vec2(224.0, 32.0),
vec2(224.0, 48.0),
vec2(224.0, 80.0),
vec2(224.0, 96.0),
vec2(224.0, 112.0),
vec2(240.0, 0.0),
vec2(240.0, 80.0),
vec2(240.0, 96.0),
vec2(240.0, 112.0),
vec2(0.0, 128.0),
vec2(112.0, 128.0),
vec2(128.0, 128.0),
vec2(160.0, 128.0),
vec2(240.0, 128.0),
vec2(0.0, 144.0),
vec2(16.0, 144.0),
vec2(48.0, 144.0),
vec2(80.0, 144.0),
vec2(192.0, 144.0),
vec2(208.0, 144.0),
vec2(0.0, 160.0),
vec2(64.0, 160.0),
vec2(80.0, 160.0),
vec2(112.0, 160.0),
vec2(144.0, 192.0),
vec2(160.0, 192.0),
vec2(176.0, 192.0),
vec2(192.0, 192.0),
vec2(64.0, 208.0),
vec2(80.0, 208.0),
vec2(112.0, 208.0),
vec2(224.0, 224.0),
vec2(240.0, 224.0),
vec2(0.0, 240.0),
vec2(32.0, 240.0),
vec2(64.0, 240.0),
vec2(80.0, 240.0),
vec2(96.0, 240.0),
vec2(288.0, 128.0),
vec2(288.0, 144.0),
vec2(288.0, 160.0),
vec2(304.0, 16.0),
vec2(304.0, 32.0),
vec2(304.0, 48.0),
vec2(304.0, 96.0),
vec2(304.0, 144.0),
vec2(304.0, 176.0),
vec2(304.0, 192.0),
vec2(304.0, 240.0),
vec2(320.0, 0.0),
vec2(320.0, 80.0),
vec2(320.0, 96.0),
vec2(320.0, 176.0),
vec2(320.0, 192.0),
vec2(320.0, 224.0),
vec2(336.0, 16.0),
vec2(336.0, 96.0),
vec2(336.0, 144.0),
vec2(336.0, 208.0),
vec2(352.0, 0.0),
vec2(352.0, 48.0),
vec2(352.0, 112.0),
vec2(352.0, 128.0),
vec2(368.0, 16.0),
vec2(368.0, 32.0),
vec2(384.0, 16.0),
vec2(384.0, 32.0),
vec2(384.0, 112.0),
vec2(384.0, 176.0),
vec2(400.0, 112.0),
vec2(400.0, 160.0),
vec2(416.0, 48.0),
vec2(416.0, 160.0),
vec2(432.0, 32.0),
vec2(432.0, 64.0),
vec2(432.0, 96.0),
vec2(432.0, 112.0),
vec2(432.0, 128.0),
vec2(432.0, 144.0),
vec2(432.0, 224.0),
vec2(448.0, 32.0),
vec2(448.0, 48.0),
vec2(448.0, 96.0),
vec2(448.0, 160.0),
vec2(448.0, 176.0),
vec2(448.0, 224.0),
vec2(448.0, 240.0),
vec2(464.0, 64.0),
vec2(464.0, 80.0),
vec2(464.0, 128.0),
vec2(464.0, 144.0),
vec2(464.0, 224.0),
vec2(464.0, 240.0),
vec2(480.0, 64.0),
vec2(480.0, 80.0),
vec2(480.0, 112.0),
vec2(480.0, 128.0),
vec2(480.0, 144.0),
vec2(480.0, 160.0),
vec2(480.0, 176.0),
vec2(480.0, 192.0),
vec2(480.0, 240.0),
vec2(496.0, 16.0),
vec2(32.0, 256.0),
vec2(48.0, 256.0),
vec2(80.0, 256.0),
vec2(416.0, 256.0),
vec2(432.0, 256.0),
vec2(0.0, 272.0),
vec2(16.0, 272.0),
vec2(64.0, 272.0),
vec2(80.0, 272.0),
vec2(160.0, 272.0),
vec2(176.0, 272.0),
vec2(320.0, 272.0),
vec2(336.0, 272.0),
vec2(416.0, 272.0),
vec2(432.0, 272.0),
vec2(64.0, 288.0),
vec2(80.0, 288.0),
vec2(160.0, 288.0),
vec2(176.0, 288.0),
vec2(192.0, 288.0),
vec2(240.0, 288.0),
vec2(256.0, 288.0),
vec2(288.0, 288.0),
vec2(336.0, 288.0),
vec2(352.0, 288.0),
vec2(400.0, 288.0),
vec2(448.0, 288.0),
vec2(464.0, 288.0),
vec2(496.0, 288.0),
vec2(16.0, 304.0),
vec2(32.0, 304.0),
vec2(48.0, 304.0),
vec2(64.0, 304.0),
vec2(80.0, 304.0),
vec2(96.0, 304.0),
vec2(192.0, 304.0),
vec2(272.0, 304.0),
vec2(336.0, 304.0),
vec2(352.0, 304.0),
vec2(384.0, 304.0),
vec2(0.0, 320.0),
vec2(112.0, 320.0),
vec2(128.0, 320.0),
vec2(208.0, 320.0),
vec2(240.0, 320.0),
vec2(288.0, 320.0),
vec2(432.0, 320.0),
vec2(448.0, 320.0),
vec2(464.0, 320.0),
vec2(0.0, 336.0),
vec2(16.0, 336.0),
vec2(96.0, 336.0),
vec2(112.0, 336.0),
vec2(144.0, 336.0),
vec2(288.0, 336.0),
vec2(304.0, 336.0),
vec2(416.0, 336.0),
vec2(448.0, 336.0),
vec2(176.0, 352.0),
vec2(192.0, 352.0),
vec2(384.0, 352.0),
vec2(176.0, 368.0),
vec2(224.0, 368.0),
vec2(240.0, 368.0),
vec2(256.0, 368.0),
vec2(320.0, 368.0),
vec2(336.0, 368.0),
vec2(352.0, 368.0),
vec2(432.0, 368.0),
vec2(448.0, 368.0),
vec2(464.0, 368.0),
vec2(0.0, 384.0),
vec2(16.0, 384.0),
vec2(32.0, 384.0),
vec2(64.0, 384.0),
vec2(128.0, 384.0),
vec2(144.0, 384.0),
vec2(160.0, 384.0),
vec2(208.0, 384.0),
vec2(224.0, 384.0),
vec2(272.0, 384.0),
vec2(304.0, 384.0),
vec2(320.0, 384.0),
vec2(336.0, 384.0),
vec2(352.0, 384.0),
vec2(416.0, 384.0),
vec2(448.0, 384.0),
vec2(256.0, 400.0),
vec2(304.0, 400.0),
vec2(432.0, 400.0),
vec2(480.0, 400.0),
vec2(496.0, 400.0),
vec2(0.0, 416.0),
vec2(16.0, 416.0),
vec2(80.0, 416.0),
vec2(144.0, 416.0),
vec2(160.0, 416.0),
vec2(176.0, 416.0),
vec2(240.0, 416.0),
vec2(256.0, 416.0),
vec2(464.0, 416.0),
vec2(96.0, 432.0),
vec2(192.0, 432.0),
vec2(16.0, 448.0),
vec2(112.0, 448.0),
vec2(128.0, 448.0),
vec2(176.0, 448.0),
vec2(256.0, 448.0),
vec2(272.0, 448.0),
vec2(304.0, 448.0),
vec2(352.0, 448.0),
vec2(448.0, 448.0),
vec2(480.0, 448.0),
vec2(496.0, 448.0),
vec2(0.0, 464.0),
vec2(32.0, 464.0),
vec2(64.0, 464.0),
vec2(96.0, 464.0),
vec2(128.0, 464.0),
vec2(160.0, 464.0),
vec2(192.0, 464.0),
vec2(224.0, 464.0),
vec2(256.0, 464.0),
vec2(288.0, 464.0),
vec2(320.0, 464.0),
vec2(480.0, 464.0),
vec2(496.0, 464.0),
vec2(0.0, 480.0),
vec2(16.0, 480.0),
vec2(32.0, 480.0),
vec2(48.0, 480.0),
vec2(64.0, 480.0),
vec2(80.0, 480.0),
vec2(272.0, 480.0),
vec2(208.0, 496.0),
vec2(240.0, 496.0),
vec2(512.0, 128.0),
vec2(512.0, 192.0),
vec2(512.0, 208.0),
vec2(512.0, 224.0),
vec2(512.0, 272.0),
vec2(512.0, 320.0),
vec2(512.0, 384.0),
vec2(528.0, 16.0),
vec2(528.0, 64.0),
vec2(528.0, 240.0),
vec2(528.0, 256.0),
vec2(528.0, 336.0),
vec2(528.0, 368.0),
vec2(528.0, 464.0),
vec2(528.0, 480.0),
vec2(544.0, 48.0),
vec2(544.0, 64.0),
vec2(160.0, 304.0),
vec2(128.0, 304.0),
vec2(416.0, 64.0),
vec2(416.0, 80.0),
vec2(448.0, 112.0)
);

const vec2 bricks4BlockOffsets[NUM_4BRICKS_BLOCKS] = vec2[NUM_4BRICKS_BLOCKS](
    vec2(144.0, 144.0), // bricks
    vec2(272.0, 64.0), // cracked_nether_bricks
    vec2(112.0, 304.0), // nether_bricks
    vec2(288.0, 384.0), // red_nether_bricks
    vec2(272.0, 400.0) // resin_bricks
);

const vec2 bricks2BlockOffsets[NUM_2BRICKS_BLOCKS] = vec2[NUM_2BRICKS_BLOCKS](
    vec2(64.0, 256.0),   // Books chelf
    vec2(272.0, 32.0), // cracked_deepslate_bricks
    vec2(272.0, 48.0), // cracked_deepslate_tiles
    vec2(272.0, 80.0), // cracked_polished_blackstone_bricks
    vec2(272.0, 96.0), // cracked_stone_bricks
    vec2(352.0, 58.0), // deepslate_bricks
    vec2(400.0, 128.0), // end_stone_bricks
    vec2(480.0, 288.0), // mossy_stone_bricks
    vec2(0.0, 304.0), // mud_bricks
    vec2(48.0, 384.0), // quartz_bricks
    vec2(368.0, 448.0), // stone_bricks
    vec2(256.0, 496.0), // tuff_bricks
    vec2(432.0, 352.0) // polished_blackstone_bricks
);

const vec2 borderLessRotateBlockOffsets[BLR_BLOCKS] = vec2[BLR_BLOCKS](
    vec2(368.0, 352.0), // Polished Andesit
    vec2(416.0, 352.0), // Polished Blackstone
    vec2(448.0, 352.0), // Polished Deepslate
    vec2(464.0, 352.0), // Polished Diorite
    vec2(480.0, 352.0), // Polished Granite
    vec2(496.0, 352.0), // Polished Tuff
    vec2(208.0, 432.0), // Smooth Stone
    vec2(448.0, 64.0), // gold_block
    vec2(464.0, 384.0), // redstone_block
    vec2(256.0, 304.0), // netherite_block
    vec2(368.0, 240.0), // diamond_block
    vec2(192.0, 256.0) // lapis_block
);

const vec2 borderLessBlockOffsets[BORDER_LESS_BLOCKS] = vec2[BORDER_LESS_BLOCKS](
    vec2(48.0, 240.0), // coal_ore
    vec2(256.0, 240.0), // copper_ore
    vec2(352.0, 144.0), // deepslate_coal_ore
    vec2(352.0, 160.0), // deepslate_copper_ore
    vec2(352.0, 176.0), // deepslate_diamond_ore
    vec2(352.0, 192.0), // deepslate_emerald_ore
    vec2(352.0, 208.0), // deepslate_gold_ore
    vec2(352.0, 224.0), // deepslate_iron_ore
    vec2(352.0, 240.0), // deepslate_lapis_ore
    vec2(368.0, 0.0), // deepslate_redstone_ore
    vec2(384.0, 0.0), // diamond_ore
    vec2(384.0, 240.0), // emerald_ore
    vec2(448.0, 80.0), // gold_ore
    vec2(496.0, 96.0), // iron_ore
    vec2(208.0, 256.0), // lapis_ore
    vec2(128.0, 304.0), // nether_gold_ore
    vec2(64.0, 400.0), // redstone_ore
    vec2(176.0, 96.0), // beehive_end
    vec2(512.0, 96.0), // verdant_froglight_side
    vec2(512.0, 112.0), // verdant_froglight_top
    vec2(192.0, 336.0), // pearlescent_froglight_side
    vec2(208.0, 336.0), // pearlescent_froglight_top
    vec2(16.0, 320.0), // ochre_froglight_side
    vec2(32.0, 320.0), // ochre_froglight_top
    vec2(432.0, 416.0), // shroomlight
    vec2(464.0, 336.0), // piston_bottom
    vec2(496.0, 48.0) // iron_block
);

const vec2 rotateBlockOffsets[ROTATE_BLOCKS] = vec2[ROTATE_BLOCKS](
    vec2(64.0, 80.0), // acacia_log_top
    vec2(224.0, 16.0), // birch_log_top
    vec2(96.0, 208.0), // cherry_log_top
    vec2(320.0, 208.0), // dark_oak_log_top
    vec2(64.0, 256.0), // jungle_log_top
    vec2(272.0, 288.0), // mangrove_log_top
    vec2(368.0, 304.0), // oak_log_top
    vec2(128.0, 336.0), // pale_oak_log_top
    vec2(288.0, 448.0), // spruce_log_top
    vec2(464.0, 448.0), // stripped_acacia_log_top
    vec2(16.0, 464.0), // stripped_birch_log_top
    vec2(48.0, 464.0), // stripped_cherry_log_top
    vec2(112.0, 464.0), // stripped_dark_oak_log_top
    vec2(144.0, 464.0), // stripped_jungle_log_top
    vec2(176.0, 464.0), // stripped_mangrove_log_top
    vec2(208.0, 464.0), // stripped_oak_log_top
    vec2(240.0, 464.0), // stripped_pale_oak_log_top
    vec2(272.0, 464.0), // stripped_spruce_log_top
    vec2(304.0, 112.0), // crimson_stem_top
    vec2(80.0, 464.0), // stripped_crimson_stem_top
    vec2(304.0, 464.0), // stripped_warped_stem_top
    vec2(512.0, 288.0), // warped_stem_top
    vec2(496.0, 368.0), // purpur_pillar_top
    vec2(80.0, 384.0), // quartz_pillar_top
    vec2(32.0, 144.0), // bone_block_top
    vec2(96.0, 96.0), // ancient_debris_top
    vec2(176.0, 16.0), // bee_nest_bottom
    vec2(176.0, 80.0), // bee_nest_top
    vec2(288.0, 176.0), // creaking_heart_top
    vec2(288.0, 192.0), // creaking_heart_top_awake
    vec2(288.0, 208.0), // creaking_heart_top_dormant
    vec2(464.0, 272.0), // lodestone_top
    vec2(144.0, 32.0), // bamboo_mosaic
    vec2(176.0, 160.0), // cactus_bottom
    vec2(224.0, 160.0), // cactus_top
    vec2(304.0, 176.0), // cut_red_sandstone
    vec2(304.0, 192.0), // cut_sandstone
    vec2(400.0, 352.0), // polished_basalt_top
    vec2(80.0, 384.0), // quartz_pillar_top
    vec2(176.0, 224.0), // chiseled_tuff_bricks_top
    vec2(112.0, 400.0), // reinforced_deepslate_bottom
    vec2(144.0, 400.0), // reinforced_deepslate_top
    vec2(256.0, 112.0), // copper_block
    vec2(256.0, 128.0), // copper_bulb
    vec2(256.0, 144.0), // copper_bulb_lit
    vec2(256.0, 160.0), // copper_bulb_lit_powered
    vec2(256.0, 176.0), // copper_bulb_powered
    vec2(256.0, 224.0), // copper_grate
    vec2(400.0, 144.0), // exposed_chiseled_copper
    vec2(400.0, 160.0), // exposed_copper
    vec2(400.0, 176.0), // exposed_copper_bulb
    vec2(400.0, 192.0), // exposed_copper_bulb_lit
    vec2(400.0, 208.0), // exposed_copper_bulb_lit_powered
    vec2(400.0, 224.0), // exposed_copper_bulb_powered
    vec2(416.0, 16.0), // exposed_copper_grate
    vec2(272.0, 320.0), // oxidized_chiseled_copper
    vec2(288.0, 320.0), // oxidized_copper
    vec2(304.0, 320.0), // oxidized_copper_bulb
    vec2(320.0, 320.0), // oxidized_copper_bulb_lit
    vec2(336.0, 320.0), // oxidized_copper_bulb_lit_powered
    vec2(352.0, 320.0), // oxidized_copper_bulb_powered
    vec2(400.0, 320.0), // oxidized_copper_grate
    vec2(512.0, 368.0), // weathered_chiseled_copper
    vec2(512.0, 384.0), // weathered_copper
    vec2(512.0, 400.0), // weathered_copper_bulb
    vec2(512.0, 416.0), // weathered_copper_bulb_lit
    vec2(512.0, 432.0), // weathered_copper_bulb_lit_powered
    vec2(512.0, 448.0), // weathered_copper_bulb_powered
    vec2(512.0, 496.0), // weathered_copper_grate
    vec2(288.0, 368.0), // pumpkin_top
    vec2(432.0, 288.0), // melon_top
    vec2(432.0, 208.0), // furnace_top
    vec2(64.0, 128.0), // blast_furnace_top
    vec2(176.0, 432.0), // smoker_top
    vec2(288.0, 112.0), // crafting_table_top
    vec2(32.0, 400.0), // redstone_lamp
    vec2(48.0, 400.0), // redstone_lamp_on
    vec2(288.0, 304.0), // note_block
    vec2(496.0, 224.0), // jukebox_side
    vec2(224.0, 208.0), // chiseled_bookshelf_top
    vec2(160.0, 48.0), // barrel_top
    vec2(160.0, 64.0), // barrel_top_open
    vec2(352.0, 416.0), // sea_lantern
    vec2(496.0, 480.0), // trial_spawner_bottom
    vec2(64.0, 496.0), // trial_spawner_top_active
    vec2(80.0, 496.0), // trial_spawner_top_active_ominous
    vec2(96.0, 496.0), // trial_spawner_top_ejecting_reward
    vec2(112.0, 496.0), // trial_spawner_top_ejecting_reward_ominous
    vec2(128.0, 496.0), // trial_spawner_top_inactive
    vec2(144.0, 496.0), // trial_spawner_top_inactive_ominous
    vec2(480.0, 336.0), // piston_inner
    vec2(240.0, 480.0), // target_side
    vec2(256.0, 480.0), // target_top
    vec2(384.0, 224.0), // emerald_block
    vec2(160.0, 0.0), // bamboo_trapdoor
    vec2(144.0, 208.0), // cherry_trapdoor
    vec2(272.0, 0.0), // copper_trapdoor
    vec2(416.0, 32.0), // exposed_copper_trapdoor
    vec2(496.0, 112.0), // iron_trapdoor
    vec2(368.0, 288.0), // mangrove_trapdoor
    vec2(416.0, 304.0), // oak_trapdoor
    vec2(416.0, 320.0), // oxidized_copper_trapdoor
    vec2(528.0, 0.0), // weathered_copper_trapdoor
    vec2(256.0, 32.0), // composter_compost
    vec2(256.0, 48.0), // composter_ready
    vec2(256.0, 80.0), // composter_top
    vec2(336.0, 32.0), // daylight_detector_inverted_top
    vec2(336.0, 64.0), // daylight_detector_top
    vec2(336.0, 48.0), // daylight_detector_side
    vec2(480.0, 20.8) // hopper_top
);

vec2 minUVNormal(int blockIndex) {
    return normalBlockOffsets[blockIndex] / atlasSize;
}

vec2 maxUVNormal(int blockIndex) {
    return (normalBlockOffsets[blockIndex] + vec2(16.0, 16.0)) / atlasSize;
}

vec2 minUV4Bricks(int blockIndex) {
    return bricks4BlockOffsets[blockIndex] / atlasSize;
}

vec2 maxUV4Bricks(int blockIndex) {
    return (bricks4BlockOffsets[blockIndex] + vec2(16.0, 16.0)) / atlasSize;
}

vec2 minUV2Bricks(int blockIndex) {
    return bricks2BlockOffsets[blockIndex] / atlasSize;
}

vec2 maxUV2Bricks(int blockIndex) {
    return (bricks2BlockOffsets[blockIndex] + vec2(16.0, 16.0)) / atlasSize;
}

vec2 minUVBLR(int blockIndex) {
    return (borderLessRotateBlockOffsets[blockIndex]+ vec2(1.0, 1.0)) / atlasSize;
}

vec2 maxUVBLR(int blockIndex) {
    return (borderLessRotateBlockOffsets[blockIndex] + vec2(15.0, 15.0)) /atlasSize;
}

vec2 minUVBorderLess(int blockIndex) {
    return (borderLessBlockOffsets[blockIndex]+ vec2(1.0, 1.0)) / atlasSize;
}

vec2 maxUVBorderLess(int blockIndex) {
    return (borderLessBlockOffsets[blockIndex] + vec2(15.0, 15.0)) / atlasSize;
}

vec2 minUVRotate(int blockIndex){
    return (rotateBlockOffsets[blockIndex]) / atlasSize;
}

vec2 maxUVRotate(int blockIndex){
    return (rotateBlockOffsets[blockIndex] + vec2(16.0, 16.0)) / atlasSize; 
}

vec2 minUVdirtpath() {
    return vec2(384.0, 49.0) / atlasSize;
}

vec2 maxUVdirtpath() {
    return (vec2(384.0, 49.0) + vec2(16.0, 16.0)) / atlasSize;
}
