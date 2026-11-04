package com.yunpan.appmanage.carui;

import android.app.Dialog;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.view.View;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.yunpan.appmanage.bean.StrIntBoolBean;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;
import org.robolectric.annotation.LooperMode;
import static org.junit.Assert.*;

/** Real binary XML, original t1/y0 binders, and final dialog-window measurements.
 * Business actions are never executed. Runtime evidence covers actual controllers. */
@RunWith(RobolectricTestRunner.class)
@Config(sdk=28,manifest=Config.NONE,qualifiers="w720dp-h960dp-xhdpi")
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@LooperMode(LooperMode.Mode.PAUSED)
public class R5RegressionTest {
    final R4RegressionTest f=new R4RegressionTest();
    @Before public void setup()throws Exception{f.setup();}
    View id(View v,String n){return f.id(v,n);}
    Dialog show(View root,String layout){
        // ha.a4 really installs both callbacks before its show hook runs.
        id(root,"v_root").setOnClickListener(v->{});
        id(root,"v_root2").setOnClickListener(v->{});
        Dialog dialog=new LegacyResourceTest.SettingsDialog(f.context,f.resource("layout",layout));
        dialog.setOwnerActivity(f.activity);dialog.setContentView(root);dialog.show();CarUi.dialog(dialog);return dialog;
    }
    void measure(Dialog dialog,int w,int h,String name)throws Exception{
        f.fixture.layout(f.activity.getWindow().getDecorView(),w,h);CarUi.dialog(dialog);
        WindowManager.LayoutParams p=dialog.getWindow().getAttributes();View decor=dialog.getWindow().getDecorView();
        decor.measure(View.MeasureSpec.makeMeasureSpec(p.width,View.MeasureSpec.EXACTLY),View.MeasureSpec.makeMeasureSpec(p.height>0?p.height:h-96,p.height>0?View.MeasureSpec.EXACTLY:View.MeasureSpec.AT_MOST));
        f.capture(decor,p.width,decor.getMeasuredHeight(),"../regressions-r5/"+name+"-"+w+".png");
        assertTrue(decor.getWidth()<=w);assertTrue(decor.getHeight()<=h);
        assertTrue((p.flags&WindowManager.LayoutParams.FLAG_DIM_BEHIND)!=0);assertTrue(p.dimAmount>=.4f);
    }
    void within(View child,View window){int[] c=new int[2],p=new int[2];child.getLocationOnScreen(c);window.getLocationOnScreen(p);assertTrue(c[0]>=p[0]&&c[0]+child.getWidth()<=p[0]+window.getWidth());}
    @Test public void fileMenuLatePopulationShrinksAndRetainsRealBinder()throws Exception{
        View root=f.fixture.inflate(f.context,"dialog_file_menu_center");RecyclerView list=(RecyclerView)id(root,"v_list");
        x9.t1 adapter=new x9.t1();list.setLayoutManager(new LinearLayoutManager(f.context));list.setAdapter(adapter);
        Dialog dialog=show(root,"dialog_file_menu_center");
        // ua.q8 shows first, then hides metadata and fills t1; ha.u5 can reveal metadata later.
        View metadata=id(root,"v_apk_lay");metadata.setVisibility(View.GONE);id(root,"v_cancel_default_text").setVisibility(View.GONE);
        for(String action:new String[]{"浏览","删除","改名","压缩","复制","剪切","分享","复制2","剪切2","传送","属性","返回"})adapter.d.add(new x9.l3(com.yunpan.appmanage.R.drawable.tp_check1,action));adapter.notifyDataSetChanged();
        for(int[] size:new int[][]{{1440,1920},{1920,1440}}){measure(dialog,size[0],size[1],"file-menu");assertSame(adapter,list.getAdapter());assertEquals(12,list.getChildCount());assertTrue(dialog.getWindow().getDecorView().getHeight()<size[1]*.8);for(int i=0;i<list.getChildCount();i++)within(list.getChildAt(i),dialog.getWindow().getDecorView());}
        int before=dialog.getWindow().getDecorView().getHeight();metadata.setVisibility(View.VISIBLE);measure(dialog,1920,1440,"file-menu-metadata");assertSame(metadata,id(root,"v_apk_lay"));assertTrue(metadata.getHeight()>0);assertTrue(dialog.getWindow().getDecorView().getHeight()>before);dialog.dismiss();
    }
    @Test public void realLongLogChecksAndEveryCommandFitClickablePanel()throws Exception{
        View root=f.fixture.inflate(f.context,"dialog_key_map_logcat_add");RecyclerView checks=(RecyclerView)id(root,"v_list_check");checks.setLayoutManager(new LinearLayoutManager(f.context,0,false));x9.y0 adapter=new x9.y0(true);
        for(String label:new String[]{"开启","等松开日志","仅触发一次","N秒内仅触发一次","长按松开不再执行单击操作"})adapter.d.add(new x9.x0(label,true));checks.setAdapter(adapter);
        f.rows(root,"v_list","item_key_map_gn",false,"原映射动作");View save=id(root,"v_btn_click_save");final int[] calls={0};save.setOnClickListener(v->calls[0]++);Dialog dialog=show(root,"dialog_key_map_logcat_add");
        for(int[] size:new int[][]{{1440,1920},{1920,1440}}){measure(dialog,size[0],size[1],"log-form");assertEquals(5,checks.getChildCount());assertSame(adapter,checks.getAdapter());assertTrue("Label and input share one compact row",Math.abs(f.top(id(root,"v_edit_name"))-f.top(id(root,"v_ts1")))<65);for(int i=0;i<checks.getChildCount();i++){within(checks.getChildAt(i),dialog.getWindow().getDecorView());assertEquals(View.VISIBLE,id(checks.getChildAt(i),"v_ico").getVisibility());}for(String n:new String[]{"v_btn_click","v_btn_click_double","v_btn_click_long","v_btn_click_zh","v_btn_click_save"}){assertTrue(id(root,n).getHeight()>80);within(id(root,n),dialog.getWindow().getDecorView());}}
        assertSame(save,id(root,"v_btn_click_save"));save.performClick();assertEquals(1,calls[0]);dialog.dismiss();
    }
    @Test public void doorFooterRetainsToggleOutsideBoundedScroll()throws Exception{
        View root=f.fixture.inflate(f.context,"dialog_add_door_log");f.rows(root,"v_list_mode","item_check_no_bg",true,"一条日志里有四门的值","每个车门一条日志");f.rows(root,"v_list","item_btn1",false,"第一个开门时","主驾门打开时","主驾门关闭时");
        View toggle=id(root,"v_select_open");Dialog dialog=show(root,"dialog_add_door_log");
        for(int[] size:new int[][]{{1440,1920},{1920,1440}}){measure(dialog,size[0],size[1],"door-form");View scroll=id(root,"v_scroll"),back=id(root,"v_btn_return"),yes=id(root,"v_btn_yes");assertTrue(scroll.getHeight()>400);assertTrue(f.top(scroll)+scroll.getHeight()<=f.top(back));assertSame(toggle,id(root,"v_select_open"));assertTrue(toggle.getWidth()>100);within(toggle,dialog.getWindow().getDecorView());assertTrue(Math.abs(f.top(back)-f.top(yes))<5);assertTrue(Math.abs(f.top(back)-f.top(toggle))<5);}
        dialog.dismiss();
    }
    @Test public void downloadUsesActualSixRowResourcesWithoutOneLineCap()throws Exception{
        View root=f.fixture.inflate(f.context,"activity_download");for(String n:new String[]{"v_lay_qrcode","v_lay_history","v_help","v_loading","v_lay_load_more"})id(root,n).setVisibility(View.GONE);
        RecyclerView commands=f.rows(root,"v_list_gn","item_btn3",true,"打开","历史","扫码","推送","说明","返回");f.rows(root,"v_list_file","item_btn1",false);f.rows(root,"v_list_down","item_btn1",false);f.adapt(root,"activity_download");
        for(int[] size:new int[][]{{1440,1920},{1920,1440}}){f.fixture.layout(root,size[0],size[1]);assertEquals(6,commands.getChildCount());assertTrue(commands.getHeight()>150);for(int i=0;i<commands.getChildCount();i++){View row=commands.getChildAt(i);assertTrue(row.getBottom()<=commands.getHeight());}assertTrue(id(root,"v_list_down").getHeight()>200);}
    }
    @Test public void networkEmptyRemoteKeepsParallelLocalBrowser()throws Exception{
        View root=f.fixture.inflate(f.context,"fragment_file_wl");for(String n:new String[]{"v_loadDir_lay","v_loadMore_lay","v_readProgress2"})id(root,n).setVisibility(View.GONE);
        RecyclerView remote=f.rows(root,"v_file1","item_btn1",false),path=f.rows(root,"v_path1","item_btn1",true),local=f.rows(root,"v_file2","item_btn1",false,"本地文件");f.adapt(root,"fragment_file_wl");f.fixture.layout(root,1440,1920);assertTrue(remote.getHeight()>1000&&local.getHeight()>1000);int[] a=new int[2],b=new int[2];remote.getLocationOnScreen(a);local.getLocationOnScreen(b);assertTrue(a[0]<b[0]);
        c6.g adapter=(c6.g)path.getAdapter();adapter.d.add("已选择网盘");adapter.notifyDataSetChanged();f.fixture.layout(root,1440,1920);assertTrue(remote.getHeight()>300);assertTrue(local.getHeight()>300);
    }
    @Test public void blurSoftensEdgeAndWindowDimDoesNotReplaceDismissCallback()throws Exception{
        Bitmap bitmap=Bitmap.createBitmap(40,40,Bitmap.Config.ARGB_8888);for(int y=0;y<40;y++)for(int x=0;x<40;x++)bitmap.setPixel(x,y,x<20?Color.BLACK:Color.WHITE);FrostedDialogs.blur(bitmap,4);int middle=Color.red(bitmap.getPixel(19,20));assertTrue(middle>20&&middle<230);assertEquals(0,Color.red(bitmap.getPixel(0,20)));bitmap.recycle();
        Dialog dialog=new Dialog(f.context);dialog.setOwnerActivity(f.activity);dialog.setContentView(new TextView(f.context));final int[] dismissed={0};dialog.setOnDismissListener(d->dismissed[0]++);dialog.show();CarUi.decorateDialog(dialog);assertTrue(dialog.getWindow().getAttributes().dimAmount>=.4f);dialog.dismiss();org.robolectric.Shadows.shadowOf(android.os.Looper.getMainLooper()).idle();assertEquals(1,dismissed[0]);
    }
    @Test public void nativeKeyEnableToggleCannotCollapseToOriginalZeroHeight()throws Exception{
        View root=f.fixture.inflate(f.context,"dialog_key_map_acc_add");View toggle=id(root,"v_select_open");final int[] calls={0};toggle.setOnClickListener(v->calls[0]++);Dialog dialog=show(root,"dialog_key_map_acc_add");measure(dialog,1440,1920,"key-enable");assertSame(toggle,id(root,"v_select_open"));assertTrue("toggle height "+toggle.getHeight()+" expected "+CarUi.dp(f.context,52),toggle.getHeight()>=CarUi.dp(f.context,52));within(toggle,dialog.getWindow().getDecorView());toggle.performClick();assertEquals(1,calls[0]);dialog.dismiss();
    }
    Object field(Object object,String name)throws Exception{java.lang.reflect.Field f=object.getClass().getDeclaredField(name);f.setAccessible(true);return f.get(object);}
    @Test public void replacementAndOwnerResizeReleasePreviousSnapshotAndDismissReleasesLast()throws Exception{
        Dialog dialog=show(f.fixture.inflate(f.context,"dialog_clean_mode"),"dialog_clean_mode");Object first=dialog.getWindow().getDecorView().getBackground();Bitmap firstImage=(Bitmap)field(first,"bitmap");assertNotNull(firstImage);
        // Reproduce theme()/dialog() replacing the background before apply().
        dialog.getWindow().setBackgroundDrawable(new android.graphics.drawable.ColorDrawable(Color.RED));CarUi.dialog(dialog);assertTrue((Boolean)field(first,"released"));assertTrue(firstImage.isRecycled());
        Object second=dialog.getWindow().getDecorView().getBackground();f.fixture.layout(f.activity.getWindow().getDecorView(),1920,1440);assertTrue((Boolean)field(second,"released"));Object last=dialog.getWindow().getDecorView().getBackground();assertNotSame(second,last);assertFalse((Boolean)field(last,"released"));
        dialog.dismiss();org.robolectric.Shadows.shadowOf(android.os.Looper.getMainLooper()).idle();assertTrue((Boolean)field(last,"released"));assertNull(field(last,"bitmap"));assertNull(dialog.getWindow().getDecorView().getTag(0x7e434107));
    }
}
