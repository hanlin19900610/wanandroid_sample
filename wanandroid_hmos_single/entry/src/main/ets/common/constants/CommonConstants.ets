export class Const {
  // 百分比最大尺寸
  static readonly FULL_PERCENT: string = '100%';
  static readonly HALF_PERCENT: string = '50%';

  // space
  static readonly SPACE_4: number = 4;
  static readonly SPACE_8: number = 8;
  static readonly SPACE_12: number = 12;
  static readonly SPACE_16: number = 16;

  // maxLines
  static readonly MAX_LINE_TWO: number = 2;

  // column count
  static readonly SM_COLUMN_COUNT: number = 1;
  static readonly MD_COLUMN_COUNT: number = 2;
  static readonly LG_COLUMN_COUNT: number = 3;

  // swiper duration
  static readonly SWIPER_DURATION: number = 1000;

  // skeleton animation config
  static readonly SKELETON_ANIMATION: AnimateParam = {
    duration: 400,
    tempo: 0.6,
    curve: Curve.EaseInOut,
    delay: 200,
    iterations: -1,
    playMode: PlayMode.Alternate
  }
}