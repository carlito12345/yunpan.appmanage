package com.yunpan.appmanage.carui;

import android.app.Activity;
import android.content.*;
import android.content.ClipboardManager;
import android.graphics.PixelFormat;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.text.*;
import android.util.DisplayMetrics;
import android.view.*;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputMethodManager;
import android.widget.*;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/** Guided pairing UI. The original EditText, buttons and asynchronous pairing callbacks survive. */
public final class AdbPairUi {
    private static final int PANEL=0x7e434130;
    private static final ArrayList<WeakReference<Panel>> panels=new ArrayList<WeakReference<Panel>>();
    private static final ArrayList<WeakReference<TextView>> labels=new ArrayList<WeakReference<TextView>>();
    private static Panel floating;
    private static int dp(Context c,int n){return CarUi.dp(c,n);}
    private static View find(View root,String name){int id=ResourceIndex.id(name);return id==0?null:root.findViewById(id);}
    private static void detach(View v){if(v!=null&&v.getParent() instanceof ViewGroup)((ViewGroup)v.getParent()).removeView(v);}
    private static LinearLayout column(Context c){LinearLayout v=new LinearLayout(c);v.setOrientation(1);return v;}
    private static Activity activity(Context c){for(int i=0;i<12&&c instanceof ContextWrapper;i++){if(c instanceof Activity)return(Activity)c;c=((ContextWrapper)c).getBaseContext();}return c instanceof Activity?(Activity)c:null;}
    private static TextView text(Context c,String value,int size,boolean bold){TextView t=CarUi.text(c,value,size,CarUi.skin(c).ink,bold);t.setTag(CarUi.OWN);t.setSingleLine(false);labels.add(new WeakReference<TextView>(t));return t;}
    private static TextView button(Context c,String value,View.OnClickListener listener){TextView t=text(c,value,17,true);t.setGravity(Gravity.CENTER);t.setMinimumHeight(dp(c,52));t.setPadding(dp(c,14),dp(c,10),dp(c,14),dp(c,10));t.setFocusable(true);t.setClickable(true);t.setOnClickListener(listener);t.setBackground(CarUi.buttonBackground(c,CarUi.skin(c).soft,CarUi.skin(c).surface,CarUi.skin(c).ink,22));return t;}
    private static void add(LinearLayout parent,View child){detach(child);LinearLayout.LayoutParams p=new LinearLayout.LayoutParams(-1,-2);p.bottomMargin=dp(parent.getContext(),12);parent.addView(child,p);}
    private static void root(ViewGroup root,View child){root.removeAllViews();root.setPadding(0,0,0,0);if(root instanceof LinearLayout){((LinearLayout)root).setOrientation(1);((LinearLayout)root).setGravity(Gravity.TOP);}root.addView(child,new ViewGroup.LayoutParams(-1,-1));}
    private static void action(View v){int minimum=dp(v.getContext(),52);v.setMinimumHeight(minimum);v.setPadding(dp(v.getContext(),14),dp(v.getContext(),10),dp(v.getContext(),14),dp(v.getContext(),10));try{v.getClass().getMethod("setMinHeight",int.class).invoke(v,minimum);}catch(Exception ignored){/* Native View minimum already set; ConstraintLayout also owns a solver minimum. */}}
    static void open(Context c){launchInput(c);}
    private static void launchInput(Context c){try{Intent i=new Intent().setClassName(c.getPackageName(),"com.yunpan.appmanage.ui.ActivityWindowInputAdbPair");if(!(c instanceof Activity))i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);c.startActivity(i);}catch(Exception e){CarUi.message(c,"无法打开配对页面，请使用原输入方式");}}

    static void guide(ViewGroup root){
        final Context c=root.getContext();LinearLayout page=column(c);page.setPadding(dp(c,20),dp(c,16),dp(c,20),dp(c,12));
        TextView title=text(c,"无线调试配对",28,true);add(page,title);
        WrapLayout bar=new WrapLayout(c);
        for(String id:new String[]{"v_btn_return","v_btn_start","v_btn_connect"}){View v=find(root,id);if(v!=null){detach(v);action(v);bar.addView(v,new ViewGroup.LayoutParams(-2,-2));}}
        add(page,bar);
        LinearLayout body=column(c);
        add(body,text(c,Build.VERSION.SDK_INT>=30?"先选择通知栏或悬浮输入，再打开系统配对码窗口填写 6 位数字。":"系统配对码需要 Android 11 或以上；旧系统请使用原网络 ADB 或 USB 连接方式。",19,true));
        add(body,text(c,"连接 Wi-Fi → 开发者选项 → 无线调试 → 使用配对码配对。保持系统的配对码窗口打开，不要切换或关闭它。",18,false));
        TextView assistant=button(c,"打开配对助手",new View.OnClickListener(){public void onClick(View v){launchInput(c);}});assistant.setEnabled(Build.VERSION.SDK_INT>=30);add(body,assistant);
        add(body,text(c,"配对码：系统弹窗中的 6 位数字，可能以 0 开头。\n配对端口：由管家自动发现，通常只需填写配对码。\n连接端口：无线调试主页中的端口，与配对端口不同。\n5555：传统网络 ADB 端口，不是配对码；SU / shell 密码也不是配对码。",17,false));
        add(body,text(c,"配对后返回管家检查 ADB 状态；尚未连接时再点“连接ADB”。未找到端口时，保持配对弹窗打开、确认 Wi-Fi 已连接，再生成新码重试。",17,false));
        TextView more=text(c,"其他输入方式与兼容选项",20,true);add(body,more);
        for(String id:new String[]{"v_btn_setver","v_btn_auto_enable_wifi_adb","v_btn_boyuel","v_btn_tcpip","v_btn_auto_port"}){View v=find(root,id);if(v!=null){action(v);add(body,v);}}
        View originalHelp=find(root,"v_ts66"),image=find(root,"v_ys1"),originalScroll=find(root,"v_scrollView");
        // Keep original resource identities; the old screenshot and long tutorial are superseded above.
        for(View v:new View[]{originalHelp,image})if(v!=null){detach(v);v.setVisibility(View.GONE);body.addView(v,new LinearLayout.LayoutParams(0,0));}
        ViewGroup scroll=originalScroll instanceof ViewGroup?(ViewGroup)originalScroll:new ScrollView(c);detach(scroll);scroll.removeAllViews();scroll.addView(body,new FrameLayout.LayoutParams(-1,-2));page.addView(scroll,new LinearLayout.LayoutParams(-1,0,1));root(root,page);
    }

    static void input(ViewGroup root){
        View field=find(root,"et_pair"),yes=find(root,"v_btn_yes"),no=find(root,"v_btn_no"),status=find(root,"v_ts");
        if(!(field instanceof EditText)||!(yes instanceof TextView)||!(no instanceof TextView)||!(status instanceof TextView))return;
        Panel p=new Panel(root,(EditText)field,(TextView)yes,(TextView)no,(TextView)status);root.setTag(PANEL,p);panels.add(new WeakReference<Panel>(p));
    }
    static void retheme(View root){Object value=root.getTag(PANEL);if(value instanceof Panel)((Panel)value).paint();}
    static void themeChanged(){for(int i=labels.size()-1;i>=0;i--){TextView t=labels.get(i).get();if(t==null)labels.remove(i);else{CarUi.Skin s=CarUi.skin(t.getContext());t.setTextColor(s.ink);if(t.isClickable())t.setBackground(CarUi.buttonBackground(t.getContext(),s.soft,s.surface,s.ink,22));}}for(int i=panels.size()-1;i>=0;i--){Panel p=panels.get(i).get();if(p==null)panels.remove(i);else p.paint();}}
    static void resumed(Activity a){for(WeakReference<Panel> ref:new ArrayList<WeakReference<Panel>>(panels)){Panel p=ref.get();if(p!=null&&p.owner==a){p.paint();if(p.permissionPending){p.permissionPending=false;if(Build.VERSION.SDK_INT>=23&&Settings.canDrawOverlays(a))p.showFloat(true);else p.hint.setText("尚未允许悬浮显示。可在此输入，或使用原通知栏输入方式。");}}}}
    static void destroyed(Activity a){for(int i=panels.size()-1;i>=0;i--){Panel p=panels.get(i).get();if(p==null||p.owner==a){if(p!=null)p.closeFloat(false);panels.remove(i);}}}

    private static final class Panel {
        final ViewGroup root;final Context c;final Activity owner;final EditText code;final TextView yes,no,status,hint,counter;
        final LinearLayout page,input;final FrameLayout slot;final ArrayList<TextView> ownText=new ArrayList<TextView>();final ArrayList<TextView> ownButtons=new ArrayList<TextView>();
        WindowManager manager;WindowManager.LayoutParams params;LinearLayout window;ScrollView floatBody;TextView collapse,stopNotification;boolean permissionPending,collapsed;
        Panel(ViewGroup root,EditText code,TextView yes,TextView no,TextView status){
            this.root=root;c=root.getContext();owner=activity(c);this.code=code;this.yes=yes;this.no=no;this.status=status;
            page=column(c);page.setPadding(dp(c,20),dp(c,18),dp(c,20),dp(c,12));
            add(page,owned("无线调试配对助手",28,true));
            hint=owned("选择通知栏或悬浮输入，再到系统“无线调试”中点“使用配对码配对”。部分系统设置会隐藏悬浮窗，这时请用通知栏输入。",18,false);add(page,hint);
            WrapLayout actions=new WrapLayout(c);
            TextView notification=ownedButton("通知栏输入并打开设置",new View.OnClickListener(){public void onClick(View v){notification();}});notification.setEnabled(Build.VERSION.SDK_INT>=30);actions.addView(notification,new ViewGroup.LayoutParams(-2,-2));
            TextView open=ownedButton("悬浮填写并打开设置",new View.OnClickListener(){public void onClick(View v){openFloat();}});open.setEnabled(Build.VERSION.SDK_INT>=30);actions.addView(open,new ViewGroup.LayoutParams(-2,-2));
            actions.addView(ownedButton("打开开发者选项",new View.OnClickListener(){public void onClick(View v){settings();}}),new ViewGroup.LayoutParams(-2,-2));add(page,actions);
            stopNotification=ownedButton("停止配对通知",new View.OnClickListener(){public void onClick(View v){try{c.stopService(new Intent().setClassName(c.getPackageName(),"com.yunpan.appmanage.service.AdbPairService"));stopNotification.setVisibility(View.GONE);hint.setText("配对通知已停止，可重新选择输入方式。");}catch(Exception e){hint.setText("未能停止配对通知，请从管家原配对入口结束服务。");}}});stopNotification.setVisibility(View.GONE);actions.addView(stopNotification,new ViewGroup.LayoutParams(-2,-2));
            if(Build.VERSION.SDK_INT<30)hint.setText("此系统不支持 Android 11 的无线配对码。请返回并使用原网络 ADB 或 USB 连接方式。");
            input=column(c);add(input,owned("6 位配对码",20,true));
            detach(code);code.setHint("6 位数字");code.setContentDescription("无线调试 6 位配对码");code.setImeOptions(EditorInfo.IME_ACTION_DONE);add(input,code);
            counter=owned("请输入 6 位数字，保留开头的 0",17,false);if(Build.VERSION.SDK_INT>=19)counter.setAccessibilityLiveRegion(View.ACCESSIBILITY_LIVE_REGION_POLITE);add(input,counter);
            WrapLayout controls=new WrapLayout(c);for(View v:new View[]{yes,no}){detach(v);v.setMinimumHeight(dp(c,52));controls.addView(v,new ViewGroup.LayoutParams(-2,-2));}
            controls.addView(ownedButton("粘贴配对码",new View.OnClickListener(){public void onClick(View v){paste();}}),new ViewGroup.LayoutParams(-2,-2));add(input,controls);
            detach(status);if("请手动将我调到小窗模式".contentEquals(status.getText()))status.setText("填写系统配对码后点击确定，配对结果会显示在这里。");status.setSingleLine(false);status.setMaxLines(Integer.MAX_VALUE);if(Build.VERSION.SDK_INT>=19)status.setAccessibilityLiveRegion(View.ACCESSIBILITY_LIVE_REGION_POLITE);add(input,status);
            slot=new FrameLayout(c);slot.addView(input,new FrameLayout.LayoutParams(-1,-2));add(page,slot);
            add(page,owned("通知栏方式：保持系统配对码弹窗打开，下拉通知栏，点“点击输入配对码”，输入 6 位数字并发送，结果会在通知中显示。\n\n悬浮方式：拖动标题避开系统配对码，可收起、展开或关闭。系统设置看不到浮窗时，请返回这里改用通知栏输入。\n\n管家自动发现配对端口，无需把 IP、端口或 shell 密码填进配对码框。关闭系统配对窗口后旧码可能失效。",17,false));
            ScrollView scroll=new ScrollView(c);scroll.setFillViewport(false);scroll.addView(page,new ScrollView.LayoutParams(-1,-2));root(root,scroll);
            code.addTextChangedListener(new TextWatcher(){public void beforeTextChanged(CharSequence s,int a,int count,int after){}public void onTextChanged(CharSequence s,int a,int before,int count){}public void afterTextChanged(Editable e){validate();}});
            yes.addTextChangedListener(new TextWatcher(){public void beforeTextChanged(CharSequence s,int a,int count,int after){}public void onTextChanged(CharSequence s,int a,int before,int count){}public void afterTextChanged(Editable e){validate();}});
            status.addTextChangedListener(new TextWatcher(){public void beforeTextChanged(CharSequence s,int a,int count,int after){}public void onTextChanged(CharSequence s,int a,int before,int count){}public void afterTextChanged(Editable e){paintStatus();}});
            code.setOnEditorActionListener(new TextView.OnEditorActionListener(){public boolean onEditorAction(TextView v,int action,KeyEvent event){if(action==EditorInfo.IME_ACTION_DONE){if(valid()&&yes.isEnabled())yes.performClick();return true;}return false;}});
            root.setFocusableInTouchMode(true);root.requestFocus();root.addOnLayoutChangeListener(new View.OnLayoutChangeListener(){public void onLayoutChange(View v,int l,int t,int r,int b,int ol,int ot,int or,int ob){if(window!=null&&(r-l!=or-ol||b-t!=ob-ot)){DisplayMetrics m=metrics();params.width=Math.min(dp(c,360),m.widthPixels-dp(c,24));params.x=Math.max(0,Math.min(params.x,m.widthPixels-params.width));params.y=Math.max(0,Math.min(params.y,m.heightPixels-Math.min(window.getHeight(),m.heightPixels)-dp(c,24)));update();}}});paint();validate();
        }
        TextView owned(String value,int size,boolean bold){TextView t=text(c,value,size,bold);ownText.add(t);return t;}
        TextView ownedButton(String value,View.OnClickListener listener){TextView t=button(c,value,listener);ownButtons.add(t);return t;}
        boolean valid(){return code.getText().toString().matches("[0-9]{6}");}
        void paintStatus(){String value=status.getText().toString();CarUi.Skin s=CarUi.skin(c);boolean error=value.contains("失败")||value.contains("错误")||value.contains("未找到");status.setTextColor(error?(s.dark?0xFFFFA48E:0xFFAD3926):s.ink);}
        void validate(){String value=code.getText().toString();boolean complete=valid();yes.setEnabled(complete&&Build.VERSION.SDK_INT>=30&&"确定".contentEquals(yes.getText()));yes.setAlpha(yes.isEnabled()?1f:.45f);counter.setText(Build.VERSION.SDK_INT<30?"此系统不使用 Android 11 的无线配对码":"连接中".contentEquals(yes.getText())?"正在配对，请保持系统配对窗口打开":"成功".contentEquals(yes.getText())?"配对流程已完成，请查看下方结果":complete?"已输入 6 位，点击“确定”开始配对":value.isEmpty()?"请输入 6 位数字，保留开头的 0":value.matches("[0-9]{1,5}")?"还需输入 "+(6-value.length())+" 位数字":"配对码必须是 6 位数字，不要填写 IP 或端口");}
        void paste(){try{ClipboardManager clipboard=(ClipboardManager)c.getSystemService(Context.CLIPBOARD_SERVICE);ClipData clip=clipboard.getPrimaryClip();String value=clip!=null&&clip.getItemCount()>0?String.valueOf(clip.getItemAt(0).coerceToText(c)).replaceAll("\\s",""):"";if(!value.matches("[0-9]{6}")){counter.setText("剪贴板中不是 6 位配对码，请从系统配对窗口重新复制");return;}code.setText(value);code.setSelection(value.length());}catch(Exception e){counter.setText("无法读取剪贴板，请手动填写配对码");}}
        void notification(){if(Build.VERSION.SDK_INT<30)return;closeFloat(false);try{Intent service=new Intent().setClassName(c.getPackageName(),"com.yunpan.appmanage.service.AdbPairService");c.startForegroundService(service);stopNotification.setVisibility(View.VISIBLE);hint.setText("已启动原配对通知；在系统配对弹窗保持打开时，下拉通知栏填写 6 位数字。");settings();}catch(Exception e){hint.setText("配对通知未能启动，请检查管家通知权限，或使用原手动小窗方式。");}}
        void settings(){try{c.startActivity(new Intent(Settings.ACTION_APPLICATION_DEVELOPMENT_SETTINGS));}catch(Exception e){hint.setText("无法打开开发者选项，请从系统设置手动进入“无线调试”。");}}
        void openFloat(){if(owner==null)return;if(Build.VERSION.SDK_INT<30){hint.setText("系统配对码需要 Android 11 或以上");return;}if(!Settings.canDrawOverlays(owner)){permissionPending=true;hint.setText("请允许应用管家“显示在其他应用上层”，然后返回此页面；无需修改其他权限。");try{owner.startActivity(new Intent(Settings.ACTION_MANAGE_OVERLAY_PERMISSION,Uri.parse("package:"+owner.getPackageName())));}catch(Exception e){permissionPending=false;hint.setText("无法打开悬浮权限页面，可使用原通知栏或手动小窗输入方式。");}return;}showFloat(true);}
        void showFloat(boolean openSettings){
            if(window!=null)return;if(floating!=null&&floating!=this)floating.closeFloat(false);
            manager=(WindowManager)c.getSystemService(Context.WINDOW_SERVICE);
            window=new LinearLayout(c){@Override public boolean dispatchKeyEvent(KeyEvent event){if(event.getKeyCode()==KeyEvent.KEYCODE_BACK&&event.getAction()==KeyEvent.ACTION_UP){releaseFocus();return true;}return super.dispatchKeyEvent(event);}};
            window.setOrientation(1);window.setPadding(dp(c,14),dp(c,10),dp(c,14),dp(c,10));
            LinearLayout header=new LinearLayout(c);header.setGravity(Gravity.CENTER_VERTICAL);TextView drag=owned("拖动 · 配对码",18,true);drag.setMinimumHeight(dp(c,48));header.addView(drag,new LinearLayout.LayoutParams(0,-2,1));
            collapse=ownedButton("收起",new View.OnClickListener(){public void onClick(View v){collapsed=!collapsed;floatBody.setVisibility(collapsed?View.GONE:View.VISIBLE);collapse.setText(collapsed?"展开":"收起");releaseFocus();update();}});header.addView(collapse);
            TextView close=ownedButton("关闭",new View.OnClickListener(){public void onClick(View v){closeFloat(true);}});LinearLayout.LayoutParams closeSpace=new LinearLayout.LayoutParams(-2,-2);closeSpace.leftMargin=dp(c,8);header.addView(close,closeSpace);window.addView(header,new LinearLayout.LayoutParams(-1,-2));
            floatBody=new ScrollView(c){@Override protected void onMeasure(int w,int h){int cap=Math.min(dp(c,400),Math.round(metrics().heightPixels*.58f));if(MeasureSpec.getMode(h)!=MeasureSpec.UNSPECIFIED)cap=Math.min(cap,MeasureSpec.getSize(h));super.onMeasure(w,MeasureSpec.makeMeasureSpec(cap,MeasureSpec.AT_MOST));}};
            detach(input);floatBody.addView(input,new ScrollView.LayoutParams(-1,-2));window.addView(floatBody,new LinearLayout.LayoutParams(-1,-2));
            DisplayMetrics m=metrics();params=new WindowManager.LayoutParams(Math.min(dp(c,360),m.widthPixels-dp(c,24)),-2,WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY,WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE|WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL|WindowManager.LayoutParams.FLAG_WATCH_OUTSIDE_TOUCH,PixelFormat.TRANSLUCENT);params.gravity=Gravity.TOP|Gravity.START;params.x=Math.max(dp(c,12),m.widthPixels-params.width-dp(c,12));params.y=dp(c,40);params.softInputMode=WindowManager.LayoutParams.SOFT_INPUT_ADJUST_RESIZE;
            drag.setOnTouchListener(new View.OnTouchListener(){float x,y;int startX,startY;public boolean onTouch(View v,android.view.MotionEvent e){if(e.getAction()==MotionEvent.ACTION_DOWN){x=e.getRawX();y=e.getRawY();startX=params.x;startY=params.y;return true;}if(e.getAction()==MotionEvent.ACTION_MOVE){DisplayMetrics m=metrics();params.x=Math.max(0,Math.min(m.widthPixels-window.getWidth(),startX+Math.round(e.getRawX()-x)));params.y=Math.max(0,Math.min(m.heightPixels-window.getHeight()-dp(c,24),startY+Math.round(e.getRawY()-y)));update();return true;}return e.getAction()==MotionEvent.ACTION_UP;}});
            code.setOnTouchListener(new View.OnTouchListener(){public boolean onTouch(View v,android.view.MotionEvent e){if(e.getAction()==MotionEvent.ACTION_DOWN&&params!=null){params.flags&=~WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE;update();code.requestFocus();code.post(new Runnable(){public void run(){((InputMethodManager)c.getSystemService(Context.INPUT_METHOD_SERVICE)).showSoftInput(code,InputMethodManager.SHOW_IMPLICIT);}});}return false;}});
            window.setOnTouchListener(new View.OnTouchListener(){public boolean onTouch(View v,android.view.MotionEvent e){if(e.getAction()==MotionEvent.ACTION_OUTSIDE)releaseFocus();return false;}});
            try{paint();manager.addView(window,params);floating=this;hint.setText("悬浮输入已打开。拖动标题避开系统配对码，可收起后查看系统窗口。");if(openSettings)settings();}catch(Exception e){closeFloat(false);hint.setText("悬浮窗未能打开，请使用原通知栏或手动小窗方式。");}
        }
        DisplayMetrics metrics(){DisplayMetrics m=new DisplayMetrics();((WindowManager)c.getSystemService(Context.WINDOW_SERVICE)).getDefaultDisplay().getMetrics(m);return m;}
        void update(){if(window!=null&&window.isAttachedToWindow())try{manager.updateViewLayout(window,params);}catch(Exception e){closeFloat(false);}}
        void releaseFocus(){if(params==null)return;((InputMethodManager)c.getSystemService(Context.INPUT_METHOD_SERVICE)).hideSoftInputFromWindow(code.getWindowToken(),0);params.flags|=WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE;update();}
        void closeFloat(boolean returnToPage){if(window==null)return;LinearLayout old=window;window=null;params=null;((InputMethodManager)c.getSystemService(Context.INPUT_METHOD_SERVICE)).hideSoftInputFromWindow(code.getWindowToken(),0);try{manager.removeViewImmediate(old);}catch(Exception ignored){}detach(input);slot.addView(input,new FrameLayout.LayoutParams(-1,-2));code.setOnTouchListener(null);floatBody=null;collapsed=false;if(floating==this)floating=null;if(returnToPage&&owner!=null&&!owner.isFinishing())try{owner.startActivity(new Intent(owner,owner.getClass()).addFlags(Intent.FLAG_ACTIVITY_REORDER_TO_FRONT|Intent.FLAG_ACTIVITY_SINGLE_TOP));}catch(Exception ignored){} }
        void paint(){
            CarUi.Skin s=CarUi.skin(c);
            if (LegacyUi.inheritsBackground(root)) {
                if (root.getBackground() != null) root.setBackground(null);
            } else root.setBackgroundColor(s.background);
            for(TextView t:ownText)t.setTextColor(s.ink);for(TextView t:ownButtons){t.setTextColor(s.ink);t.setBackground(CarUi.buttonBackground(c,s.soft,s.surface,s.ink,22));}CarUi.theme(code);CarUi.theme(yes);CarUi.theme(no);CarUi.theme(status);paintStatus();code.setTextSize(26);code.setGravity(Gravity.CENTER);if(window!=null){GradientDrawable board=new GradientDrawable();board.setColor(s.surface);board.setCornerRadius(dp(c,26));board.setStroke(dp(c,1),s.outline);window.setBackground(board);window.setElevation(dp(c,10));}
        }
    }
}
