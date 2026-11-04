package com.yunpan.appmanage.carui;

import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.ScrollView;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;

public final class ShortcutPicker extends Dialog {
    public interface Listener { boolean add(Favorites.Item item); }
    private final Activity activity;
    private final Bridge bridge;
    private final CarUi.Skin skin;
    private final Listener listener;
    private final ArrayList<Favorites.Item> source=new ArrayList<Favorites.Item>();
    private final ArrayList<Favorites.Item> filtered=new ArrayList<Favorites.Item>();
    private final LinearLayout panel,tabs;
    private final FrameLayout body;
    private final EditText search;
    private int selected;
    private Rows adapter;
    private int generation;
    private int screenWidth,screenHeight;
    private int d(float value){return CarUi.dp(activity,value);}
    private LinearLayout vertical(){LinearLayout view=new LinearLayout(activity);view.setOrientation(1);return view;}
    private LinearLayout horizontal(){LinearLayout view=new LinearLayout(activity);view.setOrientation(0);view.setGravity(Gravity.CENTER_VERTICAL);return view;}
    private TextView text(String value,float size,int color,boolean bold){return CarUi.text(activity,value,size,color,bold);}
    public ShortcutPicker(Activity activity,Bridge bridge,CarUi.Skin skin,Listener listener){
        super(activity);this.activity=activity;this.bridge=bridge;this.skin=skin;this.listener=listener;
        requestWindowFeature(Window.FEATURE_NO_TITLE);panel=vertical();panel.setTag(CarUi.OWN);panel.setPadding(d(26),d(24),d(26),d(24));panel.setBackground(CarUi.rounded(activity,skin.surface,30));
        LinearLayout heading=horizontal();heading.addView(text("添加跳转",27,skin.ink,true),new LinearLayout.LayoutParams(0,-2,1));
        FrameLayout close=new FrameLayout(activity);close.setContentDescription("关闭添加跳转");close.setFocusable(true);close.setClickable(true);close.setBackground(CarUi.buttonBackground(activity,skin.soft,skin.surface,skin.ink,24));
        ImageView x=new ImageView(activity);x.setImageDrawable(new Icons("close",skin.ink));close.addView(x,new FrameLayout.LayoutParams(d(22),d(22),Gravity.CENTER));heading.addView(close,new LinearLayout.LayoutParams(d(48),d(48)));
        close.setOnClickListener(new View.OnClickListener(){@Override public void onClick(View v){dismiss();}});panel.addView(heading);
        TextView subtitle=text("把常用应用、功能和页面放到主页",16,skin.muted,false);subtitle.setPadding(0,d(10),0,d(20));panel.addView(subtitle);
        tabs=horizontal();tabs.setPadding(d(4),d(4),d(4),d(4));tabs.setBackground(CarUi.rounded(activity,skin.soft,24));panel.addView(tabs,new LinearLayout.LayoutParams(-1,-2));
        search=new EditText(activity);search.setSingleLine(true);search.setHint("搜索功能");search.setTextSize(18);search.setTextColor(skin.ink);search.setHintTextColor(skin.muted);search.setPadding(d(18),d(12),d(18),d(12));search.setMinimumHeight(d(54));search.setBackground(CarUi.buttonBackground(activity,skin.soft,skin.soft,skin.ink,18));
        LinearLayout.LayoutParams searchParams=new LinearLayout.LayoutParams(-1,-2);searchParams.topMargin=d(16);searchParams.bottomMargin=d(12);panel.addView(search,searchParams);
        body=new FrameLayout(activity);panel.addView(body,new LinearLayout.LayoutParams(-1,0,1));setContentView(panel);
        search.addTextChangedListener(new TextWatcher(){@Override public void beforeTextChanged(CharSequence s,int start,int count,int after){}@Override public void onTextChanged(CharSequence s,int start,int before,int count){filter();}@Override public void afterTextChanged(Editable text){}});
        setTab(0);
        panel.getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener(){@Override public void onGlobalLayout(){adjustWindow();}});
    }
    @Override public void show(){
        super.show();Window window=getWindow();if(window!=null){
            adjustWindow();
            window.setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_ADJUST_RESIZE|WindowManager.LayoutParams.SOFT_INPUT_STATE_ALWAYS_HIDDEN);
        }
        CarUi.decorateDialog(this);
    }
    private void adjustWindow(){
        if(getWindow()==null)return;
        android.util.DisplayMetrics metrics=new android.util.DisplayMetrics();activity.getWindowManager().getDefaultDisplay().getMetrics(metrics);
        if(metrics.widthPixels!=screenWidth||metrics.heightPixels!=screenHeight){screenWidth=metrics.widthPixels;screenHeight=metrics.heightPixels;
            getWindow().setLayout(Math.min(screenWidth-d(48),d(680)),Math.min(screenHeight-d(64),d(780)));
        }
    }
    private void setTab(int index){
        selected=index;generation++;tabs.removeAllViews();String[] names={"内置功能","应用","自定义"};
        for(int i=0;i<names.length;i++){
            final int position=i;TextView tab=text(names[i],17,skin.ink,i==selected);tab.setGravity(Gravity.CENTER);tab.setMinHeight(d(50));tab.setFocusable(true);tab.setClickable(true);
            tab.setBackground(CarUi.buttonBackground(activity,i==selected?skin.surface:Color.TRANSPARENT,skin.surface,skin.ink,21));tabs.addView(tab,new LinearLayout.LayoutParams(0,-2,1));
            tab.setOnClickListener(new View.OnClickListener(){@Override public void onClick(View view){setTab(position);}});
        }
        source.clear();filtered.clear();search.setText("");body.removeAllViews();search.setVisibility(index==2?View.GONE:View.VISIBLE);
        if(index==2){customForm();return;}
        search.setHint(index==0?"搜索内置功能":"搜索应用名称或包名");
        if(index==0){source.addAll(bridge.tools());list();filter();}else loadApps();
    }
    private void list(){
        body.removeAllViews();ListView list=new ListView(activity);list.setDivider(null);list.setDividerHeight(0);list.setCacheColorHint(Color.TRANSPARENT);adapter=new Rows();list.setAdapter(adapter);body.addView(list,new FrameLayout.LayoutParams(-1,-1));
        TextView empty=text(selected==1?"没有找到可打开的应用":"没有匹配的功能，换个关键词试试",18,skin.muted,false);empty.setGravity(Gravity.CENTER);body.addView(empty,new FrameLayout.LayoutParams(-1,-1));list.setEmptyView(empty);
        list.setOnItemClickListener(new AdapterView.OnItemClickListener(){@Override public void onItemClick(AdapterView<?> parent,View view,int position,long id){if(listener.add(filtered.get(position)))dismiss();}});
    }
    private void filter(){
        String query=search.getText().toString().trim().toLowerCase(Locale.ROOT);filtered.clear();
        for(Favorites.Item item:source)if(query.isEmpty()||item.name.toLowerCase(Locale.ROOT).contains(query)||item.target.toLowerCase(Locale.ROOT).contains(query))filtered.add(item);
        if(adapter!=null)adapter.notifyDataSetChanged();
    }
    private void loadApps(){
        TextView loading=text("正在读取可打开的应用…",18,skin.muted,false);loading.setGravity(Gravity.CENTER);body.addView(loading,new FrameLayout.LayoutParams(-1,-1));
        final int request=generation;
        new Thread(new Runnable(){@Override public void run(){
            final ArrayList<Favorites.Item> result=new ArrayList<Favorites.Item>();
            try{
                Intent launcher=new Intent(Intent.ACTION_MAIN).addCategory(Intent.CATEGORY_LAUNCHER);
                List<ResolveInfo> apps=activity.getPackageManager().queryIntentActivities(launcher,0);HashSet<String> seen=new HashSet<String>();
                for(ResolveInfo app:apps){String packageName=app.activityInfo.packageName;if(seen.add(packageName))result.add(new Favorites.Item(app.loadLabel(activity.getPackageManager()).toString(),"app",packageName,"apps"));}
                final Collator collator=Collator.getInstance(Locale.CHINA);Collections.sort(result,new Comparator<Favorites.Item>(){@Override public int compare(Favorites.Item a,Favorites.Item b){return collator.compare(a.name,b.name);}});
            }catch(Exception ignored){}
            activity.runOnUiThread(new Runnable(){@Override public void run(){if(request!=generation||!isShowing())return;source.clear();source.addAll(result);list();filter();}});
        }},"car-ui-app-picker").start();
    }
    private void customForm(){
        ScrollView scroll=new ScrollView(activity);scroll.setFillViewport(false);body.addView(scroll,new FrameLayout.LayoutParams(-1,-1));
        LinearLayout form=vertical();form.setPadding(0,d(18),0,d(18));scroll.addView(form,new ScrollView.LayoutParams(-1,-2));
        form.addView(text("入口名称",18,skin.ink,true));
        final EditText name=new EditText(activity);name.setHint("例如：导航回家");name.setSingleLine(true);CarUi.theme(name);
        LinearLayout.LayoutParams input=new LinearLayout.LayoutParams(-1,-2);input.topMargin=d(10);input.bottomMargin=d(22);form.addView(name,input);
        form.addView(text("跳转地址",18,skin.ink,true));
        final EditText target=new EditText(activity);target.setHint("应用链接、包名或 包名/Activity");target.setInputType(android.text.InputType.TYPE_CLASS_TEXT|android.text.InputType.TYPE_TEXT_VARIATION_URI);target.setMaxLines(3);target.setMinLines(1);CarUi.theme(target);
        LinearLayout.LayoutParams address=new LinearLayout.LayoutParams(-1,-2);address.topMargin=d(10);form.addView(target,address);
        TextView explanation=text("支持应用深层链接、intent:// 地址和应用包名。\n打开时由系统交给对应应用处理。",15,skin.muted,false);explanation.setPadding(0,d(14),0,d(24));form.addView(explanation);
        TextView save=text("添加到常用功能",19,skin.onAccent,true);save.setGravity(Gravity.CENTER);save.setMinHeight(d(56));save.setFocusable(true);save.setClickable(true);save.setBackground(CarUi.buttonBackground(activity,skin.accent,skin.pressedAccent,skin.onAccent,28));form.addView(save,new LinearLayout.LayoutParams(-1,-2));
        save.setOnClickListener(new View.OnClickListener(){@Override public void onClick(View view){
            String title=name.getText().toString().trim(),address=target.getText().toString().trim();
            if(title.isEmpty()){name.setError("请输入入口名称");name.requestFocus();return;}
            try{
                Intent intent=Bridge.parseTarget(activity,address);
                if(intent.resolveActivity(activity.getPackageManager())==null){target.setError("没有应用能打开此地址，请检查后重试");return;}
                if(listener.add(new Favorites.Item(title,"link",address,"link")))dismiss();
            }catch(Exception error){target.setError(error.getMessage()==null?"地址格式不正确":error.getMessage());}
        }});
    }
    private final class Rows extends BaseAdapter {
        @Override public int getCount(){return filtered.size();}
        @Override public Object getItem(int index){return filtered.get(index);}
        @Override public long getItemId(int index){return index;}
        @Override public View getView(int index,View old,ViewGroup parent){
            Favorites.Item item=filtered.get(index);LinearLayout row=horizontal();row.setMinimumHeight(d(78));row.setPadding(d(12),d(12),d(12),d(12));row.setBackground(CarUi.buttonBackground(activity,skin.surface,skin.soft,skin.ink,18));
            ImageView image=new ImageView(activity);Drawable installed=bridge.icon(item);image.setImageDrawable(installed!=null?installed:new Icons(item.icon,skin.ink));row.addView(image,new LinearLayout.LayoutParams(d(34),d(34)));
            LinearLayout words=vertical();words.setPadding(d(16),0,d(10),0);TextView name=text(item.name,19,skin.ink,true);name.setMaxLines(2);words.addView(name);
            TextView detail=text("app".equals(item.type)?item.target:"内置功能",13,skin.muted,false);detail.setPadding(0,d(5),0,0);words.addView(detail);row.addView(words,new LinearLayout.LayoutParams(0,-2,1));
            ImageView plus=new ImageView(activity);plus.setImageDrawable(new Icons("add",skin.muted));row.addView(plus,new LinearLayout.LayoutParams(d(24),d(24)));return row;
        }
    }
}
