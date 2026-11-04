package com.yunpan.appmanage.carui;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.Looper;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import java.io.File;
import java.io.FileOutputStream;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.Robolectric;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.Shadows;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;
import org.robolectric.annotation.LooperMode;
import static org.junit.Assert.*;

/** Regressions from the user's R2 device photos, using original row binder bodies. */
@RunWith(RobolectricTestRunner.class)
@Config(sdk=28,manifest=Config.NONE,qualifiers="w720dp-h960dp-xhdpi")
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@LooperMode(LooperMode.Mode.PAUSED)
public class R3RegressionTest {
    final LegacyResourceTest fixture=new LegacyResourceTest();Activity activity;Context context;
    @Before public void setup()throws Exception{
        activity=Robolectric.buildActivity(CarHomeTest.PreviewActivity.class).setup().get();context=fixture.apkContext(activity);
        context.getSharedPreferences("car_ui_v1",0).edit().clear().putString("theme","cyan").putBoolean("dark",true).commit();
        activity.setContentView(new FrameLayout(context));fixture.layout(activity.getWindow().getDecorView(),1440,1920);
    }
    View id(View root,String name){return root.findViewById(ResourceIndex.id(name));}
    int layoutId(String name){return context.getResources().getIdentifier(name,"layout",context.getPackageName());}
    void visibility(View root,String name,int value){View v=id(root,name);if(v!=null)v.setVisibility(value);}
    RecyclerView rows(View root,String name,c6.g adapter,boolean horizontal){RecyclerView r=(RecyclerView)id(root,name);r.setLayoutManager(new LinearLayoutManager(context,horizontal?0:1,false));r.setAdapter(adapter);return r;}
    TextView text(View root,String value){if(root instanceof TextView&&value.contentEquals(((TextView)root).getText()))return(TextView)root;if(root instanceof ViewGroup){ViewGroup g=(ViewGroup)root;for(int i=0;i<g.getChildCount();i++){TextView found=text(g.getChildAt(i),value);if(found!=null)return found;}}return null;}
    void capture(View root,int w,int h,String name)throws Exception{fixture.layout(root,w,h);Bitmap b=Bitmap.createBitmap(w,h,Bitmap.Config.ARGB_8888);root.draw(new Canvas(b));File file=new File(System.getProperty("carui.preview.dir"),"regressions-r3/"+name);file.getParentFile().mkdirs();try(FileOutputStream out=new FileOutputStream(file)){assertTrue(b.compress(Bitmap.CompressFormat.PNG,100,out));}b.recycle();}
    int top(View v){int[] p=new int[2];v.getLocationOnScreen(p);return p[1];}
    void sameLine(View a,View b){assertTrue("Icon/label center alignment",Math.abs((top(a)+a.getHeight()/2)-(top(b)+b.getHeight()/2))<=CarUi.dp(context,7));}

    @Test public void automationActionsAndOriginalLaboratoryRowsStayHorizontal()throws Exception{
        View root=fixture.inflate(context,"activity_automation");View back=id(root,"v_btn_return");final int[] clicks={0};back.setOnClickListener(v->clicks[0]++);
        x9.k3 adapter=new x9.k3();String[] titles={"按键映射：将物理按键映射指定的操作（原生系统驱动）","日志映射：将系统日志映射指定的操作（厂商应用驱动）","事件映射：将某些事件映射指定的操作（系统事件驱动）","悬浮按钮：悬浮一个按钮，自定义各种映射"};for(String name:titles)adapter.d.add(new x9.l3(R.drawable.tp_adb1,name));
        RecyclerView list=rows(root,"v_list",adapter,false);LegacyUi.surface(root,layoutId("activity_automation"));activity.setContentView(root);capture(root,1440,1920,"automation-cyan-portrait.png");
        assertSame(back,id(root,"v_btn_return"));back.performClick();assertEquals(1,clicks[0]);assertTrue("Compact return action",back.getWidth()<500&&back.getHeight()<160);assertTrue("Header actions share row",Math.abs(top(back)-top(id(root,"v_btn_set")))<12);assertTrue(list.getHeight()>1100);
        assertNull("Original service artwork must retain its colors",((ImageView)id(root,"v_btn_start_ico")).getColorFilter());
        View first=list.getChildAt(0);assertNotNull(first);sameLine(id(first,"v_ico"),id(first,"v_name"));assertEquals(titles[0],((TextView)id(first,"v_name")).getText().toString());
    }
    @Test public void legacyAuthoredToolIconsRecolorAfterThemeChanges()throws Exception{
        context.getSharedPreferences("car_ui_v1",0).edit().putString("theme","warm").putBoolean("dark",false).commit();View file=fixture.files(context);activity.setContentView(file);fixture.layout(file,1440,1920);
        context.getSharedPreferences("car_ui_v1",0).edit().putString("theme","cyan").putBoolean("dark",true).commit();CarUi.theme(file);capture(file,1440,1920,"files-warm-to-cyan-icons.png");
        ImageView icon=(ImageView)((ViewGroup)id(file,"v_btn_new")).getChildAt(0);assertNotNull("Authored legacy icons need a live theme tint",icon.getColorFilter());Bitmap pixels=Bitmap.createBitmap(icon.getWidth(),icon.getHeight(),Bitmap.Config.ARGB_8888);icon.draw(new Canvas(pixels));int count=0;for(int y=0;y<pixels.getHeight();y++)for(int x=0;x<pixels.getWidth();x++)if(pixels.getPixel(x,y)==CarUi.skin(context).ink)count++;assertTrue("Recolored icon has visible foreground pixels",count>3);pixels.recycle();
    }
    @Test public void functionVersionIsFooterAfterLateTextBinding()throws Exception{
        View root=fixture.inflate(context,"fragment_cmd");x9.b1 adapter=new x9.b1();for(String name:new String[]{"文件下载","内存清理","应用管理","自动化任务","设备信息","配置备份"})adapter.d.add(new com.yunpan.appmanage.bean.CmdBean(name,R.drawable.tp_adb1));
        RecyclerView list=(RecyclerView)id(root,"v_list");list.setLayoutManager(new androidx.recyclerview.widget.GridLayoutManager(context,3));list.setAdapter(adapter);LegacyUi.surface(root,layoutId("fragment_cmd"));
        CarHome home=new CarHome(activity,new Bridge(activity,root){@Override public void page(int p){}},root);activity.setContentView(home);home.showPage(0);fixture.layout(home,1440,1920);
        TextView footer=(TextView)id(root,"v_ts");footer.setText("当前使用的版本：v1.9.2_1922 公签版");capture(home,1440,1920,"functions-footer-cyan.png");assertTrue("Version must not overlay grid",top(list)+list.getHeight()<=top(footer));assertTrue(footer.getHeight()>0);assertFalse(footer.getParent() instanceof FrameLayout);
        TextView theme=text(home,"主题");assertNotNull(theme);assertEquals("Theme label horizontal center",Gravity.CENTER_HORIZONTAL,theme.getGravity()&Gravity.HORIZONTAL_GRAVITY_MASK);
    }
    @Test public void originalFileRootAndPathBindersKeepLabelsAndColoredIcons()throws Exception{
        View file=fixture.files(context);visibility(file,"v_read_ts_lay",View.GONE);RecyclerView data=(RecyclerView)id(file,"v_file_file");data.setLayoutManager(new LinearLayoutManager(context));data.setAdapter(new x9.m1());
        CarHome home=new CarHome(activity,new Bridge(activity,file){@Override public void page(int p){}},file);activity.setContentView(home);home.showPage(1);capture(home,1440,1920,"files-real-binders-cyan.png");
        RecyclerView roots=(RecyclerView)id(file,"v_file_root");View first=roots.getChildAt(0);TextView name=(TextView)id(first,"v_pathName");ImageView image=(ImageView)id(first,"v_ico");assertEquals("内部存储",name.getText().toString());assertTrue(name.getWidth()>0&&name.getHeight()>0);sameLine(image,name);assertNull("Artwork should not be color-filtered",image.getColorFilter());assertTrue(first.getHeight()<=roots.getHeight());
        assertNotNull(text(file,"当前目录暂无文件"));
        for(String action:new String[]{"v_btn_style","v_btn_coll","v_btn_length","v_btn_new","v_btn_multi","v_btn_reload"}){ViewGroup button=(ViewGroup)id(file,action);ImageView icon=(ImageView)button.getChildAt(0);assertEquals(View.VISIBLE,icon.getVisibility());assertTrue(icon.getDrawable().getBounds().width()>0);}
        ((x9.n4)roots.getAdapter()).d.set(0,new x9.w3("下载目录"));roots.getAdapter().notifyItemChanged(0);fixture.layout(home,1440,1920);assertNotNull(text(roots,"下载目录"));
    }
    View network(){
        View root=fixture.inflate(context,"fragment_file_wl");x9.o5 accounts=new x9.o5();accounts.d.add(new x9.n5(0,"添加连接"));accounts.d.add(new x9.n5(3,"布局测试 SMB"));rows(root,"v_gn1",accounts,true);
        x9.h0 stores=new x9.h0();stores.d.add(new x9.w3("内部存储"));rows(root,"v_gn2",stores,true);
        x9.s5 remote=new x9.s5();remote.d.add("切换");remote.d.add("新建");remote.d.add("刷新");rows(root,"v_dir_gn1",remote,true);x9.s5 local=new x9.s5();local.d.add("新建");local.d.add("切换");rows(root,"v_dir_gn2",local,true);
        x9.a6 netPath=new x9.a6();netPath.d.add(new com.yunpan.appmanage.bean.WpPathBean("根目录"));rows(root,"v_path1",netPath,true);x9.g0 localPath=new x9.g0();localPath.d.add(new x9.w3("内部存储"));rows(root,"v_path2",localPath,true);
        rows(root,"v_file1",new x9.m1(),false);rows(root,"v_file2",new x9.m1(),false);for(String name:new String[]{"v_read_ts_lay1","v_read_ts_lay2","v_loadDir_lay","v_loadMore_lay"})visibility(root,name,View.GONE);
        LegacyUi.surface(root,layoutId("fragment_file_wl"));return root;
    }
    void assertLoaderAndTools(View root){
        RecyclerView tools=(RecyclerView)id(root,"v_dir_gn1");View cell=tools.getChildAt(1);assertNotNull(cell);TextView name=(TextView)id(cell,"v_text_name");assertEquals("新建",name.getText().toString());cell.getOnFocusChangeListener().onFocusChange(cell,false);assertEquals(View.VISIBLE,name.getVisibility());sameLine(id(cell,"v_image_ico"),name);
        View hive=id(root,"v_readProgress2");assertEquals("Original Hive square width contract",CarUi.dp(context,100),hive.getMeasuredWidth());assertEquals(hive.getMeasuredWidth(),hive.getMeasuredHeight());assertTrue("Loader fits its data region",hive.getWidth()<=((View)hive.getParent()).getWidth()&&hive.getHeight()<=((View)hive.getParent()).getHeight());
    }
    @Test public void networkPopulatedToolsAndVisibleHiveKeepBoundsInPortrait()throws Exception{
        View root=network();activity.setContentView(root);capture(root,1440,1920,"network-bound-visible-loader-portrait.png");assertLoaderAndTools(root);
    }
    @Test @Config(qualifiers="w960dp-h720dp-land-xhdpi") public void networkPopulatedToolsAndVisibleHiveKeepBoundsInLandscape()throws Exception{
        View root=network();activity.setContentView(root);capture(root,1920,1440,"network-bound-visible-loader-land.png");assertLoaderAndTools(root);
    }
    @Test public void installerModeMenuUsesContentHeightInActualDialogWindow()throws Exception{
        View root=fixture.inflate(context,"dialog_menu");x9.m1 adapter=new x9.m1();for(String name:new String[]{"管家安装器","系统安装器","指定安装器","由打开方式"})adapter.d.add(name);RecyclerView list=rows(root,"v_list",adapter,false);
        LegacyResourceTest.SettingsDialog dialog=new LegacyResourceTest.SettingsDialog(context,layoutId("dialog_menu"));dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);dialog.setContentView(root);dialog.show();CarUi.dialog(dialog);Shadows.shadowOf(Looper.getMainLooper()).idle();
        assertEquals("Compact menu window wraps content",ViewGroup.LayoutParams.WRAP_CONTENT,dialog.getWindow().getAttributes().height);
        View decor=dialog.getWindow().getDecorView();int w=dialog.getWindow().getAttributes().width;
        for(int i=0;i<3;i++){decor.measure(View.MeasureSpec.makeMeasureSpec(w,View.MeasureSpec.EXACTLY),View.MeasureSpec.makeMeasureSpec(1824,View.MeasureSpec.AT_MOST));decor.layout(0,0,w,decor.getMeasuredHeight());Shadows.shadowOf(Looper.getMainLooper()).idle();}
        int h=decor.getMeasuredHeight();assertTrue("Four options must not have huge blank height: "+h,h<1000&&h>350);capture(decor,w,h,"installer-mode-window.png");assertEquals(4,list.getChildCount());for(int i=0;i<4;i++){View row=list.getChildAt(i);TextView label=(TextView)id(row,"v_name");assertTrue(label.getWidth()>0);sameLine(id(row,"v_ico"),label);}dialog.dismiss();
    }
}
