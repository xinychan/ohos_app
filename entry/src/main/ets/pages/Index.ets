import { Log } from 'feature';

const TAG = 'IndexPage';
const PAGE_NAME = 'HomePage';

@Entry
@Component
struct Index {
  private pathStack: NavPathStack = new NavPathStack();

  aboutToAppear(): void {
    Log.info(TAG, 'aboutToAppear');
  }

  aboutToDisappear(): void {
    Log.info(TAG, 'aboutToDisappear');
  }

  onPageShow(): void {
    Log.info(TAG, 'onPageShow');
  }

  onPageHide(): void {
    Log.info(TAG, 'onPageHide');
  }

  build() {
    Navigation(this.pathStack) {
    }
    .mode(NavigationMode.Stack)
    .title('IndexPage')
    .onAppear(() => {
      Log.info(TAG, 'onAppear');
      const info: NavPathInfo = new NavPathInfo(PAGE_NAME, null);
      this.pathStack.pushPath(info);
    })
    .onDisAppear(() => {
      // 页面显示和退出只执行 onPageShow/onPageHide，不执行 onDisAppear
      // 只在整个页面销毁前执行 onDisAppear==>aboutToDisappear
      Log.info(TAG, 'onDisAppear');
    })
  }
}