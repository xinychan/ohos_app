import { hilog } from '@kit.PerformanceAnalysisKit';

const DOMAIN = 0xF0F0;
const HILOG_TAG = 'xyc_demo';

export class Log {
  public static info(tag: string, msg: string): void {
    hilog.info(DOMAIN, HILOG_TAG, '[%{public}s]:%{public}s', tag, msg);
  }

  public static warn(tag: string, msg: string): void {
    hilog.warn(DOMAIN, HILOG_TAG, '[%{public}s]:%{public}s', tag, msg);
  }

  public static error(tag: string, msg: string): void {
    hilog.error(DOMAIN, HILOG_TAG, '[%{public}s]:%{public}s', tag, msg);
  }
}