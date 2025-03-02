import { Log } from 'common';

const TAG = 'HomePage';

@Builder
export function HomePageBuilder() {
  HomePage()
}

@Component
struct HomePage {
  private pathStack: NavPathStack = new NavPathStack();

  aboutToAppear(): void {
    Log.info(TAG, 'aboutToAppear');
  }

  aboutToDisappear(): void {
    Log.info(TAG, 'aboutToDisappear');
  }

  build() {
    NavDestination() {
      this.pageContent()
    }
    .mode(NavDestinationMode.STANDARD)
    .title('HomePage')
    .onWillAppear(() => {
      Log.info(TAG, 'onWillAppear');
    })
    .onReady((navContext: NavDestinationContext) => {
      Log.info(TAG, 'onReady');
      this.pathStack = navContext.pathStack;
    })
    .onAppear(() => {
      Log.info(TAG, 'onAppear');
    })
    .onWillShow(() => {
      Log.info(TAG, 'onWillShow');
    })
    .onShown(() => {
      Log.info(TAG, 'onShown');
    })
    .onBackPressed(() => {
      Log.info(TAG, 'onBackPressed');
      return false;
    })
    .onWillHide(() => {
      Log.info(TAG, 'onWillHide');
    })
    .onHidden(() => {
      Log.info(TAG, 'onHidden');
    })
    .onWillDisappear(() => {
      Log.info(TAG, 'onWillDisappear');
    })
    .onDisAppear(() => {
      Log.info(TAG, 'onDisAppear');
    })
  }

  @Builder
  pageContent() {
    Column() {
      Button('onClick')
        .fontSize($r('app.float.page_text_font_size'))
        .fontSize(FontWeight.Bold)
        .onClick(() => {
          Log.info(TAG, 'onClick');
        })
    }
    .height('100%')
    .width('100%')
  }
}