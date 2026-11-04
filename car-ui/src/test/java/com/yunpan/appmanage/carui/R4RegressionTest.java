package com.yunpan.appmanage.carui;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.LinearLayoutManager;
import java.io.File;
import java.io.FileOutputStream;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.Robolectric;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;
import org.robolectric.annotation.LooperMode;
import static org.junit.Assert.*;

/** Original binary XML and row resources; test data does not run business controllers. */
@RunWith(RobolectricTestRunner.class)
@Config(sdk=28,manifest=Config.NONE,qualifiers="w720dp-h960dp-xhdpi")
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@LooperMode(LooperMode.Mode.PAUSED)
public class R4RegressionTest {
    final LegacyResourceTest fixture=new LegacyResourceTest();Activity activity;Context context;
    @Before public void setup()throws Exception{activity=Robolectric.buildActivity(CarHomeTest.PreviewActivity.class).setup().get();context=fixture.apkContext(activity);activity.setContentView(new FrameLayout(context));fixture.layout(activity.getWindow().getDecorView(),1440,1920);}
    View id(View root,String name){return root.findViewById(ResourceIndex.id(name));}
    int resource(String type,String name){return context.getResources().getIdentifier(name,type,context.getPackageName());}
    int top(View v){int[] p=new int[2];v.getLocationOnScreen(p);return p[1];}
    RecyclerView rows(View root,String name,final String layout,boolean horizontal,final String... labels){
        RecyclerView list=(RecyclerView)id(root,name);list.setLayoutManager(new LinearLayoutManager(context,horizontal?0:1,false));list.setAdapter(new c6.g(){
            {for(String s:labels)d.add(s);}
            @Override public RecyclerView.ViewHolder B(Context c,ViewGroup parent,int type){return new h6.a(resource("layout",layout),parent);}
            @Override public void z(RecyclerView.ViewHolder h,int p,Object bean){View root=h.itemView;View label=id(root,"v_name");if(label instanceof TextView)((TextView)label).setText((String)bean);View content=id(root,"v_text_content");if(content instanceof TextView)((TextView)content).setText((String)bean);View type=id(root,"v_text_type");if(type instanceof TextView)((TextView)type).setText("映射操作：");}
        });return list;
    }
    void capture(View root,int w,int h,String name)throws Exception{fixture.layout(root,w,h);Bitmap bitmap=Bitmap.createBitmap(w,h,Bitmap.Config.ARGB_8888);root.draw(new Canvas(bitmap));File out=new File(System.getProperty("carui.preview.dir"),"regressions-r4/"+name);out.getParentFile().mkdirs();try(FileOutputStream stream=new FileOutputStream(out)){assertTrue(bitmap.compress(Bitmap.CompressFormat.PNG,100,stream));}bitmap.recycle();}
    void adapt(View root,String layout){LegacyUi.surface(root,resource("layout",layout));activity.setContentView(root);}
    @Test public void originalMappingEditorsRetainCommandsSelectorsAndMapArea()throws Exception{
        for(String theme:new String[]{"warm","cyan","mono"})for(String layout:new String[]{"activity_float_button","activity_sidebar","dialog_keymap_diy"}){
            context.getSharedPreferences("car_ui_v1",0).edit().putString("theme",theme).putBoolean("dark",theme.equals("cyan")).commit();View root=fixture.inflate(context,layout);
            RecyclerView commands=rows(root,layout.equals("activity_sidebar")?"v_list_top":"v_list_gn","item_btn1",true,"返回","设置","添加映射");
            RecyclerView keys=rows(root,"v_list_key","item_btn2",false,"单击","双击","长按","上滑","下滑","左滑","右滑"),maps=rows(root,"v_list_map","item_key_map_gn",false,"返回键");
            View regions=id(root,"v_list_cb");if(regions!=null)rows(root,"v_list_cb","item_btn2",false,"左侧","右侧","底部");View toggle=id(root,"v_select_open");final int[] clicks={0};if(toggle!=null)toggle.setOnClickListener(v->clicks[0]++);
            adapt(root,layout);
            for(int[] size:new int[][]{{1440,1920},{1920,1440}}){capture(root,size[0],size[1],layout+"-"+theme+"-"+size[0]+".png");assertSame(commands,id(root,layout.equals("activity_sidebar")?"v_list_top":"v_list_gn"));assertTrue(commands.getHeight()>80&&commands.getHeight()<220);assertEquals(3,commands.getChildCount());assertTrue(keys.getHeight()>600);assertTrue(maps.getHeight()>600);assertTrue(maps.getWidth()>500);assertTrue("Selector must sit beside maps",keys.getRight()<=((View)maps.getParent()).getLeft());assertTrue("Map row has visible height",maps.getChildAt(0).getHeight()>50);View divider=id(root,"v_view1");assertNotNull(divider);assertTrue("Original thin line cannot consume content",divider.getVisibility()==View.GONE||divider.getHeight()<=8);}
            if(toggle!=null){assertSame(toggle,id(root,"v_select_open"));toggle.performClick();assertEquals(1,clicks[0]);assertTrue(toggle.getWidth()<900);}
        }
    }
    @Test public void floatingAppearanceKeepsOneBoundedScrollAndFixedFooter()throws Exception{
        View root=fixture.inflate(context,"activity_float_button_set");View scroll=id(root,"v_scroll"),back=id(root,"v_btn_return"),yes=id(root,"v_btn_yes");SeekBar size=(SeekBar)id(root,"v_seek_size");size.setProgress(37);
        rows(root,"v_list_ico","item_btn1",true,"图标1","图标2","自定义");rows(root,"v_list_set","item_check_no_bg",false,"60秒未触摸屏幕时自动隐藏","允许拖到屏幕外","锁定位置");adapt(root,"activity_float_button_set");
        for(int[] dimensions:new int[][]{{1440,1920},{1920,1440}}){capture(root,dimensions[0],dimensions[1],"float-appearance-"+dimensions[0]+".png");assertSame(scroll,id(root,"v_scroll"));assertTrue(scroll.getHeight()>dimensions[1]/2);assertTrue("Footer stays outside scrolling form",top(scroll)+scroll.getHeight()<=top(back));assertTrue(Math.abs(top(back)-top(yes))<5);assertEquals(37,size.getProgress());View line=id(root,"v_view1");assertTrue(line.getHeight()<=8);assertEquals(100,id(root,"v_ico").getHeight());}
    }
    @Test public void dialogFormsAndFilePickerKeepTheirOriginalViewports()throws Exception{
        for(String name:new String[]{"dialog_add_intent","dialog_key_map_event_add","dialog_select_file"}){
            View root=fixture.inflate(context,name);View localList=id(root,name.equals("dialog_select_file")?"v_file":"v_list");int originalHeight=localList==null?0:localList.getLayoutParams().height;
            if(localList!=null)rows(root,name.equals("dialog_select_file")?"v_file":"v_list","item_btn1",false,"原列表内容");
            if(name.equals("dialog_select_file")){rows(root,"v_sd","item_btn1",true,"内部存储");rows(root,"v_path","item_btn1",true,"Download");id(root,"v_loading").setVisibility(View.GONE);id(root,"v_read_ts_lay").setVisibility(View.GONE);}
            if(name.equals("dialog_add_intent")){rows(root,"v_list_mode","item_btn1",true,"启动页面","发送广播");rows(root,"v_list_type","item_btn1",true,"Intent");}
            LegacyResourceTest.SettingsDialog dialog=new LegacyResourceTest.SettingsDialog(context,resource("layout",name));dialog.setContentView(root);dialog.show();CarUi.dialog(dialog);
            for(int[] size:new int[][]{{1440,1920},{1920,1440}}){fixture.layout(activity.getWindow().getDecorView(),size[0],size[1]);CarUi.dialog(dialog);android.view.WindowManager.LayoutParams attributes=dialog.getWindow().getAttributes();View decor=dialog.getWindow().getDecorView();decor.measure(View.MeasureSpec.makeMeasureSpec(attributes.width,View.MeasureSpec.EXACTLY),View.MeasureSpec.makeMeasureSpec(attributes.height>0?attributes.height:size[1]-CarUi.dp(context,48),attributes.height>0?View.MeasureSpec.EXACTLY:View.MeasureSpec.AT_MOST));int windowHeight=decor.getMeasuredHeight();capture(decor,attributes.width,windowHeight,name+"-"+size[0]+".png");assertTrue(attributes.width<=size[0]);assertTrue(windowHeight<=size[1]);if(localList!=null){assertSame(localList,id(root,name.equals("dialog_select_file")?"v_file":"v_list"));assertTrue(localList.getHeight()>50);if(originalHeight>0)assertEquals("Fixed-height local list retained",originalHeight,localList.getHeight());}if(name.equals("dialog_add_intent")){View scroll=id(root,"v_scroll");assertTrue(top(scroll)+scroll.getHeight()<=top(id(root,"v_lay_bottom")));}if(name.equals("dialog_select_file"))assertTrue(localList.getHeight()>windowHeight/2);}
            if(name.equals("dialog_add_intent")){assertTrue("Remark field shares compact footer",Math.abs(top(id(root,"v_edit_name"))-top(id(root,"v_btn_return")))<10);assertEquals(android.view.Gravity.START,((TextView)id(root,"v_ts0")).getGravity()&android.view.Gravity.RELATIVE_HORIZONTAL_GRAVITY_MASK);}
            dialog.dismiss();
        }
    }
    @Test public void sidebarPreviewAndLongFormsPreserveFunctionalRegions()throws Exception{
        android.content.res.Configuration configuration=context.getResources().getConfiguration();configuration.fontScale=1.3f;context.getResources().updateConfiguration(configuration,context.getResources().getDisplayMetrics());
        View root=fixture.inflate(context,"activity_sidebar_set");View left=id(root,"v_left"),right=id(root,"v_right"),bottom=id(root,"v_bottom");adapt(root,"activity_sidebar_set");capture(root,1440,1920,"sidebar-appearance-font130.png");assertSame(left,id(root,"v_left"));assertTrue(left.getWidth()>0&&left.getHeight()>0);assertTrue(right.getWidth()>0&&right.getHeight()>0);assertTrue(bottom.getWidth()>0&&bottom.getHeight()>0);assertEquals(View.VISIBLE,left.getVisibility());View scroll=id(root,"v_scroll");assertTrue(scroll.getHeight()>500);assertTrue(top(scroll)+scroll.getHeight()<=top(id(root,"v_lay_bottom")));
    }
    @Test public void hiddenOriginalContentCannotReserveVisibleEditorsSpace()throws Exception{
        View root=fixture.inflate(context,"activity_keymap_general");View scroll=id(root,"v_list");scroll.setVisibility(View.GONE);
        android.view.SurfaceView editor=new android.view.SurfaceView(context);((ViewGroup)root).addView(editor,new ViewGroup.LayoutParams(-1,0));rows(root,"v_list_gn","item_btn1",true,"返回","查找");adapt(root,"activity_keymap_general");fixture.layout(root,1440,1920);assertTrue("Hidden viewport must not take weight",editor.getHeight()>1150);scroll.setVisibility(View.VISIBLE);editor.setVisibility(View.GONE);fixture.layout(root,1440,1920);assertTrue("Later visible original viewport gets the space",scroll.getHeight()>1150);assertEquals(View.GONE,((View)editor.getParent()).getVisibility());
    }
    @Test public void codeEditorKeepsDirectAnchorsForLateBusinessContent()throws Exception{
        View root=fixture.inflate(context,"activity_code_editor");View topBar=id(root,"v_lay_top"),bottomBar=id(root,"v_list_bottom");rows(root,"v_list_top","item_btn1",true,"返回","查找");rows(root,"v_list_bottom","item_btn1",true,"保存","撤销");id(root,"v_lay_search").setVisibility(View.GONE);id(root,"v_ts_load").setVisibility(View.GONE);adapt(root,"activity_code_editor");assertSame(root,topBar.getParent());assertSame(root,bottomBar.getParent());
        android.view.SurfaceView editor=new android.view.SurfaceView(context);androidx.constraintlayout.widget.ConstraintLayout.LayoutParams p=new androidx.constraintlayout.widget.ConstraintLayout.LayoutParams(0,0);p.topToBottom=topBar.getId();p.bottomToTop=bottomBar.getId();p.startToStart=0;p.endToEnd=0;((ViewGroup)root).addView(editor,p);fixture.layout(root,1440,1920);assertSame(root,editor.getParent());assertTrue(editor.getHeight()>1500);assertTrue(top(editor)>=top(topBar)+topBar.getHeight());assertTrue(top(editor)+editor.getHeight()<=top(bottomBar));
    }
    @Test public void selectorAndBodyFamiliesHaveIndependentBoundedAreas()throws Exception{
        for(String name:new String[]{"activity_immersive","activity_keymap_general","activity_key_map_logcat","activity_apps_permissions_allow","activity_app_pss"}){
            View root=fixture.inflate(context,name);String header=name.equals("activity_app_pss")?"v_list_type":"v_list_gn",body=name.equals("activity_immersive")||name.equals("activity_app_pss")?"v_list_app":name.equals("activity_apps_permissions_allow")?"v_list_permissions":"v_list";
            RecyclerView commands=rows(root,header,"item_btn1",true,"返回","设置");RecyclerView data=rows(root,body,"item_btn1",false,"测试内容1","测试内容2");adapt(root,name);fixture.layout(root,1440,1920);assertTrue(name+" header collapsed",commands.getHeight()>80&&commands.getHeight()<220);assertTrue(name+" body collapsed",data.getHeight()>960);assertTrue(name+" header/body overlap",top(commands)+commands.getHeight()<=top(data));}
    }
}
