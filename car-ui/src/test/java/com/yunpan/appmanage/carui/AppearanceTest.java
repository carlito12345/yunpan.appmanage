package com.yunpan.appmanage.carui;
import android.app.Dialog;
import android.graphics.*;
import android.graphics.drawable.Drawable;
import android.view.*;
import android.widget.*;
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
public class AppearanceTest {
 final R4RegressionTest f=new R4RegressionTest();final WallpaperTest helper=new WallpaperTest();
 @Before public void setup()throws Exception{f.setup();Appearance.save(f.context,new Appearance.Config());}
 Bitmap render(Drawable d){Bitmap b=Bitmap.createBitmap(300,180,Bitmap.Config.ARGB_8888);d.setBounds(0,0,300,180);d.draw(new Canvas(b));return b;}
 @Test public void globalAlphaChangesOnlyMaterialPixelsAndClampsSavedValues()throws Exception{for(String theme:new String[]{"mono","cyan","warm"}){f.context.getSharedPreferences("car_ui_v1",0).edit().putString("theme",theme).putBoolean("dark",theme.equals("cyan")).commit();for(int value:new int[]{0,50,100}){Appearance.Config c=new Appearance.Config();c.transparency=value;Appearance.save(f.context,c);Bitmap b=render(CarUi.rounded(f.context,CarUi.skin(f.context).surface,18));assertEquals(Math.round(255*(100-value)/100f),Color.alpha(b.getPixel(150,90)));TextView text=CarUi.text(f.context,"应用管理",20,CarUi.skin(f.context).ink,true);assertEquals(255,Color.alpha(text.getCurrentTextColor()));b.recycle();}}FrameLayout owner=new FrameLayout(f.context);owner.setBackgroundColor(0xFF224466);f.activity.setContentView(owner);f.fixture.layout(f.activity.getWindow().getDecorView(),1440,1920);for(int transparency:new int[]{0,50,100}){Appearance.Config plate=new Appearance.Config();plate.transparency=transparency;Appearance.save(f.context,plate);Dialog d=new Dialog(f.context);d.setOwnerActivity(f.activity);d.setContentView(new TextView(f.context));d.show();CarUi.decorateDialog(d);Bitmap b=render(d.getWindow().getDecorView().getBackground());assertTrue("Dialog plate must use the same opacity budget",Math.abs(Color.alpha(b.getPixel(150,90))-Math.round(255*(100-transparency)/100f))<=1);b.recycle();d.dismiss();}
  Appearance.Config c=new Appearance.Config();c.transparency=999;c.style=999;c.color=-4;Appearance.save(f.context,c);c=Appearance.load(f.context);assertEquals(100,c.transparency);assertEquals(3,c.style);assertEquals(0,c.color);}
 SeekBar seek(View root){if(root instanceof SeekBar)return(SeekBar)root;if(root instanceof ViewGroup)for(int i=0;i<((ViewGroup)root).getChildCount();i++){SeekBar found=seek(((ViewGroup)root).getChildAt(i));if(found!=null)return found;}return null;}
 void slide(SeekBar bar,int value)throws Exception{java.lang.reflect.Field listener=SeekBar.class.getDeclaredField("mOnSeekBarChangeListener");listener.setAccessible(true);bar.setProgress(value);((SeekBar.OnSeekBarChangeListener)listener.get(bar)).onProgressChanged(bar,value,true);}
 @Test public void themeCenterDraftCancelAndApplyPreserveWallpaperAndFitBothDirections()throws Exception{
  f.activity.getSharedPreferences("car_wallpaper_v1",0).edit().putString("mode","particles").putInt("style",4).commit();
  ThemePicker.show(f.activity);Dialog d=ShadowDialog.getLatestDialog();View decor=d.getWindow().getDecorView();slide(seek(decor),65);helper.text(decor,"流光飞舞").performClick();helper.text(decor,"樱粉").performClick();assertEquals(0,Appearance.load(f.activity).transparency);helper.text(decor,"取消").performClick();assertEquals(0,Appearance.load(f.activity).style);
  ThemePicker.show(f.activity);d=ShadowDialog.getLatestDialog();decor=d.getWindow().getDecorView();slide(seek(decor),65);helper.text(decor,"多彩渐变").performClick();helper.text(decor,"樱粉").performClick();
  for(int[] size:new int[][]{{1440,1920},{1920,1440}}){f.fixture.layout(f.activity.getWindow().getDecorView(),size[0],size[1]);CarUi.refreshDialog(d);android.view.WindowManager.LayoutParams p=d.getWindow().getAttributes();f.fixture.layout(decor,p.width,p.height);View apply=helper.text(decor,"应用设置");assertTrue(apply.getHeight()>=CarUi.dp(f.activity,52));assertTrue(f.top(apply)+apply.getHeight()<=decor.getHeight()+f.top(decor));assertTrue(decor.getWidth()<=size[0]&&decor.getHeight()<=size[1]);f.capture(decor,decor.getWidth(),decor.getHeight(),"r7-theme-center-"+size[0]+".png");}
  helper.text(decor,"应用设置").performClick();Appearance.Config c=Appearance.load(f.activity);assertEquals(65,c.transparency);assertEquals(2,c.style);assertEquals(4,c.color);assertEquals("particles",Wallpapers.load(f.activity).mode);assertEquals(4,Wallpapers.load(f.activity).style);
  ThemePicker.show(f.activity);d=ShadowDialog.getLatestDialog();decor=d.getWindow().getDecorView();slide(seek(decor),35);helper.text(decor,"流光飞舞").performClick();helper.text(decor,"冰蓝").performClick();((View)helper.text(decor,"暖橙 · 奶油").getParent()).performClick();c=Appearance.load(f.activity);assertEquals(35,c.transparency);assertEquals(3,c.style);assertEquals(0,c.color);
 }
 @Test public void borderStylesRenderAndFlowStopsWhenHiddenOrMotionDisabled()throws Exception{
  java.util.HashSet<Integer> signatures=new java.util.HashSet<>();for(int style=0;style<4;style++){Appearance.Config c=new Appearance.Config();c.style=style;c.color=4;Bitmap b=render(Appearance.background(f.context,0xFF112233,18,c));int[] pixels=new int[300*180];b.getPixels(pixels,0,300,0,0,300,180);signatures.add(java.util.Arrays.hashCode(pixels));b.recycle();}assertEquals(4,signatures.size());
  Appearance.Config c=new Appearance.Config();c.style=3;Appearance.Edge edge=(Appearance.Edge)Appearance.background(f.context,0,18,c);edge.setBounds(0,0,300,180);Bitmap a=Bitmap.createBitmap(300,180,Bitmap.Config.ARGB_8888),b=Bitmap.createBitmap(300,180,Bitmap.Config.ARGB_8888);edge.drawEdge(new Canvas(a),0);edge.drawEdge(new Canvas(b),.25f);assertFalse(a.sameAs(b));a.recycle();b.recycle();
  final int[] callbacks={0,0};edge.setCallback(new Drawable.Callback(){@Override public void invalidateDrawable(Drawable d){}@Override public void scheduleDrawable(Drawable d,Runnable r,long when){callbacks[0]++;}@Override public void unscheduleDrawable(Drawable d,Runnable r){callbacks[1]++;}});Bitmap frame=render(edge);frame.recycle();assertTrue(callbacks[0]>0);edge.setVisible(false,false);int scheduled=callbacks[0];frame=render(edge);frame.recycle();assertEquals(scheduled,callbacks[0]);assertTrue(callbacks[1]>0);
  java.lang.reflect.Method scale=android.animation.ValueAnimator.class.getDeclaredMethod("setDurationScale",float.class);scale.setAccessible(true);try{scale.invoke(null,0f);assertFalse(edge.animated());}finally{scale.invoke(null,1f);}edge.setCallback(null);
 }
}
