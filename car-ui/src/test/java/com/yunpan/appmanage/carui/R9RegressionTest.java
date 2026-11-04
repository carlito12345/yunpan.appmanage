package com.yunpan.appmanage.carui;
import android.app.Dialog;
import android.graphics.*;
import android.graphics.drawable.BitmapDrawable;
import android.view.*;
import android.widget.*;
import org.junit.*;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.*;
import static org.junit.Assert.*;

@RunWith(RobolectricTestRunner.class)
@Config(sdk=28,manifest=Config.NONE,qualifiers="w720dp-h960dp-xhdpi")
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@LooperMode(LooperMode.Mode.PAUSED)
public class R9RegressionTest {
 final R4RegressionTest f=new R4RegressionTest();
 @Before public void setup()throws Exception{f.setup();}
 Dialog dialog(View root){LegacyResourceTest.SettingsDialog d=new LegacyResourceTest.SettingsDialog(f.context,f.resource("layout","dialog_share"));d.setOwnerActivity(f.activity);d.setContentView(root);d.show();CarUi.dialog(d);return d;}
 void measure(Dialog d,int[] size){f.fixture.layout(f.activity.getWindow().getDecorView(),size[0],size[1]);CarUi.dialog(d);View decor=d.getWindow().getDecorView();WindowManager.LayoutParams p=d.getWindow().getAttributes();f.fixture.layout(decor,p.width,p.height);f.fixture.layout(decor,p.width,p.height);}
 @Test public void lanTransferKeepsLargeQrAndOriginalCallbacksWithFixedFooterInBothDirections()throws Exception{
  for(String theme:new String[]{"warm","cyan","mono"}){
   f.context.getSharedPreferences("car_ui_v1",0).edit().putString("theme",theme).putBoolean("dark",theme.equals("cyan")).commit();
   View root=f.fixture.inflate(f.context,"dialog_share");View inner=f.id(root,"v_root2"),guide=f.id(root,"guideline"),sound=f.id(root,"v_btn_success_prompt"),icon=f.id(root,"v_btn_success_prompt_ico"),close=f.id(root,"v_btn_close");ImageView qr=(ImageView)f.id(root,"v_qrCode");TextView address=(TextView)f.id(root,"v_ip");
   Bitmap bitmap=Bitmap.createBitmap(320,320,Bitmap.Config.ARGB_8888);bitmap.eraseColor(Color.BLACK);qr.setImageBitmap(bitmap);address.setText("手机：直接扫码互传\n电脑：浏览器输入：192.0.2.10:9899");final int[] clicked={0};sound.setOnClickListener(v->clicked[0]++);
   Dialog d=dialog(root);close.setOnClickListener(v->d.dismiss());
   for(int[] size:new int[][]{{1440,1920},{1920,1440}}){measure(d,size);View decor=d.getWindow().getDecorView();
    assertSame(qr,f.id(root,"v_qrCode"));assertSame(inner,f.id(root,"v_root2"));assertSame(guide,f.id(root,"guideline"));assertSame(icon,f.id(root,"v_btn_success_prompt_ico"));assertSame(sound,f.id(root,"v_btn_success_prompt"));assertSame(address,f.id(root,"v_ip"));
    assertEquals(qr.getWidth(),qr.getHeight());assertTrue("QR must not collapse",qr.getWidth()>=CarUi.dp(f.context,280));assertEquals(ImageView.ScaleType.FIT_CENTER,qr.getScaleType());assertFalse(((BitmapDrawable)qr.getDrawable()).getPaint().isFilterBitmap());
    assertTrue(close.getHeight()>=CarUi.dp(f.context,52));assertTrue(f.top(close)+close.getHeight()<=f.top(decor)+decor.getHeight());assertTrue(f.top(qr)+qr.getHeight()<=f.top(close));
    Bitmap rendered=Bitmap.createBitmap(decor.getWidth(),decor.getHeight(),Bitmap.Config.ARGB_8888);decor.draw(new Canvas(rendered));int[] at=new int[2],origin=new int[2];qr.getLocationOnScreen(at);decor.getLocationOnScreen(origin);assertEquals(Color.WHITE,rendered.getPixel(at[0]-origin[0]-4,at[1]-origin[1]+20));rendered.recycle();
    f.capture(decor,decor.getWidth(),decor.getHeight(),"r9-lan-"+theme+"-"+size[0]+".png");
   }
   sound.performClick();assertEquals(1,clicked[0]);close.performClick();assertFalse(d.isShowing());bitmap.recycle();
  }
 }
 @Test public void missingThenLateQrKeepsManualAddressAndOriginalVisibility()throws Exception{
  View root=f.fixture.inflate(f.context,"dialog_share");ImageView qr=(ImageView)f.id(root,"v_qrCode");qr.setVisibility(View.GONE);Dialog d=dialog(root);measure(d,new int[]{1440,1920});assertEquals(View.GONE,qr.getVisibility());assertEquals(View.GONE,((View)qr.getParent()).getVisibility());assertTrue(f.id(root,"v_ip").getHeight()>0);
  Bitmap bitmap=Bitmap.createBitmap(320,320,Bitmap.Config.ARGB_8888);bitmap.eraseColor(Color.BLACK);qr.setImageBitmap(bitmap);qr.setVisibility(View.VISIBLE);measure(d,new int[]{1920,1440});assertTrue(qr.getWidth()>=CarUi.dp(f.context,280));assertSame(qr,f.id(root,"v_qrCode"));assertEquals(View.VISIBLE,((View)qr.getParent()).getVisibility());d.dismiss();bitmap.recycle();
 }
}
