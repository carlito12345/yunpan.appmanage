package com.yunpan.appmanage.carui;
import android.app.Dialog;
import android.view.*;
import org.junit.*;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.*;
import org.robolectric.shadows.ShadowDialog;
import static org.junit.Assert.*;

@RunWith(RobolectricTestRunner.class)
@Config(sdk=28,manifest=Config.NONE,qualifiers="w720dp-h960dp-xhdpi")
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@LooperMode(LooperMode.Mode.PAUSED)
public class SourceInfoTest {
 @Test public void publicSourceKeepsExactAttributionAndCloseVisibleAfterRotation()throws Exception{
  R4RegressionTest f=new R4RegressionTest();f.setup();WallpaperTest h=new WallpaperTest();
  assertEquals("carlito",SourceInfo.AUTHOR);assertEquals("应用管家社区官方【应用管家】",SourceInfo.SOURCE);assertEquals("https://pd.qq.com/s/7eyokceit?b=5",SourceInfo.URL);assertEquals("updata3927",SourceInfo.CHANNEL);
  SourceInfo.show(f.activity);Dialog d=ShadowDialog.getLatestDialog();View decor=d.getWindow().getDecorView();
  for(int[] size:new int[][]{{1440,1920},{1920,1440}}){
   f.fixture.layout(f.activity.getWindow().getDecorView(),size[0],size[1]);CarUi.refreshDialog(d);android.view.WindowManager.LayoutParams p=d.getWindow().getAttributes();f.fixture.layout(decor,p.width,p.height);
   assertNotNull(h.text(decor,"定制作者：carlito"));assertNotNull(h.text(decor,"源 APK："+SourceInfo.SOURCE));View close=h.text(decor,"关闭");assertTrue(close.getHeight()>=CarUi.dp(f.activity,52));assertTrue(f.top(close)+close.getHeight()<=f.top(decor)+decor.getHeight());assertTrue(decor.getWidth()<=size[0]&&decor.getHeight()<=size[1]);
  }
  h.text(decor,"关闭").performClick();assertFalse(d.isShowing());
 }
}
