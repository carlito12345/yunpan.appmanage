package com.yunpan.appmanage.carui;
import android.app.Dialog;
import android.graphics.*;
import android.graphics.drawable.BitmapDrawable;
import android.view.*;
import android.widget.*;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.GridLayoutManager;
import org.junit.*;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.*;
import static org.junit.Assert.*;

@RunWith(RobolectricTestRunner.class)
@Config(sdk=28,manifest=Config.NONE,qualifiers="w720dp-h960dp-xhdpi")
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@LooperMode(LooperMode.Mode.PAUSED)
public class R7RegressionTest {
 final R4RegressionTest f=new R4RegressionTest();
 @Before public void setup()throws Exception{f.setup();}
 View id(View v,String n){return f.id(v,n);}
 RecyclerView files(View root,String name,String layout,String... names){
  RecyclerView v=(RecyclerView)id(root,name);v.setLayoutManager(new GridLayoutManager(f.context,2));v.setAdapter(new c6.g(){
   {for(String s:names)d.add(s);}
   @Override public RecyclerView.ViewHolder B(android.content.Context c,ViewGroup parent,int type){return new h6.a(f.resource("layout",layout),parent);}
   @Override public void z(RecyclerView.ViewHolder h,int position,Object value){View row=h.itemView;((TextView)id(row,"v_file_name")).setText((String)value);((TextView)id(row,"v_file_attribute")).setText("2026/11/04 08:00 · 2.5 MB");((ImageView)id(row,"v_file_ico")).setImageResource(f.resource("drawable","folder1"));View check=id(row,"v_select");if(check!=null)check.setVisibility(View.GONE);View action=id(row,"v_item_state");if(action!=null)action.setVisibility(View.GONE);}
  });return v;
 }
 int left(View v){int[] p=new int[2];v.getLocationOnScreen(p);return p[0];}
 int top(View v){return f.top(v);}
 @Test public void dualBrowsersUseSingleColumnRowsAndPreserveLateDataAndActions()throws Exception{
  for(String theme:new String[]{"mono","cyan","warm"}){
   f.context.getSharedPreferences("car_ui_v1",0).edit().putString("theme",theme).putBoolean("dark",theme.equals("cyan")).commit();
   View root=f.fixture.inflate(f.context,"fragment_file_wl");
   for(String name:new String[]{"v_read_ts_lay1","v_read_ts_lay2","v_loadDir_lay","v_loadMore_lay","v_readProgress2"})id(root,name).setVisibility(View.GONE);
   f.rows(root,"v_gn1","item_btn1",true,"添加云盘");f.rows(root,"v_gn2","item_btn1",true,"内部存储");f.rows(root,"v_dir_gn1","item_btn1",true,"切换","新建","刷新");f.rows(root,"v_dir_gn2","item_btn1",true,"新建","切换");f.rows(root,"v_path1","item_btn1",true,"云端根目录");f.rows(root,"v_path2","item_btn1",true,"Download");
   RecyclerView remote=files(root,"v_file1","item_file_wl"),local=files(root,"v_file2","item_file","应用管家-非常长的文件名-用于检查两行显示.apk","Download","Pictures");
   final int[] calls={0};View task=id(root,"v_btn_task");task.setOnClickListener(v->calls[0]++);f.adapt(root,"fragment_file_wl");
   for(int[] dimensions:new int[][]{{1100,1620},{1580,1150}}){
    f.fixture.layout(root,dimensions[0],dimensions[1]);f.fixture.layout(root,dimensions[0],dimensions[1]);
    f.capture(root,dimensions[0],dimensions[1],"r7-network-"+theme+"-"+dimensions[0]+".png");assertTrue("Pane overlap",left(remote)+remote.getWidth()<=left(local));assertTrue("List heights "+remote.getHeight()+"/"+local.getHeight()+" in "+dimensions[1],remote.getHeight()>dimensions[1]/2&&local.getHeight()>dimensions[1]/2);
    assertEquals(1,((GridLayoutManager)remote.getLayoutManager()).getSpanCount());assertEquals(1,((GridLayoutManager)local.getLayoutManager()).getSpanCount());
    assertTrue(top(local)+local.getHeight()<=top(id(root,"v_dir_gn2")));assertTrue(id(root,"v_dir_gn2").getHeight()>=CarUi.dp(f.context,52));
    View item=local.getChildAt(0);assertNotNull(item);View label=id(item,"v_file_name"),meta=id(item,"v_file_attribute");assertTrue(label.getWidth()>150);assertTrue(meta.getHeight()>0);assertTrue(item.getHeight()>=CarUi.dp(f.context,72));assertTrue(top(meta)>=top(label)+label.getHeight());f.capture(root,dimensions[0],dimensions[1],"r7-network-"+theme+"-"+dimensions[0]+".png");
   }
   ((c6.g)remote.getAdapter()).d.add("后来到达的云端文件.pdf");remote.getAdapter().notifyDataSetChanged();f.fixture.layout(root,1100,1620);f.fixture.layout(root,1100,1620);assertEquals(1,remote.getChildCount());((GridLayoutManager)remote.getLayoutManager()).setSpanCount(3);remote.requestLayout();f.fixture.layout(root,1100,1620);assertEquals(1,((GridLayoutManager)remote.getLayoutManager()).getSpanCount());assertEquals("后来到达的云端文件.pdf",((TextView)id(remote.getChildAt(0),"v_file_name")).getText().toString());assertSame(task,id(root,"v_btn_task"));task.performClick();assertEquals(1,calls[0]);
  }
 }
 @Test public void qrLoginHasLargeSquareWhiteQuietZoneAndRetainsStateAndDismiss()throws Exception{
  View root=f.fixture.inflate(f.context,"dialog_login_qrcode");ImageView qr=(ImageView)id(root,"v_image");TextView state=(TextView)id(root,"v_text_ts3");state.setVisibility(View.GONE);Bitmap data=Bitmap.createBitmap(64,64,Bitmap.Config.ARGB_8888);data.eraseColor(Color.BLACK);qr.setImageBitmap(data);
  LegacyResourceTest.SettingsDialog dialog=new LegacyResourceTest.SettingsDialog(f.context,f.resource("layout","dialog_login_qrcode"));dialog.setOwnerActivity(f.activity);dialog.setContentView(root);final int[] dismissed={0};dialog.setOnDismissListener(d->dismissed[0]++);dialog.show();CarUi.dialog(dialog);
  for(int[] size:new int[][]{{1440,1920},{1920,1440}}){f.fixture.layout(f.activity.getWindow().getDecorView(),size[0],size[1]);CarUi.dialog(dialog);WindowManager.LayoutParams p=dialog.getWindow().getAttributes();View decor=dialog.getWindow().getDecorView();decor.measure(View.MeasureSpec.makeMeasureSpec(p.width,View.MeasureSpec.EXACTLY),View.MeasureSpec.makeMeasureSpec(size[1]-CarUi.dp(f.context,48),View.MeasureSpec.AT_MOST));f.fixture.layout(decor,p.width,decor.getMeasuredHeight());assertTrue(qr.getWidth()>=CarUi.dp(f.context,280));assertEquals(qr.getWidth(),qr.getHeight());assertSame(state,id(root,"v_text_ts3"));assertSame(qr,id(root,"v_image"));assertEquals(View.GONE,state.getVisibility());assertTrue(decor.getHeight()<size[1]);assertFalse(((BitmapDrawable)qr.getDrawable()).getPaint().isFilterBitmap());Bitmap shot=Bitmap.createBitmap(decor.getWidth(),decor.getHeight(),Bitmap.Config.ARGB_8888);decor.draw(new Canvas(shot));int[] loc=new int[2],origin=new int[2];qr.getLocationOnScreen(loc);decor.getLocationOnScreen(origin);assertEquals(Color.WHITE,shot.getPixel(loc[0]-origin[0]-5,loc[1]-origin[1]+20));shot.recycle();f.capture(decor,decor.getWidth(),decor.getHeight(),"r7-qr-"+size[0]+".png");}
  state.setText("已扫码，待确认");state.setVisibility(View.VISIBLE);View decor=dialog.getWindow().getDecorView();f.fixture.layout(decor,decor.getWidth(),decor.getHeight());assertTrue(state.getWidth()>500);WallpaperTest helper=new WallpaperTest();View close=helper.text(root,"关闭");assertNotNull(close);close.performClick();org.robolectric.Shadows.shadowOf(android.os.Looper.getMainLooper()).idle();assertEquals(1,dismissed[0]);data.recycle();
 }
 @Test public void providerPickerKeepsFullWidthOptionsAndOriginalListAndGuide()throws Exception{
  View root=f.fixture.inflate(f.context,"dialog_wp_add"),guide=id(root,"guideline");RecyclerView list=f.rows(root,"v_list","item_wp_path",false,"蓝奏云","123云盘","SMB","FTP","FTPS","SFTP","WebDAV","小飞机","光鸭云盘");
  LegacyResourceTest.SettingsDialog dialog=new LegacyResourceTest.SettingsDialog(f.context,f.resource("layout","dialog_wp_add"));dialog.setContentView(root);dialog.show();CarUi.dialog(dialog);
  for(int[] screen:new int[][]{{1440,1920},{1920,1440}}){f.fixture.layout(f.activity.getWindow().getDecorView(),screen[0],screen[1]);CarUi.dialog(dialog);View decor=dialog.getWindow().getDecorView();int width=dialog.getWindow().getAttributes().width;decor.measure(View.MeasureSpec.makeMeasureSpec(width,View.MeasureSpec.EXACTLY),View.MeasureSpec.makeMeasureSpec(screen[1]-CarUi.dp(f.context,48),View.MeasureSpec.AT_MOST));f.fixture.layout(decor,width,decor.getMeasuredHeight());f.fixture.layout(decor,width,decor.getMeasuredHeight());assertSame(list,id(root,"v_list"));assertSame(guide,id(root,"guideline"));assertEquals(9,list.getAdapter().getItemCount());assertTrue(list.getChildCount()>1);int columns=((GridLayoutManager)list.getLayoutManager()).getSpanCount();assertTrue(columns>=2);assertTrue(list.getChildAt(0).getWidth()>=list.getWidth()/columns-CarUi.dp(f.context,16));assertEquals(top(list.getChildAt(0)),top(list.getChildAt(1)));assertEquals(Color.TRANSPARENT,((android.graphics.drawable.ColorDrawable)list.getBackground()).getColor());View close=new WallpaperTest().text(root,"关闭");assertTrue(top(close)+close.getHeight()<=top(decor)+decor.getHeight());assertTrue(decor.getHeight()<=screen[1]-CarUi.dp(f.context,48));f.capture(decor,width,decor.getHeight(),"r7-provider-picker-"+screen[0]+".png");}
  new WallpaperTest().text(root,"关闭").performClick();assertFalse(dialog.isShowing());
 }
 @Test public void wallpaperColorsIgnoreLegacyStrengthAndAllThemeTints()throws Exception{
  for(String theme:new String[]{"mono","warm","cyan"})for(int strength:new int[]{0,100}){
   f.activity.getSharedPreferences("car_ui_v1",0).edit().putString("theme",theme).putBoolean("dark",theme.equals("cyan")).commit();
   Wallpapers.Config c=new Wallpapers.Config();c.mode="particles";c.still=true;c.background=2;c.color=4;c.style=5;c.strength=strength;
   WallpaperView view=new WallpaperView(f.activity,true);view.configure(c);f.activity.setContentView(view);f.fixture.layout(view,480,640);Bitmap actual=Bitmap.createBitmap(480,640,Bitmap.Config.ARGB_8888);view.draw(new Canvas(actual));Bitmap expected=new WallpaperTest().frame(c,0);assertTrue("Wallpaper pixels must match raw pattern in "+theme,actual.sameAs(expected));actual.recycle();expected.recycle();
   c.mode="static";c.staticImage=0;WallpaperView picture=new WallpaperView(f.context,true);picture.configure(c);f.activity.setContentView(picture);f.fixture.layout(picture,480,640);actual=Bitmap.createBitmap(480,640,Bitmap.Config.ARGB_8888);picture.draw(new Canvas(actual));expected=Bitmap.createBitmap(480,640,Bitmap.Config.ARGB_8888);picture.getChildAt(0).draw(new Canvas(expected));assertTrue("Static image must match its unfiltered image layer",actual.sameAs(expected));actual.recycle();expected.recycle();
   c.staticImage=1;c.background=3;view.configure(c);actual=Bitmap.createBitmap(480,640,Bitmap.Config.ARGB_8888);view.draw(new Canvas(actual));assertEquals(Wallpapers.BACKGROUNDS[3],actual.getPixel(200,200));actual.recycle();
  }
 }
}
