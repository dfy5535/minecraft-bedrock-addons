/**
 * config.js — 常量、材料表、阶位换算
 * 所有数值取自文件 1 §二 / §三；已按 P0 探针修正 API 用法。
 */

export const NS = 'lucky';
export const BLOCK_ID = 'lucky:lucky_block';
export const WAND_ID = 'lucky:fate_tuner';
export const ACTOR_ID = 'lucky:opening_actor';

export const MIN_LUCK = -100;
export const MAX_LUCK = 100;

/** 阶位名（文件 1 TIER_NAMES 原样） */
export const TIER_NAMES = [
  '§4Tier 0: 灾厄深渊 (-100 ~ -61)',
  '§cTier 1: 霉运锈蚀 (-60 ~ -21)',
  '§eTier 2: 混沌原初 (-20 ~ +20)',
  '§bTier 3: 璀璨星钻 (+21 ~ +60)',
  '§dTier 4: 神圣天启 (+61 ~ +100)',
];

/** 阶位常驻粒子（文件 1 permutations 语义） */
export const TIER_PARTICLES = [
  'lucky:tier0_abyss_particle',
  'lucky:curse_down_particle',
  'lucky:charge_up_particle',
  'lucky:tier4_aura_particle',
  'lucky:tier4_aura_particle',
];

/** 材料调律表（delta 逐条照抄文件 1 §二） */
export const LUCK_MATERIALS = {
  'minecraft:enchanted_golden_apple': { delta: 50, label: '附魔金苹果', sound: 'lucky.jackpot_fanfare', particle: 'lucky:tier4_aura_particle' },
  'minecraft:nether_star': { delta: 40, label: '下界之星', sound: 'lucky.luck_up', particle: 'lucky:tier4_aura_particle' },
  'minecraft:netherite_ingot': { delta: 25, label: '下界合金锭', sound: 'lucky.luck_up', particle: 'lucky:tier4_aura_particle' },
  'minecraft:golden_apple': { delta: 15, label: '金苹果', sound: 'lucky.luck_up', particle: 'lucky:charge_up_particle' },
  'minecraft:diamond': { delta: 10, label: '钻石', sound: 'lucky.luck_up', particle: 'lucky:charge_up_particle' },
  'minecraft:diamond_block': { delta: 90, label: '钻石块', sound: 'lucky.luck_up', particle: 'lucky:tier4_aura_particle' },
  'minecraft:potent_sulfur': { delta: 8, label: '强效硫磺', sound: 'lucky.luck_up', particle: 'lucky:charge_up_particle' },
  'minecraft:emerald': { delta: 5, label: '绿宝石', sound: 'lucky.luck_up', particle: 'lucky:charge_up_particle' },
  'minecraft:emerald_block': { delta: 45, label: '绿宝石块', sound: 'lucky.luck_up', particle: 'lucky:charge_up_particle' },
  'minecraft:amethyst_shard': { delta: 4, label: '紫水晶碎片', sound: 'lucky.luck_up', particle: 'lucky:charge_up_particle' },
  'minecraft:gold_ingot': { delta: 3, label: '金锭', sound: 'lucky.luck_up', particle: 'lucky:charge_up_particle' },
  'minecraft:gold_block': { delta: 27, label: '金块', sound: 'lucky.luck_up', particle: 'lucky:charge_up_particle' },
  'minecraft:shelf_mushroom': { delta: 2, label: '树舌蘑菇', sound: 'lucky.luck_up', particle: 'lucky:charge_up_particle' },
  'minecraft:bone': { delta: -3, label: '骨头', sound: 'lucky.luck_down', particle: 'lucky:curse_down_particle' },
  'minecraft:rotten_flesh': { delta: -5, label: '腐肉', sound: 'lucky.luck_down', particle: 'lucky:curse_down_particle' },
  'minecraft:gunpowder': { delta: -6, label: '火药', sound: 'lucky.luck_down', particle: 'lucky:curse_down_particle' },
  'minecraft:spider_eye': { delta: -8, label: '蜘蛛眼', sound: 'lucky.luck_down', particle: 'lucky:curse_down_particle' },
  'minecraft:fermented_spider_eye': { delta: -12, label: '发酵蛛眼', sound: 'lucky.luck_down', particle: 'lucky:curse_down_particle' },
  'minecraft:poisonous_potato': { delta: -15, label: '毒马铃薯', sound: 'lucky.luck_down', particle: 'lucky:curse_down_particle' },
  'minecraft:pufferfish': { delta: -15, label: '河豚', sound: 'lucky.luck_down', particle: 'lucky:curse_down_particle' },
  'minecraft:echo_shard': { delta: -25, label: '回响碎片', sound: 'lucky.abyss_curse', particle: 'lucky:tier0_abyss_particle' },
  'minecraft:wither_skeleton_skull': { delta: -35, label: '凋灵骷髅头颅', sound: 'lucky.abyss_curse', particle: 'lucky:tier0_abyss_particle' },
  'minecraft:milk_bucket': { delta: 0, reset: true, label: '牛奶桶（归零）', sound: 'random.drink', particle: 'lucky:burst_rainbow_particle' },
};

/** 幸运值 → 阶位（0..4），边界与文件 1 luckToTier 一致 */
export function luckToTier(luck) {
  if (luck <= -61) return 0;
  if (luck <= -21) return 1;
  if (luck <= 20) return 2;
  if (luck <= 60) return 3;
  return 4;
}

export function clampLuck(v) {
  return Math.max(MIN_LUCK, Math.min(MAX_LUCK, Math.round(v)));
}

/** ActionBar 20 格彩色进度条（文件 1 renderLuckBar） */
export function renderLuckBar(luck) {
  const normalized = Math.round(((luck + MIN_LUCK) / (MAX_LUCK - MIN_LUCK)) * 20);
  const filled = '█'.repeat(Math.max(0, Math.min(20, normalized)));
  const empty = '░'.repeat(Math.max(0, 20 - normalized));
  const color = luck >= 61 ? '§d' : luck >= 21 ? '§b' : luck >= -20 ? '§e' : luck >= -60 ? '§c' : '§4';
  const sign = luck > 0 ? `+${luck}` : `${luck}`;
  return `${color}[${filled}§7${empty}${color}] 幸运值: ${sign}/100 §r(${TIER_NAMES[luckToTier(luck)]}§r)`;
}

export const OPENING_TICKS = 30; // 1.5s，与文件 1 兜底定时器一致
