import { BreakPointType } from 'basic';
import { Logger } from 'basic/src/main/ets/utils/Logger';

interface TabItem {
  text: string
  normal: ResourceStr
  active: ResourceStr
}

@Entry
@Component
struct Index {
  @State activeIndex: number = 0
  list: TabItem[] = [
    { text: '首页', normal: $r('app.media.ic_public_home_normal'), active: $r('app.media.ic_public_home_active') },
    { text: '分类', normal: $r('app.media.ic_public_pro_normal'), active: $r('app.media.ic_public_pro_active') },
    { text: '购物袋', normal: $r('app.media.ic_public_cart_normal'), active: $r('app.media.ic_public_cart_active') },
    { text: '我的', normal: $r('app.media.ic_public_my_normal'), active: $r('app.media.ic_public_my_active') },
  ]
  @StorageProp('currentBreakpoint') breakPoint: string = 'xs'

  aboutToAppear(): void {
    Logger.info({
      name: 'lee',
      age: 19
    })
    Logger.log({ a: '第二个日志', b: 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa' })
  }

  build() {
    Tabs({ barPosition: BarPosition.End }) {
      ForEach(this.list, (item: TabItem, index: number) => {
        TabContent() {

        }
        .tabBar(this.TabItemBuilder(item, index))
      })
    }
    .scrollable(false)
    .onTabBarClick(index => {
      this.activeIndex = index
    })
    .barPosition(new BreakPointType({
      sm: BarPosition.End,
      md: BarPosition.End,
      lg: BarPosition.Start
    }).getValue(this.breakPoint))
    .vertical(this.breakPoint == 'lg' ? true : false)
  }

  @Builder
  TabItemBuilder(item: TabItem, index: number) {
    Column() {
      Image(this.activeIndex === index ? item.active : item.normal)
        .width(24)
        .aspectRatio(1)
      Text(item.text)// 跨 HSP 访问资源，需要在 oh-package.json5中导入
        .fontColor($r('[basic].color.black'))
        .fontSize(12)
    }
    .justifyContent(FlexAlign.SpaceEvenly)
    .height(50)
  }
}