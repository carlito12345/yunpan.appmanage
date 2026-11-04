package com.yunpan.appmanage.carui;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

/** Recompose the original business widgets. IDs, instances, adapters and listeners survive. */
public final class LegacyUi {
    private static final int LAYOUT=0x7e434101, REWRITTEN=0x7e434102, ROLE=0x7e434103, SELECTED=0x7e434104, ORDER=0x7e434105, FULL=0x7e434106, QR_DIALOG=0x7e434108, NETWORK_ROW=0x7e434109;
    private static final String TAG="CarUi";
    private static int d(View v,int n){return CarUi.dp(v.getContext(),n);}
    private static LinearLayout column(Context c){LinearLayout l=new LinearLayout(c);l.setOrientation(1);return l;}
    private static View find(View root,String id){int value=ResourceIndex.id(id);return value==0?null:root.findViewById(value);}
    private static void detach(View v){if(v!=null&&v.getParent() instanceof ViewGroup)((ViewGroup)v.getParent()).removeView(v);}
    private static List<View> children(ViewGroup g){List<View> list=new ArrayList<View>();for(int i=0;i<g.getChildCount();i++)list.add(g.getChildAt(i));return list;}
    private static boolean recycler(View v){return v!=null&&(v.getClass().getName().contains("RecyclerView")||v.getClass().getSimpleName().equals("FixtureRecycler"));}
    private static boolean scroll(View v){return v.getClass().getName().contains("ScrollView");}
    private static boolean content(View v){String n=v.getClass().getName();String id=CarUi.name(v);return recycler(v)||scroll(v)||n.contains("TabLayout")||n.contains("ViewPager")||n.contains("WebView")||n.contains("CodeEditor")||n.contains("SurfaceView")||n.contains("TextureView")||n.contains("VideoView")||n.contains("MyImageView")||id.equals("v_image");}
    private static boolean overlay(View v){String n=CarUi.name(v);return n.equals("v_loading")||n.equals("v_ts")||n.equals("v_ts_load")||n.equals("v_qrCode")||n.startsWith("v_read_ts_lay")||n.startsWith("v_readProgress")||n.equals("v_loadDir_lay");}
    private static void add(LinearLayout parent,View view,int height){if(view==null)return;detach(view);LinearLayout.LayoutParams lp=new LinearLayout.LayoutParams(-1,height);lp.bottomMargin=d(parent,8);parent.addView(view,lp);}
    private static void fill(ViewGroup root,View content,boolean stretch){root.removeAllViews();root.setPadding(0,0,0,0);root.addView(content,new ViewGroup.LayoutParams(-1,stretch?-1:-2));}
    private static void weighted(LinearLayout col,View view){if(view==null)return;detach(view);col.addView(view,new LinearLayout.LayoutParams(-1,0,1));}
    private static void label(LinearLayout parent,String value){TextView t=CarUi.text(parent.getContext(),value,20,CarUi.skin(parent.getContext()).ink,true);t.setTag(ROLE,"section");t.setPadding(0,d(parent,20),0,d(parent,10));add(parent,t,-2);}
    private static Object field(Object o,String name)throws Exception{Class<?> c=o.getClass();while(c!=null){try{Field f=c.getDeclaredField(name);f.setAccessible(true);return f.get(o);}catch(NoSuchFieldException e){c=c.getSuperclass();}}throw new NoSuchFieldException(name);}

    public static void activity(Activity a){
        try{int res=(Integer)a.getClass().getMethod("t").invoke(a);ViewGroup content=(ViewGroup)a.findViewById(android.R.id.content);if(content!=null&&content.getChildCount()>0)surface(content.getChildAt(0),res);}
        catch(Exception e){Log.w(TAG,"Activity layout adaptation: "+a.getClass().getName(),e);}
    }
    public static void fragment(Object f){try{surface((View)field(f,"a"),(Integer)f.getClass().getMethod("j").invoke(f));}catch(Exception e){Log.w(TAG,"Fragment layout adaptation",e);}}
    public static void inflated(View view,int layout){if(view!=null){view.setTag(LAYOUT,layout);orders(view,layout);}}
    private static void orders(View root,int layout){for(String entry:ResourceIndex.order(layout).split(";")){int colon=entry.indexOf(':');if(colon<0)continue;View v=root;String path=entry.substring(0,colon);try{for(String part:path.split("/"))if(!part.isEmpty())v=((ViewGroup)v).getChildAt(Integer.parseInt(part));if(v!=null)v.setTag(ORDER,entry.substring(colon+1));}catch(Exception e){Log.w(TAG,"Layout order "+ResourceIndex.layout(layout)+path,e);}}}
    public static void holder(Object holder,Object bean){try{bound((View)field(holder,"itemView"),bean);}catch(Exception e){Log.w(TAG,"Bound row adaptation",e);}}
    public static void dialog(final Dialog dialog){
        try{int res=dialogLayout(dialog);if(res==0)return;View root=find(dialog.getWindow().getDecorView(),"v_root");if(root==null){ViewGroup content=(ViewGroup)dialog.findViewById(android.R.id.content);if(content!=null&&content.getChildCount()>0)root=content.getChildAt(0);}if(root==null)return;
            if(ResourceIndex.layout(res).equals("dialog_login_qrcode")||ResourceIndex.layout(res).equals("dialog_wp_add"))root.setTag(QR_DIALOG,new java.lang.ref.WeakReference<Dialog>(dialog));
            if("dialog_set".equals(ResourceIndex.layout(res)))settings((ViewGroup)root,dialog);else surface(root,res);
        }catch(Exception e){Log.w(TAG,"Dialog layout adaptation",e);}
    }
    static int dialogLayout(Dialog dialog){try{Object layout=field(dialog,"c");return layout instanceof Integer?(Integer)layout:0;}catch(Exception ignored){return 0;}}
    public static boolean fullDialog(Dialog dialog){try{String name=ResourceIndex.layout((Integer)field(dialog,"c"));View root=find(dialog.getWindow().getDecorView(),"v_root");return root!=null&&Boolean.TRUE.equals(root.getTag(FULL))||name.equals("dialog_set")||name.equals("dialog_keymap_diy")||name.equals("dialog_telnet_shell")||ResourceIndex.strategy((Integer)field(dialog,"c")).equals("media");}catch(Exception e){return false;}}
    public static boolean menuDialog(Dialog dialog){try{return ResourceIndex.layout((Integer)field(dialog,"c")).equals("dialog_menu");}catch(Exception e){return false;}}
    public static void surface(View root,int layout){
        if(!(root instanceof ViewGroup))return;String name=ResourceIndex.layout(layout);if(name.isEmpty())return;
        root.setTag(LAYOUT,layout);if(root.getTag(REWRITTEN)!=null){retheme(root);return;}orders(root,layout);
        root.setTag(REWRITTEN,Boolean.TRUE);String strategy=ResourceIndex.strategy(layout);
        if(!"overlay".equals(strategy))root.setBackgroundColor(CarUi.skin(root.getContext()).background);
        if("apps".equals(strategy))apps((ViewGroup)root);
        else if("files".equals(strategy))files((ViewGroup)root);
        else if("network".equals(strategy))network((ViewGroup)root);
        else if(name.equals("fragment_cmd"))tools((ViewGroup)root);
        else if(name.equals("activity_automation"))automation((ViewGroup)root);
        else if(name.equals("activity_float_button")||name.equals("activity_sidebar")||name.equals("dialog_keymap_diy"))mapping((ViewGroup)root,name);
        else if(name.equals("activity_download"))downloads((ViewGroup)root);
        else if(name.equals("activity_key_map_logcat")||name.equals("activity_key_map_acc")||name.equals("activity_key_map_event")||name.equals("activity_auto_click_usb_set"))mappingList((ViewGroup)root,name);
        else if(name.startsWith("dialog_file_menu_"))fileMenu((ViewGroup)root);
        else if(name.equals("dialog_clean_mode"))cleanMode((ViewGroup)root);
        else if(name.equals("dialog_share"))transferQr((ViewGroup)root);
        else if(name.equals("dialog_login_qrcode"))loginQr((ViewGroup)root);
        else if(name.equals("dialog_key_map_logcat_add")||name.equals("dialog_key_map_acc_add")||name.equals("dialog_key_map_broadcast_add")||name.equals("dialog_add_door_log"))mappingForm((ViewGroup)root,name);
        else if(name.equals("activity_code_editor")){for(String id:new String[]{"v_list_top","v_list_bottom"}){View bar=find(root,id);if(bar!=null){ViewGroup.LayoutParams p=bar.getLayoutParams();p.height=selectorHeight(bar);bar.setLayoutParams(p);}}}
        else if(name.equals("activity_sidebar_set")){View form=find(root,"v_scroll");if(form instanceof ViewGroup)generic((ViewGroup)form,false);View bottom=find(root,"v_lay_bottom");if(bottom instanceof ViewGroup)generic((ViewGroup)bottom,false);}
        else if(name.equals("dialog_menu")||name.equals("dialog_select_installer")||name.equals("dialog_wp_add"))listDialog((ViewGroup)root);
        else if(!"preserve-shell".equals(strategy)&&!"overlay".equals(strategy)){
            boolean dialog=name.startsWith("dialog_");View inner=dialog?find(root,"v_root2"):null;
            if(inner instanceof ViewGroup){boolean bounded=find(inner,"v_lay_bottom")!=null&&find(inner,"v_scroll")!=null||name.equals("dialog_select_file")||name.equals("dialog_copy_to_dir")||name.equals("dialog_move_to_dir")||name.equals("dialog_save_new_file")||name.equals("dialog_key_selector");if(bounded)root.setTag(FULL,Boolean.TRUE);generic((ViewGroup)inner,bounded,true);ViewGroup r=(ViewGroup)root;detach(inner);if(bounded||hasScroll(inner))fill(r,inner,bounded);else{ScrollView scroll=new ScrollView(root.getContext());scroll.setFillViewport(false);scroll.addView(inner,new ScrollView.LayoutParams(-1,-2));fill(r,scroll,false);}}
            else generic((ViewGroup)root,!dialog,true);
        }
        CarUi.theme(root);retheme(root);
    }

    private static void tools(ViewGroup root){
        View list=find(root,"v_list"),footer=find(root,"v_ts");LinearLayout col=column(root.getContext());
        if(list!=null){detach(list);col.addView(new GridHost(list,166,6,true),new LinearLayout.LayoutParams(-1,0,1));}
        if(footer!=null){footer.setTag(ROLE,"footer");add(col,footer,-2);}fill(root,col,true);
    }
    private static void automation(ViewGroup root){
        View title=find(root,"v_title"),list=find(root,"v_list");String[] ids={"v_btn_return","v_btn_start","v_btn_set"};
        LinearLayout col=column(root.getContext());col.setPadding(d(root,18),d(root,16),d(root,18),d(root,12));WrapLayout actions=new WrapLayout(root.getContext());
        for(String id:ids){View action=find(root,id);if(action instanceof ViewGroup){inline((ViewGroup)action,null,null,26,true);action.setTag(ROLE,"action");detach(action);actions.addView(action,new ViewGroup.LayoutParams(-2,-2));}}
        add(col,actions,-2);if(title!=null){title.setTag(ROLE,"section");title.setPadding(0,d(root,12),0,d(root,12));add(col,title,-2);}weighted(col,list);fill(root,col,true);
    }
    /** Mapping editors share original command, selector and map adapters; none is a vertical form. */
    private static void mapping(ViewGroup root,String name){
        View inner=find(root,"v_root2");ViewGroup panel=inner instanceof ViewGroup?(ViewGroup)inner:root;List<View> original=children(panel);
        View commands=find(root,name.equals("activity_sidebar")?"v_list_top":"v_list_gn"),enabled=find(root,"v_select_open"),preview=find(root,"v_ico"),regions=find(root,"v_list_cb"),keys=find(root,"v_list_key"),maps=find(root,"v_list_map"),help=find(root,name.equals("dialog_keymap_diy")?"v_ts":"v_ts1");
        LinearLayout col=column(root.getContext());col.setPadding(d(root,18),d(root,16),d(root,18),d(root,12));label(col,name.equals("activity_sidebar")?"侧边手势":name.equals("activity_float_button")?"悬浮按钮":"自定义映射");
        add(col,commands,selectorHeight(root));
        if(enabled instanceof ViewGroup){inline((ViewGroup)enabled,null,"v_select_open_ico",24,true);enabled.setTag(ROLE,"action");LinearLayout status=new LinearLayout(root.getContext());status.setGravity(Gravity.CENTER_VERTICAL);detach(enabled);status.addView(enabled,new LinearLayout.LayoutParams(-2,-2));if(preview!=null){detach(preview);LinearLayout.LayoutParams p=new LinearLayout.LayoutParams(d(root,40),d(root,40));p.leftMargin=d(root,18);status.addView(preview,p);}add(col,status,-2);}
        LinearLayout workspace=new LinearLayout(root.getContext());
        if(regions!=null)mappingPane(workspace,regions,"触发区域",112,false);
        mappingPane(workspace,keys,"触发方式",regions==null?132:112,false);mappingPane(workspace,maps,"映射动作",0,true);weighted(col,workspace);
        if(help!=null){help.setTag(ROLE,"help");add(col,help,-2);}
        // Retain resource identity of the old decorative separators without measuring them as content.
        for(View v:original)if(v.getParent()==panel){detach(v);v.setVisibility(View.GONE);col.addView(v,new LinearLayout.LayoutParams(0,0));}
        fill(panel,col,true);if(panel!=root){detach(panel);fill(root,panel,true);}
    }
    private static void mappingPane(LinearLayout row,View list,String heading,int width,boolean flexible){if(list==null)return;LinearLayout pane=column(row.getContext());label(pane,heading);detach(list);pane.addView(list,new LinearLayout.LayoutParams(-1,0,1));LinearLayout.LayoutParams p=flexible?new LinearLayout.LayoutParams(0,-1,1):new LinearLayout.LayoutParams(d(row,width),-1);p.rightMargin=flexible?0:d(row,12);row.addView(pane,p);}
    private static int selectorHeight(View v){return Math.round(d(v,68)*Math.max(1,v.getResources().getConfiguration().fontScale));}
    private static void downloads(ViewGroup root){
        View path=find(root,"v_list_path"),files=find(root,"v_list_file"),more=find(root,"v_lay_load_more"),loading=find(root,"v_loading"),url=find(root,"v_url"),commands=find(root,"v_list_gn"),tasks=find(root,"v_list_down"),qr=find(root,"v_lay_qrcode"),history=find(root,"v_lay_history"),help=find(root,"v_help");
        List<View> original=children(root);LinearLayout col=column(root.getContext());col.setPadding(d(root,18),d(root,16),d(root,18),d(root,12));label(col,"文件下载");Split split=new Split(root.getContext());
        LinearLayout browser=column(root.getContext());label(browser,"文件浏览");add(browser,path,selectorHeight(root));FrameLayout fileBody=new FrameLayout(root.getContext());if(files!=null){detach(files);fileBody.addView(files,new FrameLayout.LayoutParams(-1,-1));}overlay(fileBody,loading);weighted(browser,fileBody);add(browser,more,-2);split.addView(browser);
        LinearLayout incoming=column(root.getContext());label(incoming,"链接与任务");add(incoming,url,-2);addToolbar(incoming,commands,150,4);FrameLayout taskBody=new FrameLayout(root.getContext());for(View v:new View[]{tasks,qr,history,help})if(v!=null){detach(v);taskBody.addView(v,new FrameLayout.LayoutParams(-1,-1));}emptyState(taskBody,tasks,null,"暂无下载任务",qr,history);weighted(incoming,taskBody);split.addView(incoming);weighted(col,split);
        emptyState(fileBody,files,path,"暂无文件，请先打开链接",loading,more);
        for(View v:original)if(v.getParent()==root){detach(v);v.setVisibility(View.GONE);col.addView(v,new LinearLayout.LayoutParams(0,0));}fill(root,col,true);
    }
    private static void mappingList(ViewGroup root,String name){
        List<View> original=children(root);boolean usb=name.equals("activity_auto_click_usb_set");View list=find(root,usb?"v_list_app":"v_list"),commands=find(root,"v_list_gn"),loading=find(root,"v_loading");String title=usb?"USB 授权自动点击":name.equals("activity_key_map_logcat")?"日志映射":name.equals("activity_key_map_acc")?"原生按键映射":"事件映射";
        LinearLayout col=column(root.getContext());col.setPadding(d(root,18),d(root,16),d(root,18),d(root,12));label(col,title);WrapLayout actions=new WrapLayout(root.getContext());
        for(View v:original)if(action(v)){if(v instanceof ViewGroup)inline((ViewGroup)v,null,null,24,true);v.setTag(ROLE,"action");detach(v);actions.addView(v,new ViewGroup.LayoutParams(-2,-2));}if(actions.getChildCount()>0)add(col,actions,-2);addToolbar(col,commands,170,4);
        for(View v:original)if(v!=list&&v!=commands&&v!=loading&&v.getParent()==root){if(overlay(v)&&!CarUi.name(v).equals("v_ts"))continue;if(v.getClass().getName().contains("Guideline")){detach(v);col.addView(v,new LinearLayout.LayoutParams(0,0));continue;}if(v instanceof ViewGroup)generic((ViewGroup)v,false,true);if(v instanceof TextView){v.setTag(ROLE,"help");((TextView)v).setGravity(Gravity.START);}add(col,v,naturalHeight(v));}
        FrameLayout body=new FrameLayout(root.getContext());if(list!=null){detach(list);if(usb)body.addView(new GridHost(list,176,5,true),new FrameLayout.LayoutParams(-1,-1));else body.addView(list,new FrameLayout.LayoutParams(-1,-1));}overlay(body,loading);for(View v:original)if(v.getParent()==root&&overlay(v))overlay(body,v);emptyState(body,list,null,usb?"暂无可配置应用":"暂无映射，请从上方添加",loading,null);weighted(col,body);fill(root,col,true);
    }
    private static void fileMenu(ViewGroup root){
        View inner=find(root,"v_root2");ViewGroup panel=inner instanceof ViewGroup?(ViewGroup)inner:root;List<View> original=children(panel);View details=find(root,"v_apk_lay"),list=find(root,"v_list"),hint=find(root,"v_cancel_default_text");LinearLayout col=column(root.getContext());col.setPadding(d(root,22),d(root,18),d(root,22),d(root,18));label(col,"文件操作");if(details instanceof ViewGroup){generic((ViewGroup)details,false,true);add(col,details,-2);}addToolbar(col,list,160,3);if(hint!=null){hint.setTag(ROLE,"help");add(col,hint,-2);}for(View v:original)if(v.getParent()==panel){detach(v);col.addView(v,new LinearLayout.LayoutParams(0,0));}fill(panel,col,false);if(panel!=root){detach(panel);fill(root,panel,false);}
    }
    private static void cleanMode(ViewGroup root){
        View panelView=find(root,"v_root2");ViewGroup panel=panelView instanceof ViewGroup?(ViewGroup)panelView:root;View banner=find(root,"v_top_ico"),usage=find(root,"v_text_bfb"),whitelist=find(root,"v_btn_blacklist"),modes=find(root,"v_list_type"),start=find(root,"v_btn_start"),description=find(root,"v_text");LinearLayout col=column(root.getContext());col.setPadding(d(root,22),d(root,18),d(root,22),d(root,18));label(col,"内存清理");if(banner!=null){detach(banner);banner.setVisibility(View.GONE);col.addView(banner,new LinearLayout.LayoutParams(0,0));}WrapLayout status=new WrapLayout(root.getContext());for(View v:new View[]{usage,whitelist})if(v!=null){detach(v);status.addView(v,new ViewGroup.LayoutParams(-2,-2));}add(col,status,-2);addToolbar(col,modes,170,3);if(description!=null){description.setTag(ROLE,"help");add(col,description,-2);}if(start!=null){start.setTag(ROLE,"primary");add(col,start,-2);}fill(panel,col,false);if(panel!=root){detach(panel);ScrollView viewport=new ScrollView(root.getContext());viewport.addView(panel,new ScrollView.LayoutParams(-1,-2));fill(root,viewport,false);}
    }
    private static void mappingForm(ViewGroup root,String name){
        View inner=find(root,"v_root2");if(!(inner instanceof ViewGroup))return;ViewGroup panel=(ViewGroup)inner;View checks=find(root,"v_list_check");if(checks!=null){prepareGrid(checks);responsiveGrid(checks,250,2);}
        View enabled=find(root,"v_select_open");if(enabled instanceof ViewGroup){inline((ViewGroup)enabled,null,"v_select_open_ico",24,true);enabled.setTag(ROLE,"action");}
        compactFormFields(panel);generic(panel,name.equals("dialog_add_door_log"),true);if(name.equals("dialog_add_door_log"))root.setTag(FULL,Boolean.TRUE);LinearLayout col=column(root.getContext());col.setPadding(d(root,18),d(root,12),d(root,18),d(root,12));label(col,name.equals("dialog_key_map_logcat_add")?"日志映射设置":name.equals("dialog_key_map_acc_add")?"原生按键设置":name.equals("dialog_key_map_broadcast_add")?"广播映射设置":"车门日志映射");detach(panel);if(name.equals("dialog_add_door_log")){weighted(col,panel);fill(root,col,true);}else{add(col,panel,-2);ScrollView viewport=new ScrollView(root.getContext());viewport.addView(col,new ScrollView.LayoutParams(-1,-2));fill(root,viewport,false);}
    }
    /** Keep each original label, field and optional selector on one adaptive row. */
    private static void compactFormFields(ViewGroup group){
        List<View> parts=children(group);for(View child:parts)if(child instanceof ViewGroup&&!child.isClickable())compactFormFields((ViewGroup)child);
        if(!group.getClass().getName().contains("ConstraintLayout"))return;
        for(int i=1;i<parts.size();i++)if(parts.get(i) instanceof EditText){View label=parts.get(i-1),field=parts.get(i);if(!(label instanceof TextView)||label instanceof EditText||label.isClickable()||label.getParent()!=group||field.getParent()!=group)continue;
            int index=group.indexOfChild(label);LinearLayout row=new LinearLayout(group.getContext());row.setGravity(Gravity.CENTER_VERTICAL);row.setTag(ROLE,"formField");row.setPadding(0,d(group,4),0,d(group,4));detach(label);detach(field);((TextView)label).setGravity(Gravity.START|Gravity.CENTER_VERTICAL);row.addView(label,new LinearLayout.LayoutParams(d(group,112),-2));field.setMinimumWidth(0);row.addView(field,new LinearLayout.LayoutParams(0,-2,1));
            if(i+1<parts.size()){View select=parts.get(i+1);if(select.getParent()==group&&action(select)&&CarUi.name(select).startsWith("v_btn_select")){detach(select);LinearLayout.LayoutParams p=new LinearLayout.LayoutParams(-2,-2);p.leftMargin=d(group,8);row.addView(select,p);}}
            group.addView(row,index,new ViewGroup.LayoutParams(-1,-2));group.setTag(ORDER,null);
        }
    }
    private static void prepareGrid(View list){if(list==null)return;try{Object lm=list.getClass().getMethod("getLayoutManager").invoke(list);if(lm!=null)try{lm.getClass().getMethod("setSpanCount",int.class);return;}catch(NoSuchMethodException ignored){}Class<?> type;try{type=Class.forName("com.owen.tvrecyclerview.widget.V7GridLayoutManager");}catch(ClassNotFoundException e){type=Class.forName("androidx.recyclerview.widget.GridLayoutManager");}Object grid=type.getConstructor(Context.class,int.class).newInstance(list.getContext(),1);list.getClass().getMethod("setLayoutManager",Class.forName("androidx.recyclerview.widget.RecyclerView$LayoutManager")).invoke(list,grid);}catch(Exception e){Log.w(TAG,"Toolbar grid",e);}}
    private static void addToolbar(LinearLayout col,View list,int target,int maximum){if(list==null)return;prepareGrid(list);add(col,new GridHost(list,target,maximum),-2);}
    private static void listDialog(final ViewGroup root){
        View inner=find(root,"v_root2"),title=find(root,"v_title"),list=find(root,"v_list"),guide=find(root,"guideline");ViewGroup panel=inner instanceof ViewGroup?(ViewGroup)inner:root;boolean providers=ResourceIndex.layout((Integer)root.getTag(LAYOUT)).equals("dialog_wp_add");
        LinearLayout col=column(root.getContext());col.setPadding(d(root,20),d(root,18),d(root,20),d(root,18));
        if(providers){TextView heading=CarUi.text(root.getContext(),"添加云端连接",24,CarUi.skin(root.getContext()).ink,true);heading.setPadding(0,0,0,d(root,16));add(col,heading,-2);}
        if(title!=null){title.setVisibility(View.VISIBLE);title.setTag(ROLE,"section");title.setPadding(0,0,0,d(root,12));add(col,title,-2);}
        if(list!=null){list.setPadding(0,0,0,0);if(providers){list.setBackgroundColor(android.graphics.Color.TRANSPARENT);final ViewGroup rows=(ViewGroup)list;rows.getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener(){@Override public void onGlobalLayout(){for(int i=0;i<rows.getChildCount();i++){View v=rows.getChildAt(i);ViewGroup.LayoutParams p=v.getLayoutParams();if(p!=null&&p.width!=-1){p.width=-1;v.setLayoutParams(p);}}}});}add(col,providers?new ProviderViewport(list):list,-2);}
        if(providers)add(col,dialogClose(root),-2);if(guide!=null){detach(guide);guide.setVisibility(View.GONE);col.addView(guide,new LinearLayout.LayoutParams(0,0));}fill(panel,col,false);
        if(panel!=root){detach(panel);fill(root,panel,false);}
    }
    private static final class ProviderViewport extends FrameLayout{
        final View list;Object manager;int columns;
        ProviderViewport(View list){super(list.getContext());this.list=list;detach(list);addView(list,new FrameLayout.LayoutParams(-1,-1));try{Class<?> type;try{type=Class.forName("com.owen.tvrecyclerview.widget.V7GridLayoutManager",true,list.getContext().getClassLoader());}catch(ClassNotFoundException e){type=Class.forName("androidx.recyclerview.widget.GridLayoutManager",true,list.getContext().getClassLoader());}manager=type.getConstructor(Context.class,int.class).newInstance(list.getContext(),3);for(java.lang.reflect.Method m:list.getClass().getMethods())if(m.getName().equals("setLayoutManager")&&m.getParameterTypes().length==1&&m.getParameterTypes()[0].isInstance(manager)){m.invoke(list,manager);break;}}catch(Exception e){Log.w(TAG,"Provider wrap grid",e);}}
        @Override protected void onMeasure(int w,int h){int count=Math.max(1,Math.min(4,MeasureSpec.getSize(w)/Math.round(CarUi.dp(getContext(),160)*Math.max(1,getResources().getConfiguration().fontScale))));if(manager!=null&&columns!=count)try{manager.getClass().getMethod("setSpanCount",int.class).invoke(manager,count);columns=count;}catch(Exception e){Log.w(TAG,"Provider columns",e);}int rows=(Math.max(1,itemCount(list))+count-1)/count;int owner=CarUi.windowBounds(getContext())[1],height=Math.min(CarUi.dp(getContext(),68)*rows+CarUi.dp(getContext(),16),Math.max(CarUi.dp(getContext(),120),owner-CarUi.dp(getContext(),240)));if(MeasureSpec.getMode(h)!=MeasureSpec.UNSPECIFIED)height=Math.min(height,MeasureSpec.getSize(h));super.onMeasure(w,MeasureSpec.makeMeasureSpec(height,MeasureSpec.EXACTLY));}
    }
    private static TextView dialogClose(final View root){TextView close=CarUi.text(root.getContext(),"关闭",18,CarUi.skin(root.getContext()).ink,true);close.setGravity(Gravity.CENTER);close.setMinimumHeight(d(root,52));close.setPadding(d(root,16),d(root,12),d(root,16),d(root,12));close.setTag(ROLE,"action");close.setFocusable(true);close.setClickable(true);close.setOnClickListener(new View.OnClickListener(){@Override public void onClick(View v){Object ref=root.getTag(QR_DIALOG);if(ref instanceof java.lang.ref.WeakReference){Object d=((java.lang.ref.WeakReference<?>)ref).get();if(d instanceof Dialog)((Dialog)d).dismiss();}}});return close;}
    /** Compact actions keep their original click target and image/text instances. */
    private static void inline(ViewGroup root,String textId,String imageId,int size,boolean compact){
        List<View> originals=children(root);View name=textId==null?null:find(root,textId),image=imageId==null?null:find(root,imageId);
        if(name==null)for(View v:originals)if(v instanceof TextView){name=v;break;}
        if(image==null)for(View v:originals)if(v instanceof ImageView){image=v;break;}
        if(name==null)return;
        LinearLayout row=new LinearLayout(root.getContext());row.setGravity(Gravity.CENTER_VERTICAL);row.setMinimumHeight(d(root,52));row.setPadding(d(root,12),d(root,10),d(root,12),d(root,10));
        if(image!=null){detach(image);image.setPadding(0,0,0,0);if(image instanceof ImageView){((ImageView)image).setScaleType(ImageView.ScaleType.FIT_CENTER);((ImageView)image).clearColorFilter();}LinearLayout.LayoutParams p=new LinearLayout.LayoutParams(d(root,size),d(root,size));p.rightMargin=d(root,8);row.addView(image,p);}
        detach(name);TextView text=(TextView)name;text.setVisibility(View.VISIBLE);text.setGravity(Gravity.CENTER_VERTICAL);text.setSingleLine(compact);text.setMaxLines(compact?1:3);text.setEllipsize(android.text.TextUtils.TruncateAt.END);text.setPadding(0,0,0,0);if(compact)text.setMaxWidth(d(root,240));
        row.addView(text,new LinearLayout.LayoutParams(compact?-2:0,-2,compact?0:1));
        for(View v:originals)if(v!=name&&v!=image){detach(v);row.addView(v,new LinearLayout.LayoutParams(-2,-2));}
        fill(root,row,false);if(compact){ViewGroup.LayoutParams p=row.getLayoutParams();p.width=-2;row.setLayoutParams(p);}root.setMinimumHeight(d(root,52));
    }

    private static void apps(ViewGroup root){
        View back=find(root,"v_btn_return"),reload=find(root,"v_btn_reload"),types=find(root,"v_list_type"),search=find(root,"v_search"),list=find(root,"v_list_app"),loading=find(root,"v_read_ts_lay");
        LinearLayout col=column(root.getContext());col.setPadding(d(root,12),d(root,12),d(root,12),d(root,8));
        LinearLayout head=new LinearLayout(root.getContext());head.setGravity(Gravity.CENTER_VERTICAL);
        if(back!=null){detach(back);head.addView(back,new LinearLayout.LayoutParams(-2,-2));}
        TextView title=CarUi.text(root.getContext(),"应用管理",28,CarUi.skin(root.getContext()).ink,true);title.setTag(ROLE,"title");title.setPadding(d(root,16),0,d(root,12),0);head.addView(title,new LinearLayout.LayoutParams(0,-2,1));
        if(reload!=null){detach(reload);head.addView(reload,new LinearLayout.LayoutParams(-2,-2));}add(col,head,-2);
        add(col,types,d(root,60));add(col,search,-2);
        FrameLayout body=new FrameLayout(root.getContext());if(list!=null){detach(list);list.setPadding(d(root,2),d(root,8),d(root,2),d(root,8));body.addView(new GridHost(list,176,6,true),new FrameLayout.LayoutParams(-1,-1));}
        overlay(body,loading);weighted(col,body);fill(root,col,true);
    }
    private static void files(ViewGroup root){
        // Snapshot every original control before removing its old constraint parent.
        View roots=find(root,"v_file_root"),path=find(root,"v_file_path"),list=find(root,"v_file_file"),loading=find(root,"v_readProgress"),error=find(root,"v_read_ts_lay"),tasks=find(root,"v_tasks_list"),count=find(root,"v_count"),fullPath=find(root,"v_filePath"),scan=find(root,"v_lay_dirScan"),pasteInfo=find(root,"v_tile_paste_text"),paste=find(root,"v_file_btn_paste"),oldToolbar=find(root,"v_lay_path");
        String[] ids={"v_btn_style","v_btn_coll","v_btn_length","v_btn_new","v_btn_multi","v_btn_reload"};String[] titles={"视图","收藏","统计","新建","多选","刷新"};String[] icons={"apps","heart","tools","add","edit","refresh"};
        LinearLayout col=column(root.getContext());add(col,roots,d(root,58));
        WrapLayout actions=new WrapLayout(root.getContext());
        for(int i=0;i<ids.length;i++){View action=find(root,ids[i]);if(action!=null){tool(action,titles[i],icons[i]);detach(action);actions.addView(action,new ViewGroup.LayoutParams(-2,-2));}}
        add(col,actions,-2);if(oldToolbar instanceof ViewGroup){View caption=find(root,"v_path_text");detach(caption);detach(path);((ViewGroup)oldToolbar).removeAllViews();LinearLayout row=new LinearLayout(root.getContext());row.setGravity(Gravity.CENTER_VERTICAL);if(caption!=null)row.addView(caption,new LinearLayout.LayoutParams(-2,-2));if(path!=null)row.addView(path,new LinearLayout.LayoutParams(0,d(root,54),1));fill((ViewGroup)oldToolbar,row,false);add(col,oldToolbar,-2);}else add(col,path,d(root,54));
        WrapLayout clipboard=new WrapLayout(root.getContext());if(pasteInfo!=null){detach(pasteInfo);clipboard.addView(pasteInfo);}if(paste!=null){tool(paste,"粘贴","files");detach(paste);clipboard.addView(paste);}add(col,clipboard,-2);
        FrameLayout body=new FrameLayout(root.getContext());if(list!=null){detach(list);list.setPadding(0,d(root,8),0,d(root,8));body.addView(list,new FrameLayout.LayoutParams(-1,-1));responsiveGrid(list,210,0);}emptyState(body,list,path,"选择存储位置以浏览文件",error,loading);overlay(body,error);overlay(body,loading);weighted(col,body);
        add(col,tasks,-2);add(col,count,-2);add(col,fullPath,-2);add(col,scan,-2);fill(root,col,true);
    }
    /** MT-style parallel browsers keep both paths, lists and original action adapters alive. */
    private static void network(ViewGroup root){
        View taskPanel=find(root,"v_task_lay"),task=find(root,"v_btn_task");LinearLayout col=column(root.getContext());
        LinearLayout top=new LinearLayout(root.getContext());top.setGravity(Gravity.CENTER_VERTICAL);top.setPadding(d(root,10),d(root,4),d(root,10),d(root,8));TextView title=CarUi.text(root.getContext(),"云端与本地",20,CarUi.skin(root.getContext()).ink,true);top.addView(title,new LinearLayout.LayoutParams(0,-2,1));
        if(task instanceof ViewGroup){inline((ViewGroup)task,"v_btn_task_text","v_btn_task_ico",22,true);task.setTag(ROLE,"action");detach(task);top.addView(task,new LinearLayout.LayoutParams(-2,-2));}add(col,top,-2);
        LinearLayout panes=new LinearLayout(root.getContext());panes.setOrientation(0);panes.setBaselineAligned(false);
        for(int n=1;n<=2;n++){
            if(n==2){View divider=new View(root.getContext());divider.setTag(ROLE,"divider");panes.addView(divider,new LinearLayout.LayoutParams(Math.max(1,d(root,1)),-1));}
            LinearLayout pane=column(root.getContext());pane.setTag(ROLE,"networkPane");pane.setPadding(d(root,6),d(root,8),d(root,6),d(root,6));panes.addView(pane,new LinearLayout.LayoutParams(0,-1,1));
            View heading=find(root,"v_gn_text"+n);LinearLayout source=new LinearLayout(root.getContext());source.setGravity(Gravity.CENTER_VERTICAL);if(heading instanceof TextView){((TextView)heading).setText(n==1?"云端":"本地");((TextView)heading).setTextSize(18);((TextView)heading).setTypeface(android.graphics.Typeface.DEFAULT,1);((TextView)heading).setSingleLine(true);((TextView)heading).setGravity(Gravity.CENTER);heading.setPadding(d(root,6),0,d(root,6),0);}detach(heading);source.addView(heading,new LinearLayout.LayoutParams(d(root,56),-1));View storage=find(root,"v_gn"+n);detach(storage);source.addView(storage,new LinearLayout.LayoutParams(0,-1,1));add(pane,source,d(root,56));
            View oldLabel=find(root,"v_path_text"+n);if(oldLabel!=null){oldLabel.setVisibility(View.GONE);add(pane,oldLabel,0);}
            final View path=find(root,"v_path"+n);add(pane,path,d(root,56));if(path!=null){final View p=path;pane.getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener(){@Override public void onGlobalLayout(){int visibility=itemCount(p)==0?View.GONE:View.VISIBLE;if(p.getVisibility()!=visibility)p.setVisibility(visibility);}});}
            View rule=new View(root.getContext());rule.setTag(ROLE,"divider");pane.addView(rule,new LinearLayout.LayoutParams(-1,Math.max(1,d(root,1))));
            FrameLayout body=new FrameLayout(root.getContext());final View list=find(root,"v_file"+n);if(list instanceof ViewGroup){detach(list);list.setPadding(0,0,0,0);body.addView(list,new FrameLayout.LayoutParams(-1,-1));responsiveGrid(list,220,1);final ViewGroup rows=(ViewGroup)list;rows.getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener(){@Override public void onGlobalLayout(){singleColumn(rows);for(int i=0;i<rows.getChildCount();i++)networkRow(rows.getChildAt(i));}});}
            View error=find(root,"v_read_ts_lay"+n),loading=find(root,n==1?"v_loadDir_lay":"v_readProgress2");emptyState(body,list,path,n==1?"添加或选择云盘\n登录后浏览文件":"选择本地存储以浏览文件",error,loading);overlay(body,error);overlay(body,loading);if(n==1)overlay(body,find(root,"v_loadMore_lay"));weighted(pane,body);
            View bottom=new View(root.getContext());bottom.setTag(ROLE,"divider");pane.addView(bottom,new LinearLayout.LayoutParams(-1,Math.max(1,d(root,1))));add(pane,find(root,"v_dir_gn"+n),d(root,56));
        }
        weighted(col,panes);FrameLayout frame=new FrameLayout(root.getContext());frame.addView(col,new FrameLayout.LayoutParams(-1,-1));if(taskPanel!=null){detach(taskPanel);generic((ViewGroup)taskPanel,true);frame.addView(taskPanel,new FrameLayout.LayoutParams(-1,-1));}fill(root,frame,true);
    }
    private static void singleColumn(View list){try{Object manager=list.getClass().getMethod("getLayoutManager").invoke(list);if(manager!=null&&((Integer)manager.getClass().getMethod("getSpanCount").invoke(manager))!=1)manager.getClass().getMethod("setSpanCount",int.class).invoke(manager,1);}catch(NoSuchMethodException ignored){}catch(Exception e){Log.w(TAG,"Network list columns",e);}}
    private static void networkRow(View item){
        if(!(item instanceof ViewGroup)||Boolean.TRUE.equals(item.getTag(NETWORK_ROW)))return;
        View name=find(item,"v_file_name"),meta=find(item,"v_file_attribute"),icon=find(item,"v_file_ico");if(name==null||icon==null)return;
        item.setTag(NETWORK_ROW,Boolean.TRUE);item.setTag(ROLE,"fileRow");LinearLayout line=new LinearLayout(item.getContext());line.setGravity(Gravity.CENTER_VERTICAL);line.setPadding(d(item,8),d(item,10),d(item,8),d(item,10));line.setMinimumHeight(d(item,72));
        FrameLayout artwork=new FrameLayout(item.getContext());for(String id:new String[]{"v_file_image","v_file_ico","v_file_ico_xiao"}){View v=find(item,id);if(v==null)continue;detach(v);v.setPadding(0,0,0,0);FrameLayout.LayoutParams p=new FrameLayout.LayoutParams(d(item,id.endsWith("_xiao")?14:36),d(item,id.endsWith("_xiao")?14:36),id.endsWith("_xiao")?Gravity.BOTTOM|Gravity.END:Gravity.CENTER);artwork.addView(v,p);}line.addView(artwork,new LinearLayout.LayoutParams(d(item,40),d(item,44)));
        LinearLayout labels=column(item.getContext());labels.setPadding(d(item,8),0,d(item,6),0);detach(name);((TextView)name).setLineSpacing(0,1);((TextView)name).setMaxLines(2);labels.addView(name,new LinearLayout.LayoutParams(-1,-2));if(meta!=null){detach(meta);((TextView)meta).setSingleLine(true);((TextView)meta).setEllipsize(android.text.TextUtils.TruncateAt.END);labels.addView(meta,new LinearLayout.LayoutParams(-1,-2));}line.addView(labels,new LinearLayout.LayoutParams(0,-2,1));
        for(String id:new String[]{"v_select","v_item_state"}){View v=find(item,id);if(v!=null){detach(v);line.addView(v,new LinearLayout.LayoutParams(d(item,id.equals("v_select")?24:52),d(item,40)));}}
        fill((ViewGroup)item,line,false);item.setPadding(0,0,0,0);ViewGroup.LayoutParams p=item.getLayoutParams();if(p!=null){p.width=-1;p.height=-2;if(p instanceof ViewGroup.MarginLayoutParams)((ViewGroup.MarginLayoutParams)p).setMargins(0,0,0,0);item.setLayoutParams(p);}retheme(item);
    }
    private static void loginQr(final ViewGroup root){
        View title=find(root,"v_text_ts2"),image=find(root,"v_image"),state=find(root,"v_text_ts3");if(!(image instanceof ImageView))return;
        LinearLayout panel=column(root.getContext());panel.setPadding(d(root,22),d(root,20),d(root,22),d(root,18));if(title instanceof TextView){TextView text=(TextView)title;text.setGravity(Gravity.CENTER);text.setTextSize(20);text.setSingleLine(false);text.setMaxLines(3);}add(panel,title,-2);
        QrSquare square=new QrSquare(root.getContext());square.setTag(CarUi.OWN);square.setBackgroundColor(android.graphics.Color.WHITE);square.setPadding(d(root,18),d(root,18),d(root,18),d(root,18));final ImageView qr=(ImageView)image;detach(qr);qr.setPadding(0,0,0,0);qr.setAdjustViewBounds(false);qr.setScaleType(ImageView.ScaleType.FIT_CENTER);qr.clearColorFilter();square.addView(qr,new FrameLayout.LayoutParams(-1,-1));if(state instanceof TextView){detach(state);TextView t=(TextView)state;t.setTextColor(0xFF141619);t.setBackgroundColor(0xF2FFFFFF);t.setTextSize(20);t.setGravity(Gravity.CENTER);t.setSingleLine(false);square.addView(t,new FrameLayout.LayoutParams(-1,-1));}
        LinearLayout.LayoutParams qp=new LinearLayout.LayoutParams(-1,-2);qp.gravity=Gravity.CENTER_HORIZONTAL;qp.topMargin=d(root,12);qp.bottomMargin=d(root,18);panel.addView(square,qp);
        add(panel,dialogClose(root),-2);
        qr.getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener(){@Override public void onGlobalLayout(){if(qr.getDrawable() instanceof android.graphics.drawable.BitmapDrawable){android.graphics.drawable.BitmapDrawable b=(android.graphics.drawable.BitmapDrawable)qr.getDrawable();b.setFilterBitmap(false);b.setAntiAlias(false);}}});View inner=find(root,"v_root2");if(inner instanceof ViewGroup){fill((ViewGroup)inner,panel,false);detach(inner);fill(root,inner,false);}else fill(root,panel,false);
    }
    /** A QR is measured content, never an unconstrained decorative overlay. */
    private static void transferQr(final ViewGroup root){
        final View image=find(root,"v_qrCode");View inner=find(root,"v_root2");if(!(image instanceof ImageView)||!(inner instanceof ViewGroup))return;
        List<View> original=children((ViewGroup)inner);View title=find(root,"v_title"),content=find(root,"v_content"),ip=find(root,"v_ip"),sound=find(root,"v_btn_success_prompt"),close=find(root,"v_btn_close"),guide=find(root,"guideline");
        LinearLayout panel=column(root.getContext());panel.setPadding(d(root,22),d(root,18),d(root,22),d(root,16));root.setTag(FULL,Boolean.TRUE);
        title.setTag(ROLE,"title");add(panel,title,-2);
        QrSquare square=new QrSquare(root.getContext());square.setTag(CarUi.OWN);square.setBackgroundColor(0xFFFFFFFF);square.setPadding(d(root,18),d(root,18),d(root,18),d(root,18));final ImageView qr=(ImageView)image;detach(qr);qr.setPadding(0,0,0,0);qr.setAdjustViewBounds(false);qr.setScaleType(ImageView.ScaleType.FIT_CENTER);qr.clearColorFilter();qr.setContentDescription("局域网互传二维码，使用浏览器扫码打开");square.addView(qr,new FrameLayout.LayoutParams(-1,-1));
        qr.getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener(){public void onGlobalLayout(){if(qr.getDrawable() instanceof android.graphics.drawable.BitmapDrawable){android.graphics.drawable.BitmapDrawable b=(android.graphics.drawable.BitmapDrawable)qr.getDrawable();b.setFilterBitmap(false);b.setAntiAlias(false);}}});
        LinearLayout details=column(root.getContext());for(View v:new View[]{content,ip}){if(v instanceof TextView){((TextView)v).setSingleLine(false);((TextView)v).setMaxLines(Integer.MAX_VALUE);}add(details,v,-2);}
        for(View v:original)if(v instanceof TextView&&v!=title&&v!=content&&v!=ip&&v!=close){v.setTag(ROLE,"help");add(details,v,-2);}
        ScrollView instructions=new ScrollView(root.getContext());instructions.setFillViewport(false);instructions.addView(details,new ScrollView.LayoutParams(-1,-2));
        TransferQrBody body=new TransferQrBody(root.getContext(),square,qr,instructions);weighted(panel,body);
        WrapLayout footer=new WrapLayout(root.getContext());footer.setPadding(0,d(root,12),0,0);if(sound instanceof ViewGroup)inline((ViewGroup)sound,null,"v_btn_success_prompt_ico",24,true);
        for(View action:new View[]{sound,close})if(action!=null){detach(action);action.setTag(ROLE,"action");action.setMinimumHeight(d(root,52));footer.addView(action,new ViewGroup.LayoutParams(-2,-2));}
        add(panel,footer,-2);if(guide!=null){detach(guide);panel.addView(guide,new LinearLayout.LayoutParams(0,0));}
        fill((ViewGroup)inner,panel,true);detach(inner);fill(root,inner,true);
    }
    private static final class TransferQrBody extends LinearLayout{
        final QrSquare square;final ImageView image;final ScrollView instructions;
        TransferQrBody(Context c,QrSquare square,ImageView image,ScrollView instructions){super(c);this.square=square;this.image=image;this.instructions=instructions;addView(square);addView(instructions);}
        @Override protected void onMeasure(int w,int h){int width=MeasureSpec.getSize(w),height=MeasureSpec.getSize(h);int[] owner=CarUi.windowBounds(getContext());boolean wide=owner[0]>owner[1]&&width>=CarUi.dp(getContext(),600);setOrientation(wide?HORIZONTAL:VERTICAL);square.setVisibility(image.getVisibility());int size=image.getVisibility()==GONE?0:Math.min(CarUi.dp(getContext(),360),Math.min(wide?Math.round(width*.46f):width,wide?height:Math.round(height*.55f)));LinearLayout.LayoutParams q=new LinearLayout.LayoutParams(size,size);q.gravity=wide?Gravity.TOP:Gravity.CENTER_HORIZONTAL;if(wide)q.rightMargin=CarUi.dp(getContext(),20);else q.bottomMargin=CarUi.dp(getContext(),12);square.setLayoutParams(q);instructions.setLayoutParams(wide?new LinearLayout.LayoutParams(0,-1,1):new LinearLayout.LayoutParams(-1,0,1));super.onMeasure(w,h);}
    }
    private static final class QrSquare extends FrameLayout{
        QrSquare(Context c){super(c);}
        @Override protected void onMeasure(int w,int h){int[] owner=CarUi.windowBounds(getContext());int size=Math.min(MeasureSpec.getSize(w),Math.min(CarUi.dp(getContext(),380),Math.max(CarUi.dp(getContext(),120),owner[1]-CarUi.dp(getContext(),220))));if(MeasureSpec.getMode(h)!=MeasureSpec.UNSPECIFIED)size=Math.min(size,MeasureSpec.getSize(h));super.onMeasure(MeasureSpec.makeMeasureSpec(size,MeasureSpec.EXACTLY),MeasureSpec.makeMeasureSpec(size,MeasureSpec.EXACTLY));}
    }
    private static void settings(ViewGroup root,final Dialog dialog){
        if(root.getTag(REWRITTEN)!=null)return;root.setTag(REWRITTEN,Boolean.TRUE);
        View inner=find(root,"v_root2");if(!(inner instanceof ViewGroup))return;ViewGroup form=(ViewGroup)inner;
        List<View> controls=children(form);Context c=root.getContext();View background=find(root,"v_btn_background");if(background!=null)background.setOnClickListener(new View.OnClickListener(){@Override public void onClick(View v){Context context=dialog.getContext();dialog.dismiss();Wallpapers.show(context);}});
        LinearLayout display=column(c),install=column(c),connection=column(c),advanced=column(c);
        LinearLayout[] sections={display,install,connection,advanced};
        String[] sectionTitles={"界面与显示","安装与权限","连接与提醒","高级连接设置"};
        for(int i=0;i<sections.length;i++){sections[i].setPadding(d(root,18),0,d(root,18),d(root,20));label(sections[i],sectionTitles[i]);}
        TextView themes=CarUi.text(c,"选择主题与日夜模式",20,CarUi.skin(c).ink,true);themes.setTag(ROLE,"action");themes.setPadding(d(root,16),d(root,16),d(root,16),d(root,16));themes.setFocusable(true);themes.setClickable(true);themes.setOnClickListener(new View.OnClickListener(){@Override public void onClick(View v){ThemePicker.show(dialog.getContext());}});add(display,themes,-2);
        FieldGrid fields=new FieldGrid(c);WrapLayout actions=new WrapLayout(c);
        LinearLayout installer=column(c),port=column(c);
        for(View v:controls){String id=CarUi.name(v);detach(v);
            if(id.equals("v_v1")){v.setVisibility(View.GONE);add(display,v,-2);}
            else if(id.equals("v_list_immersed")){v.setNestedScrollingEnabled(false);label(display,"屏幕显示方式");add(display,v,d(root,62));}
            else if(id.equals("v_list_check1")){v.setNestedScrollingEnabled(false);add(install,new GridHost(v,600,1),-2);}
            else if(id.equals("v_list_check2")){v.setNestedScrollingEnabled(false);add(connection,new GridHost(v,240,3),-2);}
            else if(id.equals("v_lay1")||id.equals("v_lay2")){choiceGroup((ViewGroup)v);fields.addView(v);}
            else if(id.equals("v_lay3")||id.equals("v_lay4")){generic((ViewGroup)v,false);fields.addView(v);}
            else if(id.equals("v_installer_ts")){add(installer,v,-2);}
            else if(id.equals("v_installer")){generic((ViewGroup)v,false);add(installer,v,-2);}
            else if(id.equals("v_v2")||id.equals("et_adbPort")){add(port,v,-2);}
            else if(id.startsWith("v_btn_")){actions.addView(v,new ViewGroup.LayoutParams(-2,-2));}
            else if(id.startsWith("v_fgx")&&!(v instanceof TextView)){v.setVisibility(View.GONE);add(advanced,v,0);}
            else add(advanced,v,-2);
        }
        fields.addView(installer);fields.addView(port);add(advanced,fields,-2);label(advanced,"应用与权限入口");add(advanced,actions,-2);
        SettingsBody pages=new SettingsBody(c,sections);fill(form,pages,true);detach(form);
        LinearLayout panel=column(root.getContext());LinearLayout heading=new LinearLayout(root.getContext());heading.setGravity(Gravity.CENTER_VERTICAL);heading.setPadding(d(root,22),d(root,18),d(root,16),d(root,14));
        TextView title=CarUi.text(root.getContext(),"设置",28,CarUi.skin(root.getContext()).ink,true);title.setTag(ROLE,"title");heading.addView(title,new LinearLayout.LayoutParams(0,-2,1));
        TextView done=CarUi.text(root.getContext(),"完成",19,CarUi.skin(root.getContext()).ink,true);done.setTag(ROLE,"action");done.setPadding(d(root,20),d(root,14),d(root,20),d(root,14));done.setClickable(true);done.setFocusable(true);done.setOnClickListener(new View.OnClickListener(){@Override public void onClick(View v){dialog.dismiss();}});heading.addView(done);add(panel,heading,-2);weighted(panel,form);fill(root,panel,true);retheme(root);
    }
    private static void choiceGroup(ViewGroup group){List<View> parts=children(group);LinearLayout col=column(group.getContext());WrapLayout options=new WrapLayout(group.getContext());for(View p:parts){detach(p);if(p instanceof ViewGroup){p.setMinimumHeight(d(group,52));p.setPadding(d(group,8),d(group,8),d(group,8),d(group,8));options.addView(p,new ViewGroup.LayoutParams(-2,-2));}else add(col,p,-2);}add(col,options,-2);fill(group,col,false);}
    private static void overlay(FrameLayout parent,View view){if(view==null)return;ViewGroup.LayoutParams original=view.getLayoutParams();int width=original!=null&&original.width>0?original.width:-2,height=original!=null&&original.height>0?original.height:-2;if(view.getClass().getName().endsWith("HiveProgressView")){width=width>0?width:d(view,100);height=height>0?height:width;}detach(view);FrameLayout.LayoutParams lp=new FrameLayout.LayoutParams(width,height,Gravity.CENTER);parent.addView(view,lp);}
    private static int itemCount(View list){if(list==null)return -1;try{Object adapter=list.getClass().getMethod("getAdapter").invoke(list);if(adapter==null)return 0;try{return (Integer)adapter.getClass().getMethod("getItemCount").invoke(adapter);}catch(NoSuchMethodException e){return (Integer)adapter.getClass().getMethod("b").invoke(adapter);}}catch(Exception e){return -1;}}
    private static void emptyState(final FrameLayout body,final View list,final View path,final String prompt,final View error,final View loading){
        final TextView empty=CarUi.text(body.getContext(),prompt,19,CarUi.skin(body.getContext()).muted,false);empty.setTag(ROLE,"empty");empty.setGravity(Gravity.CENTER);empty.setPadding(d(body,24),d(body,24),d(body,24),d(body,24));empty.setVisibility(View.GONE);body.addView(empty,new FrameLayout.LayoutParams(-1,-1));
        body.getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener(){@Override public void onGlobalLayout(){int count=itemCount(list);boolean blocked=(error!=null&&error.getVisibility()==View.VISIBLE)||(loading!=null&&loading.getVisibility()==View.VISIBLE);boolean show=count==0&&!blocked;int visibility=show?View.VISIBLE:View.GONE;if(empty.getVisibility()!=visibility)empty.setVisibility(visibility);String message=itemCount(path)>0?"当前目录暂无文件":prompt;if(!message.contentEquals(empty.getText()))empty.setText(message);}});
    }

    /** Shared form/list composition. Reuses containers whose concrete types are used by controllers. */
    private static void generic(ViewGroup group,boolean stretch){generic(group,stretch,false);}
    private static void generic(ViewGroup group,boolean stretch,boolean contentPanel){
        if(scroll(group)){for(View child:children(group))if(child instanceof ViewGroup){generic((ViewGroup)child,false);ViewGroup.LayoutParams p=child.getLayoutParams();p.width=-1;p.height=-2;child.setLayoutParams(p);}return;}
        if(content(group)||group instanceof WrapLayout||group.getTag(ROLE)!=null)return;
        if(group.isClickable()&&!contentPanel)return;
        if(formFooter(group))return;
        if(numericFormRow(group))return;
        List<View> original=children(group);Object ordered=group.getTag(ORDER);if(ordered instanceof String){List<View> sorted=new ArrayList<View>();try{for(String n:((String)ordered).split(","))sorted.add(original.get(Integer.parseInt(n)));if(sorted.size()==original.size())original=sorted;}catch(Exception ignored){/* Dynamic children retain insertion order. */}}
        for(View v:original)if(v instanceof ViewGroup)generic((ViewGroup)v,false);
        if(group.getClass().getName().contains("ConstraintLayout")){
            LinearLayout col=column(group.getContext());col.setPadding(d(group,12),d(group,10),d(group,12),d(group,10));
            boolean hasElastic=false;for(View v:original)if(elastic(v))hasElastic=true;
            FrameLayout body=null;WrapLayout actions=null;
            for(View v:original){if(v.getClass().getName().contains("Guideline")){detach(v);col.addView(v,new LinearLayout.LayoutParams(0,0));continue;}
                if(stretch&&hasElastic&&overlay(v))continue;
                if(action(v)){if(actions==null){actions=new WrapLayout(group.getContext());add(col,actions,-2);}if(v instanceof ViewGroup)inline((ViewGroup)v,null,null,24,true);v.setTag(ROLE,"action");detach(v);actions.addView(v,new ViewGroup.LayoutParams(-2,-2));continue;}actions=null;
                boolean flexible=stretch&&elastic(v);
                if(flexible){final FrameLayout slot=new FrameLayout(group.getContext());final View originalContent=v;detach(v);slot.addView(v,new FrameLayout.LayoutParams(-1,-1));slot.setVisibility(v.getVisibility());group.getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener(){@Override public void onGlobalLayout(){if(slot.getVisibility()!=originalContent.getVisibility())slot.setVisibility(originalContent.getVisibility());}});weighted(col,slot);if(body==null&&v.getVisibility()!=View.GONE)body=slot;}
                else{if(v instanceof TextView&&!(v instanceof EditText)&&!v.isClickable())((TextView)v).setGravity(Gravity.START|Gravity.CENTER_VERTICAL);add(col,v,naturalHeight(v));}
            }
            if(body!=null)for(View v:original)if(overlay(v))overlay(body,v);
            if(!hasElastic&&stretch){ScrollView scroll=new ScrollView(group.getContext());scroll.setFillViewport(false);scroll.addView(col,new ScrollView.LayoutParams(-1,-2));fill(group,scroll,true);}else fill(group,col,stretch);
        }else if(group.getClass()==LinearLayout.class&&((LinearLayout)group).getOrientation()==0&&compactActions(original)){WrapLayout actions=new WrapLayout(group.getContext());for(View v:original){if(v instanceof ViewGroup)inline((ViewGroup)v,null,null,24,true);detach(v);actions.addView(v,new ViewGroup.LayoutParams(-2,-2));}fill(group,actions,false);}
    }
    private static boolean formFooter(ViewGroup group){
        if(!CarUi.name(group).equals("v_lay_bottom")||find(group,"v_btn_return")==null||find(group,"v_btn_yes")==null)return false;
        List<View> original=children(group);for(View v:original)if(!(v instanceof TextView)&&!(v instanceof ViewGroup&&v.isClickable()))return false;
        WrapLayout row=new WrapLayout(group.getContext());row.setPadding(d(group,12),d(group,10),d(group,12),d(group,10));for(View v:original){if(v instanceof ViewGroup)inline((ViewGroup)v,null,null,24,true);detach(v);if(v instanceof TextView)((TextView)v).setGravity(Gravity.START|Gravity.CENTER_VERTICAL);if(v instanceof EditText)v.setMinimumWidth(d(group,160));row.addView(v,new ViewGroup.LayoutParams(-2,-2));}fill(group,row,false);return true;
    }
    /** Old inline number fields had fixed 50x30dp bounds; wrap their real labels/help instead of squeezing the value. */
    private static boolean numericFormRow(ViewGroup group){
        if(group.getClass()!=LinearLayout.class||((LinearLayout)group).getOrientation()!=LinearLayout.HORIZONTAL)return false;
        List<View> parts=children(group);EditText field=null;
        for(View v:parts){if(v instanceof EditText){if(field!=null||(((EditText)v).getInputType()&android.text.InputType.TYPE_MASK_CLASS)!=android.text.InputType.TYPE_CLASS_NUMBER)return false;field=(EditText)v;}else if(!(v instanceof TextView)||v.isClickable())return false;}
        if(field==null||parts.size()<2)return false;
        WrapLayout row=new WrapLayout(group.getContext());row.setPadding(0,d(group,6),0,d(group,10));
        for(View v:parts){detach(v);if(v==field){field.setMinimumWidth(Math.max(d(group,104),Math.round(field.getPaint().measureText("00000"))+d(group,36)));field.setMinimumHeight(d(group,54));}else ((TextView)v).setGravity(Gravity.START|Gravity.CENTER_VERTICAL);row.addView(v,new ViewGroup.LayoutParams(-2,-2));}
        group.setTag(ROLE,"formField");fill(group,row,false);return true;
    }
    private static boolean compactActions(List<View> views){if(views.size()<2)return false;for(View v:views)if(!v.isClickable()||v instanceof EditText||v instanceof android.widget.SeekBar)return false;return true;}
    private static boolean hasScroll(View root){if(scroll(root))return true;if(root instanceof ViewGroup)for(View child:children((ViewGroup)root))if(hasScroll(child))return true;return false;}
    private static boolean action(View v){return v.isClickable()&&CarUi.name(v).startsWith("v_btn_")&&!(v instanceof EditText);}
    private static boolean selector(View v){if(!recycler(v))return false;String id=CarUi.name(v);if(id.equals("v_list_gn")||id.equals("v_list_top")||id.equals("v_list_bottom")||id.equals("v_list_type")||id.startsWith("v_list_type_")||id.equals("v_list_btn")||id.equals("v_list_path")||id.equals("v_path")||id.equals("v_sd"))return true;try{Object lm=v.getClass().getMethod("getLayoutManager").invoke(v);return lm!=null&&(Integer)lm.getClass().getMethod("getOrientation").invoke(lm)==0;}catch(Exception ignored){return false;}}
    private static boolean elastic(View v){ViewGroup.LayoutParams p=v.getLayoutParams();return content(v)&&!selector(v)&&p!=null&&(p.height==0||p.height==-1);}
    private static int naturalHeight(View v){ViewGroup.LayoutParams p=v.getLayoutParams();if(recycler(v)&&p!=null&&p.height>0)return p.height;if(selector(v))return selectorHeight(v);if(v.getClass()==View.class&&p!=null){if(p.height>0){if(p.height<=d(v,3))v.setTag(ROLE,"divider");return p.height;}if(p.width>0&&p.width<=d(v,3)){v.setTag(ROLE,"divider");return d(v,1);}}if(v instanceof android.widget.SeekBar)return Math.max(d(v,48),p==null?0:p.height);if(v instanceof ImageView)return p!=null&&p.height>0?p.height:d(v,48);return -2;}
    private static void tool(View action,String title,String icon){
        if(action instanceof LinearLayout){LinearLayout l=(LinearLayout)action;l.setOrientation(0);l.setGravity(Gravity.CENTER_VERTICAL);
            boolean found=false;for(int i=0;i<l.getChildCount();i++){View child=l.getChildAt(i);if(child instanceof ImageView){((ImageView)child).setImageDrawable(new Icons(icon,CarUi.skin(action.getContext()).ink));child.setLayoutParams(new LinearLayout.LayoutParams(d(action,22),d(action,22)));child.setPadding(0,0,0,0);}if(child instanceof TextView){((TextView)child).setText(title);child.setVisibility(View.VISIBLE);((TextView)child).setPadding(d(action,8),0,0,0);child.setLayoutParams(new LinearLayout.LayoutParams(-2,-2));found=true;}}
            if(!found){TextView text=CarUi.text(action.getContext(),title,17,CarUi.skin(action.getContext()).ink,true);text.setPadding(d(action,8),0,0,0);l.addView(text);}}
        action.setMinimumHeight(d(action,52));action.setPadding(d(action,14),d(action,10),d(action,14),d(action,10));action.setContentDescription(title);action.setTag(ROLE,"action");
        final View.OnFocusChangeListener original=action.getOnFocusChangeListener();
        action.setOnFocusChangeListener(new View.OnFocusChangeListener(){@Override public void onFocusChange(View v,boolean focus){if(original!=null)original.onFocusChange(v,focus);if(v instanceof ViewGroup){ViewGroup g=(ViewGroup)v;for(int i=0;i<g.getChildCount();i++)if(g.getChildAt(i) instanceof TextView)g.getChildAt(i).setVisibility(View.VISIBLE);}}});
    }
    public static void bound(View item,Object bean){
        if(item==null)return;Object res=item.getTag(LAYOUT);String layout=res instanceof Integer?ResourceIndex.layout((Integer)res):"";
        String label=layout.equals("item_root")?"v_pathName":layout.equals("item_dir_gn")?"v_text_name":"v_name";
        boolean compact=layout.equals("item_root")||layout.equals("item_wp_path")||layout.equals("item_wp_path_split")||layout.equals("item_dir_gn");
        boolean action=layout.equals("item_laboratory")||layout.equals("item_dialog_menu")||layout.equals("item_file_menu_botton");
        if(compact||action){
            if((layout.equals("item_dialog_menu")||layout.equals("item_file_menu_botton"))&&item.getLayoutParams()!=null){ViewGroup.LayoutParams p=item.getLayoutParams();p.width=-1;item.setLayoutParams(p);}
            if(item.getTag(REWRITTEN)==null&&item instanceof ViewGroup){inline((ViewGroup)item,label,layout.equals("item_dir_gn")?"v_image_ico":layout.equals("item_wp_path_split")?"v_split_ico":"v_ico",layout.equals("item_wp_path_split")?14:24,compact);item.setTag(REWRITTEN,Boolean.TRUE);}
            item.setTag(ROLE,layout.equals("item_dialog_menu")?"menu":compact?"location":"row");View text=find(item,label);if(text instanceof TextView){text.setVisibility(View.VISIBLE);((TextView)text).setSingleLine(compact);((TextView)text).setMaxLines(compact?1:3);keepLabel(item,(TextView)text);}
            CarUi.theme(item);return;
        }
        boolean check=layout.contains("check")||layout.equals("item_apps_type")||layout.equals("item_set_immersed");
        boolean chip=layout.equals("item_apps_type")||layout.equals("item_set_immersed");
        boolean app=layout.equals("item_app2")||layout.equals("item_app");
        if(item.getTag(REWRITTEN)==null&&item instanceof ViewGroup){
            item.setTag(REWRITTEN,Boolean.TRUE);
            View name=find(item,"v_name"),icon=find(item,"v_ico");
            if((app||check)&&name!=null){List<View> all=allViews(item);LinearLayout line=column(item.getContext());line.setGravity(app?Gravity.CENTER:Gravity.CENTER_VERTICAL);line.setPadding(d(item,14),d(item,chip?8:14),d(item,14),d(item,chip?8:14));
                if(!app)line.setOrientation(0);
                if(icon!=null){detach(icon);icon.setPadding(0,0,0,0);if(icon instanceof ImageView)((ImageView)icon).setScaleType(ImageView.ScaleType.FIT_CENTER);LinearLayout.LayoutParams ip=new LinearLayout.LayoutParams(d(item,app?54:24),d(item,app?54:24));if(!app)ip.rightMargin=d(item,12);line.addView(icon,ip);}
                detach(name);TextView t=(TextView)name;t.setSingleLine(chip);t.setMaxLines(chip?1:app?2:6);t.setEllipsize(android.text.TextUtils.TruncateAt.END);t.setGravity(app?Gravity.CENTER:Gravity.CENTER_VERTICAL);t.setPadding(0,d(item,app?12:0),0,0);line.addView(name,new LinearLayout.LayoutParams(chip?-2:app?-1:0,-2,chip||app?0:1));
                for(View v:all)if(v!=item&&v!=name&&v!=icon&&v.getId()!=View.NO_ID&&v.getParent()!=null&&!isAncestor(v,name)&&!isAncestor(v,icon)){detach(v);line.addView(v,new LinearLayout.LayoutParams(d(item,22),d(item,22)));}
                fill((ViewGroup)item,line,false);
                if(chip){ViewGroup.LayoutParams lp=line.getLayoutParams();lp.width=-2;lp.height=-2;line.setLayoutParams(lp);}
            }
        }
        if(check&&bean!=null){try{Object selected;try{selected=field(bean,"b");}catch(NoSuchFieldException e){selected=field(bean,"boolValue");}if(selected instanceof Boolean)item.setTag(SELECTED,selected);}catch(Exception ignored){/* Other row models retain their original state artwork. */}}
        item.setTag(ROLE,Boolean.TRUE.equals(item.getTag(NETWORK_ROW))?"fileRow":chip?"chip":check?"check":app?"app":"row");
        if(chip){View icon=find(item,"v_ico");if(icon!=null)icon.setVisibility(View.GONE);}
        CarUi.theme(item);retheme(item);
    }
    private static void keepLabel(View item,final TextView label){View.OnFocusChangeListener listener=item.getOnFocusChangeListener();if(listener instanceof LabelFocus)return;item.setOnFocusChangeListener(new LabelFocus(listener,label));}
    private static final class LabelFocus implements View.OnFocusChangeListener{final View.OnFocusChangeListener original;final TextView text;LabelFocus(View.OnFocusChangeListener original,TextView text){this.original=original;this.text=text;}@Override public void onFocusChange(View v,boolean focus){if(original!=null)original.onFocusChange(v,focus);text.setVisibility(View.VISIBLE);}}
    private static boolean isAncestor(View parent,View child){if(child==null)return false;while(child.getParent() instanceof View){child=(View)child.getParent();if(child==parent)return true;}return false;}
    private static List<View> allViews(View root){List<View> result=new ArrayList<View>();result.add(root);if(root instanceof ViewGroup)for(int i=0;i<((ViewGroup)root).getChildCount();i++)result.addAll(allViews(((ViewGroup)root).getChildAt(i)));return result;}
    public static void retheme(View root){
        if(root==null||CarUi.OWN.equals(root.getTag()))return;CarUi.Skin s=CarUi.skin(root.getContext());String id=CarUi.name(root);Object role=root.getTag(ROLE);
        if(root instanceof ViewGroup&&!recycler(root)&&root.getBackground()!=null){if(root.isClickable()||role!=null)root.setBackground(CarUi.buttonBackground(root.getContext(),s.surface,s.soft,s.ink,18));else root.setBackgroundColor(s.background);}
        if(role!=null){boolean selected=Boolean.TRUE.equals(root.getTag(SELECTED));if("app".equals(role)||"row".equals(role)||"check".equals(role)||"action".equals(role)||"location".equals(role)||"menu".equals(role)){root.setBackground(CarUi.buttonBackground(root.getContext(),selected?s.soft:s.surface,s.soft,s.ink,"app".equals(role)?22:14));root.setMinimumHeight(d(root,52));}
            if("primary".equals(role)){root.setBackground(CarUi.buttonBackground(root.getContext(),s.accent,s.pressedAccent,s.onAccent,24));root.setMinimumHeight(d(root,56));if(root instanceof TextView){((TextView)root).setTextColor(s.onAccent);((TextView)root).setGravity(Gravity.CENTER);root.setPadding(d(root,20),d(root,14),d(root,20),d(root,14));}}
            if("divider".equals(role))root.setBackgroundColor(s.outline);
            if("networkPane".equals(role))root.setBackground(CarUi.rounded(root.getContext(),s.surface,6));
            if("fileRow".equals(role)){root.setBackground(CarUi.buttonBackground(root.getContext(),s.surface,s.soft,s.ink,2));root.setMinimumHeight(d(root,72));View name=find(root,"v_file_name"),meta=find(root,"v_file_attribute");if(name instanceof TextView){((TextView)name).setTextSize(17);((TextView)name).setTextColor(s.ink);}if(meta instanceof TextView){((TextView)meta).setTextSize(14);((TextView)meta).setTextColor(s.muted);}}

            if("menu".equals(role)){View icon=find(root,"v_ico");if(icon instanceof ImageView)((ImageView)icon).setColorFilter(s.ink);}
            if("location".equals(role)){View label=find(root,"v_pathName");if(label==null)label=find(root,"v_text_name");if(label==null)label=find(root,"v_name");if(label instanceof TextView){((TextView)label).setSingleLine(true);((TextView)label).setMaxLines(1);}}
            if("app".equals(role)){root.setPadding(d(root,6),d(root,6),d(root,6),d(root,6));root.setBackgroundColor(android.graphics.Color.TRANSPARENT);if(root instanceof ViewGroup&&((ViewGroup)root).getChildCount()>0){View face=((ViewGroup)root).getChildAt(0);face.setDuplicateParentStateEnabled(true);face.setTag(ROLE,"appFace");}}
            if("appFace".equals(role)){root.setBackground(CarUi.buttonBackground(root.getContext(),s.surface,s.soft,s.ink,22));if(Build.VERSION.SDK_INT>=21)root.setElevation("mono".equals(s.theme)?d(root,4):0);}
            if("chip".equals(role)||"settingsTab".equals(role)){root.setMinimumHeight(d(root,48));root.setBackground(CarUi.buttonBackground(root.getContext(),selected?s.accent:s.surface,selected?s.pressedAccent:s.soft,selected?s.onAccent:s.ink,22));View name=root instanceof TextView?root:find(root,"v_name");if(name instanceof TextView){((TextView)name).setTextColor(selected?s.onAccent:s.ink);((TextView)name).setSingleLine(true);}ViewGroup.LayoutParams p=root.getLayoutParams();if(p instanceof ViewGroup.MarginLayoutParams)((ViewGroup.MarginLayoutParams)p).rightMargin=d(root,8);}
            if(root instanceof TextView&&!"settingsTab".equals(role)){((TextView)root).setTextColor("primary".equals(role)?s.onAccent:s.ink);if("title".equals(role))((TextView)root).setTextSize(28);if("section".equals(role))((TextView)root).setTextSize(20);if("empty".equals(role)){((TextView)root).setTextColor(s.muted);((TextView)root).setTextSize(19);}if("footer".equals(role)||"help".equals(role)){TextView text=(TextView)root;boolean help="help".equals(role);text.setTextSize(14);text.setTextColor(s.muted);text.setSingleLine(false);text.setMaxLines(help?Integer.MAX_VALUE:2);text.setEllipsize(help?null:android.text.TextUtils.TruncateAt.END);text.setPadding(d(root,8),d(root,6),d(root,8),d(root,6));}}
            if("check".equals(role)){View icon=find(root,"v_ico");if(icon instanceof ImageView&&root.getTag(SELECTED)!=null)((ImageView)icon).setImageDrawable(new Indicator(selected,!s.dark&&"warm".equals(s.theme)?s.ink:s.accent,s.muted));}
            if("check".equals(role)){View text=find(root,"v_name");if(text instanceof TextView)((TextView)text).setMaxLines(6);}
            if(Build.VERSION.SDK_INT>=21&&"app".equals(role))root.setElevation("mono".equals(s.theme)?d(root,4):0);
        }
        if(root instanceof TextView){TextView t=(TextView)root;if(id.startsWith("v_read_ts_text")){t.setSingleLine(false);t.setMaxLines(4);t.setTextColor(s.muted);}}
        if(root instanceof ImageView&&id.startsWith("v_read_ts_ico")){((ImageView)root).setImageDrawable(new Icons("lock",s.muted));((ImageView)root).setColorFilter(s.muted);root.setPadding(d(root,18),d(root,18),d(root,18),d(root,18));}
        if(root.getClass().getName().endsWith("HiveProgressView"))try{root.getClass().getMethod("setColor",int.class).invoke(root,s.accent);}catch(Exception e){Log.w(TAG,"Loader color",e);}
        if(root instanceof ViewGroup){ViewGroup g=(ViewGroup)root;for(int i=0;i<g.getChildCount();i++)retheme(g.getChildAt(i));}
    }
    private static void responsiveGrid(final View list,final int target,final int maximum){
        if(maximum>0)try{Object lm=list.getClass().getMethod("getLayoutManager").invoke(list);if(lm!=null)lm.getClass().getMethod("setSpanCount",int.class).invoke(lm,maximum);}catch(Exception e){Log.w(TAG,"Initial form columns",e);}
        list.addOnLayoutChangeListener(new View.OnLayoutChangeListener(){int previous=-1;Object manager;@Override public void onLayoutChange(View v,int l,int t,int r,int b,int ol,int ot,int or,int ob){int count=Math.max(1,(r-l)/d(v,target));if(maximum>0)count=Math.min(maximum,count);try{Object lm=v.getClass().getMethod("getLayoutManager").invoke(v);if(count==previous&&lm==manager)return;previous=count;manager=lm;if(lm!=null)lm.getClass().getMethod("setSpanCount",int.class).invoke(lm,count);}catch(NoSuchMethodException ignored){/* Linear lists keep their original manager. */}catch(Exception e){Log.w(TAG,"Adaptive grid",e);}}});
    }
    private static final class Split extends ViewGroup{
        boolean wide;final View firstList,firstPath;int firstHeight;
        Split(Context c){this(c,null,null);}
        Split(Context c,View list,View path){super(c);firstList=list;firstPath=path;}
        @Override protected LayoutParams generateDefaultLayoutParams(){return new LayoutParams(-1,-1);}
        @Override protected void onMeasure(int w,int h){int width=MeasureSpec.getSize(w),height=MeasureSpec.getSize(h);wide=width>=CarUi.dp(getContext(),780);int count=Math.max(1,getChildCount());firstHeight=height/count;if(!wide&&count==2&&firstList!=null&&itemCount(firstList)==0&&itemCount(firstPath)<=0)firstHeight=Math.min(firstHeight,CarUi.dp(getContext(),280));for(int i=0;i<getChildCount();i++)getChildAt(i).measure(MeasureSpec.makeMeasureSpec(wide?width/count:width,MeasureSpec.EXACTLY),MeasureSpec.makeMeasureSpec(wide?height:i==0?firstHeight:height-firstHeight,MeasureSpec.EXACTLY));setMeasuredDimension(width,height);}
        @Override protected void onLayout(boolean changed,int l,int t,int r,int b){int count=Math.max(1,getChildCount()),width=r-l,height=b-t;for(int i=0;i<getChildCount();i++){int x=wide?i*width/count:0,y=wide?0:i==0?0:firstHeight;getChildAt(i).layout(x,y,wide?(i+1)*width/count:width,wide?height:i==0?firstHeight:height);}}
    }
    private static final class Indicator extends Drawable{
        final Paint paint=new Paint(3);final boolean checked;final int accent,muted;
        Indicator(boolean checked,int accent,int muted){this.checked=checked;this.accent=accent;this.muted=muted;}
        @Override public void draw(Canvas c){RectF r=new RectF(getBounds());float inset=r.width()*.08f;r.inset(inset,inset);paint.setColor(checked?accent:muted);paint.setStyle(Paint.Style.STROKE);paint.setStrokeWidth(r.width()*.09f);c.drawRoundRect(r,r.width()*.22f,r.width()*.22f,paint);if(checked){android.graphics.Path p=new android.graphics.Path();p.moveTo(r.left+r.width()*.2f,r.top+r.height()*.5f);p.lineTo(r.left+r.width()*.44f,r.top+r.height()*.72f);p.lineTo(r.left+r.width()*.82f,r.top+r.height()*.28f);c.drawPath(p,paint);}}
        @Override public void setAlpha(int a){paint.setAlpha(a);}@Override public void setColorFilter(android.graphics.ColorFilter f){paint.setColorFilter(f);}@Override public int getOpacity(){return android.graphics.PixelFormat.TRANSLUCENT;}
    }
    /** Four persistent pages; changing sections never recreates an original settings widget. */
    private static final class SettingsBody extends LinearLayout{
        final LinearLayout nav;final FrameLayout pages;final TextView[] tabs=new TextView[4];final ScrollView[] scrolls=new ScrollView[4];int selected;
        SettingsBody(Context c,LinearLayout[] sections){super(c);nav=new LinearLayout(c);pages=new FrameLayout(c);addView(nav);addView(pages);String[] titles={"显示","安装","连接","高级"};for(int i=0;i<4;i++){final int index=i;TextView tab=CarUi.text(c,titles[i],18,CarUi.skin(c).ink,true);tab.setGravity(Gravity.CENTER);tab.setPadding(CarUi.dp(c,12),CarUi.dp(c,14),CarUi.dp(c,12),CarUi.dp(c,14));tab.setTag(ROLE,"settingsTab");tab.setClickable(true);tab.setFocusable(true);tab.setContentDescription(titles[i]+"设置分区");tab.setOnClickListener(new View.OnClickListener(){@Override public void onClick(View v){show(index);}});tabs[i]=tab;nav.addView(tab);ScrollView scroll=new ScrollView(c);scroll.setFillViewport(false);scroll.addView(sections[i],new ScrollView.LayoutParams(-1,-2));scrolls[i]=scroll;pages.addView(scroll,new FrameLayout.LayoutParams(-1,-1));}show(0);}
        void show(int index){selected=index;for(int i=0;i<4;i++){scrolls[i].setVisibility(i==index?VISIBLE:GONE);tabs[i].setTag(SELECTED,i==index);tabs[i].setSelected(i==index);}retheme(this);}
        @Override protected void onMeasure(int w,int h){boolean wide=MeasureSpec.getSize(w)>=CarUi.dp(getContext(),720)&&MeasureSpec.getSize(w)>MeasureSpec.getSize(h)*1.12f;int orientation=wide?HORIZONTAL:VERTICAL;if(getOrientation()!=orientation)setOrientation(orientation);nav.setOrientation(wide?VERTICAL:HORIZONTAL);LinearLayout.LayoutParams n=new LinearLayout.LayoutParams(wide?CarUi.dp(getContext(),104):-1,wide?-1:-2);nav.setLayoutParams(n);pages.setLayoutParams(wide?new LinearLayout.LayoutParams(0,-1,1):new LinearLayout.LayoutParams(-1,0,1));for(TextView tab:tabs){LinearLayout.LayoutParams t=wide?new LinearLayout.LayoutParams(-1,-2):new LinearLayout.LayoutParams(0,-2,1);t.bottomMargin=CarUi.dp(getContext(),8);t.rightMargin=CarUi.dp(getContext(),8);tab.setLayoutParams(t);}super.onMeasure(w,h);}
    }
    private static final class GridHost extends FrameLayout{
        final View list;final int target,max;Object manager;int previous;
        GridHost(View list,int target,int max){this(list,target,max,false);}
        GridHost(View list,int target,int max,boolean fill){super(list.getContext());this.list=list;this.target=target;this.max=max;detach(list);addView(list,new FrameLayout.LayoutParams(-1,fill?-1:-2));}
        @Override protected void onMeasure(int w,int h){int targetPx=Math.round(CarUi.dp(getContext(),target)*Math.max(1,getResources().getConfiguration().fontScale));int count=Math.min(max,Math.max(1,MeasureSpec.getSize(w)/targetPx));try{Object lm=list.getClass().getMethod("getLayoutManager").invoke(list);if(lm!=null&&(lm!=manager||count!=previous)){lm.getClass().getMethod("setSpanCount",int.class).invoke(lm,count);manager=lm;previous=count;}}catch(Exception e){Log.w(TAG,"Settings grid",e);}super.onMeasure(w,h);}
    }
    /** Pair related advanced fields when each can retain at least 290dp of label/input space. */
    private static final class FieldGrid extends ViewGroup{
        final List<android.graphics.Rect> positions=new ArrayList<android.graphics.Rect>();
        FieldGrid(Context c){super(c);}
        @Override protected LayoutParams generateDefaultLayoutParams(){return new LayoutParams(-1,-2);}
        @Override protected void onMeasure(int w,int h){int width=MeasureSpec.getSize(w),gap=CarUi.dp(getContext(),14),columns=width>=CarUi.dp(getContext(),600)?2:1,cell=(width-(columns-1)*gap)/columns,y=0,rowHeight=0;positions.clear();for(int i=0;i<getChildCount();i++){if(i>0&&i%columns==0){y+=rowHeight+gap;rowHeight=0;}View child=getChildAt(i);child.measure(MeasureSpec.makeMeasureSpec(cell,MeasureSpec.EXACTLY),MeasureSpec.makeMeasureSpec(0,MeasureSpec.UNSPECIFIED));int x=(i%columns)*(cell+gap);positions.add(new android.graphics.Rect(x,y,x+cell,y+child.getMeasuredHeight()));rowHeight=Math.max(rowHeight,child.getMeasuredHeight());}setMeasuredDimension(width,y+rowHeight);}
        @Override protected void onLayout(boolean changed,int l,int t,int r,int b){for(int i=0;i<getChildCount();i++){android.graphics.Rect p=positions.get(i);getChildAt(i).layout(p.left,p.top,p.right,p.bottom);}}
    }
}
