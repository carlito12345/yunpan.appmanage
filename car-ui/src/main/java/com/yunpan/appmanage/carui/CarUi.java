package com.yunpan.appmanage.carui;

import android.app.Activity;
import android.app.Application;
import android.app.Dialog;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.FrameLayout;
import java.util.WeakHashMap;
import java.util.ArrayList;
import java.lang.ref.WeakReference;

public final class CarUi {
    public static final String OWN = "carui:own";
    private static final WeakHashMap<Activity,CarHome> homes = new WeakHashMap<Activity,CarHome>();
    private static boolean installed;
    private static final ArrayList<WeakReference<Dialog>> dialogs=new ArrayList<WeakReference<Dialog>>();
    private static final WeakHashMap<Activity,Boolean> activities=new WeakHashMap<Activity,Boolean>();
    private static Skin cachedSkin;
    public static final class Skin {
        public final int background, surface, soft, ink, muted, outline, accent, pressedAccent, onAccent, rail, railInk;
        public final boolean dark;
        public final String theme;
        public Skin(boolean dark) { this("warm",dark); }
        public Skin(String theme,boolean dark) {
            this.dark=dark;this.theme=theme;
            String[] colors;
            if("cyan".equals(theme)) colors=dark?new String[]{"#07121D","#102230","#1A3444","#E8FAFF","#A3C6D5","#366579","#61E4FF","#A5F2FF","#06212B","#051019","#C8EFFF"}:new String[]{"#EBF6FA","#FAFEFF","#D8ECF3","#102C3C","#446473","#99BDC9","#006A83","#00566D","#FFFFFF","#0A2030","#D9F8FF"};
            else if("mono".equals(theme)) colors=dark?new String[]{"#101112","#222426","#34373A","#F6F7F8","#B9BEC4","#646B72","#F2F3F5","#CED2D7","#141618","#08090A","#E4E7EB"}:new String[]{"#EDEFF1","#FFFFFF","#DDE1E5","#17191D","#525B65","#B1BAC4","#24282D","#454C55","#FFFFFF","#15171A","#EDF0F4"};
            else colors=dark?new String[]{"#171816","#252622","#32332D","#F5F1E8","#B6B6A9","#4E5046","#F0A060","#F5AE78","#271B12","#1D201B","#D8DCCE"}:new String[]{"#F4F1EA","#FFFEFA","#EAE5DA","#20221D","#66695F","#D6D3C7","#E99657","#F1B37A","#271B12","#1D201B","#D8DCCE"};
            background=Color.parseColor(colors[0]);surface=Color.parseColor(colors[1]);soft=Color.parseColor(colors[2]);ink=Color.parseColor(colors[3]);muted=Color.parseColor(colors[4]);outline=Color.parseColor(colors[5]);accent=Color.parseColor(colors[6]);pressedAccent=Color.parseColor(colors[7]);onAccent=Color.parseColor(colors[8]);rail=Color.parseColor(colors[9]);railInk=Color.parseColor(colors[10]);
        }
    }
    public static Skin skin(Context context) { android.content.SharedPreferences p=context.getSharedPreferences("car_ui_v1",0);String theme=p.getString("theme","warm");boolean dark=p.getBoolean("dark",false);if(cachedSkin==null||!cachedSkin.theme.equals(theme)||cachedSkin.dark!=dark)cachedSkin=new Skin(theme,dark);return cachedSkin; }
    public static void chooseTheme(Context context,String theme,boolean dark) {
        context.getSharedPreferences("car_ui_v1",0).edit().putString("theme",theme).putBoolean("dark",dark).apply();
        for(Activity a:new ArrayList<Activity>(activities.keySet())){window(a);CarHome h=homes.get(a);if(h!=null)h.refreshTheme();else{theme(a.findViewById(android.R.id.content));LegacyUi.retheme(a.findViewById(android.R.id.content));}}
        for(int i=dialogs.size()-1;i>=0;i--){Dialog d=dialogs.get(i).get();if(d==null||!d.isShowing())dialogs.remove(i);else{theme(d.getWindow().getDecorView());LegacyUi.retheme(d.getWindow().getDecorView());FrostedDialogs.apply(d);}}
    }
    public static int dp(Context context, float value) { return Math.round(value*context.getResources().getDisplayMetrics().density); }
    public static float designWidth(Context context) {
        try {
            DisplayMetrics metrics = new DisplayMetrics();
            ((WindowManager)context.getSystemService(Context.WINDOW_SERVICE)).getDefaultDisplay().getMetrics(metrics);
            int shortest = Math.min(metrics.widthPixels,metrics.heightPixels);
            return shortest>0?720f*metrics.widthPixels/shortest:720f;
        } catch(Exception ignored) { return 720f; }
    }
    public static int adaptColumns(Context context, int count) {
        if(count<3) return count;
        DisplayMetrics metrics = new DisplayMetrics();
        try { ((WindowManager)context.getSystemService(Context.WINDOW_SERVICE)).getDefaultDisplay().getMetrics(metrics); }
        catch(Exception ignored) { return Math.min(count,3); }
        return Math.min(count,metrics.widthPixels>metrics.heightPixels?5:3);
    }
    public static GradientDrawable rounded(Context context,int color,float radius) {
        Skin s=skin(context);
        GradientDrawable drawable=Appearance.background(context,color,radius,Appearance.load(context));
        if(Appearance.load(context).style==0&&"cyan".equals(s.theme)&&(color==s.surface||color==s.rail))drawable.setStroke(dp(context,1),s.outline);
        return drawable;
    }
    public static StateListDrawable buttonBackground(Context context,int normal,int pressed,int stroke,float radius) {
        return buttonBackground(context,normal,pressed,stroke,radius,false);
    }
    public static StateListDrawable buttonBackground(Context context,int normal,int pressed,int stroke,float radius,boolean normalOutline) {
        StateListDrawable result=new StateListDrawable();
        GradientDrawable focus=rounded(context,pressed,radius);focus.setStroke(dp(context,2),stroke);
        result.addState(new int[]{android.R.attr.state_pressed},focus);
        GradientDrawable keyboard=rounded(context,normal,radius);keyboard.setStroke(dp(context,2),stroke);
        result.addState(new int[]{android.R.attr.state_focused},keyboard);
        GradientDrawable fill=rounded(context,normal,radius);
        if(normalOutline&&Appearance.load(context).style==0)fill.setStroke(dp(context,1),skin(context).outline);
        result.addState(new int[]{},fill);return result;
    }
    public static TextView text(Context context,String value,float size,int color,boolean bold) {
        TextView view=new TextView(context);view.setText(value);view.setTextSize(size);view.setTextColor(color);
        view.setTypeface(Typeface.create("sans-serif",bold?Typeface.BOLD:Typeface.NORMAL));view.setIncludeFontPadding(false);return view;
    }
    public static void message(Context context,String message) { Toast.makeText(context,message,Toast.LENGTH_LONG).show(); }
    public static void window(Activity activity){
        Skin skin=skin(activity);Window window=activity.getWindow();window.setBackgroundDrawable(new ColorDrawable(skin.background));
        if(Build.VERSION.SDK_INT>=21){window.setStatusBarColor(skin.background);window.setNavigationBarColor(skin.rail);}
        if(Build.VERSION.SDK_INT>=23){int flags=window.getDecorView().getSystemUiVisibility();window.getDecorView().setSystemUiVisibility(skin.dark?flags&~View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR:flags|View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR);}
    }
    public static boolean back(Activity activity){CarHome home=homes.get(activity);return home!=null&&home.back();}
    public static void refreshWallpaper(){for(CarHome home:new ArrayList<CarHome>(homes.values()))home.reloadWallpaper();}
    public static void install(Application application) {
        if(installed) return;installed=true;
        application.registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() {
            @Override public void onActivityCreated(final Activity activity,final Bundle state) {
                activities.put(activity,Boolean.TRUE);
                activity.getWindow().getDecorView().post(new Runnable(){@Override public void run(){attach(activity,state);}});
            }
            @Override public void onActivityResumed(final Activity activity) {
                WallpaperView.activityState(activity,true);
                activity.getWindow().getDecorView().post(new Runnable(){@Override public void run(){
                    if(!homes.containsKey(activity)){View content=activity.findViewById(android.R.id.content);theme(content);LegacyUi.retheme(content);}
                }});
            }
            @Override public void onActivitySaveInstanceState(Activity activity,Bundle state){CarHome home=homes.get(activity);if(home!=null)state.putInt("carui.page",home.currentPage());}
            @Override public void onActivityDestroyed(Activity activity){homes.remove(activity);activities.remove(activity);}
            @Override public void onActivityStarted(Activity activity){}
            @Override public void onActivityPaused(Activity activity){WallpaperView.activityState(activity,false);}
            @Override public void onActivityStopped(Activity activity){}
        });
    }
    private static void attach(Activity activity,Bundle state) {
        if(activity.isFinishing()||!activity.getClass().getName().startsWith("com.yunpan.appmanage."))return;
        window(activity);
        ViewGroup content=(ViewGroup)activity.findViewById(android.R.id.content);
        if(content==null||content.getChildCount()==0)return;
        if(activity.getClass().getName().endsWith(".ActivityHome")) {
            if(homes.containsKey(activity))return;
            View legacy=content.getChildAt(0);content.removeView(legacy);
            CarHome home=new CarHome(activity,new Bridge(activity,legacy),legacy);
            homes.put(activity,home);content.addView(home,new ViewGroup.LayoutParams(-1,-1));
            if(state!=null)home.showPage(state.getInt("carui.page",-1));
        }else {theme(content);LegacyUi.retheme(content);}
    }
    static String name(View view) {
        if(view.getId()==View.NO_ID)return "";
        String indexed=ResourceIndex.name(view.getId());if(!indexed.isEmpty())return indexed;
        try{return view.getResources().getResourceEntryName(view.getId());}catch(Exception ignored){return "";}
    }
    /** Called after original adapter binding, so original listeners and data are retained. */
    public static void themeItem(View item) {
        LegacyUi.bound(item,null);
    }
    public static void theme(View view) {
        themeTree(view);LegacyUi.retheme(view);
    }
    private static void themeTree(View view) {
        if(view==null||OWN.equals(view.getTag()))return;
        Context context=view.getContext();Skin skin=skin(context);String id=name(view);
        if(id.equals("v_root")||id.equals("v_top")||id.equals("v_root2")||view.getId()==android.R.id.content) view.setBackgroundColor(skin.background);
        if(view instanceof EditText) {
            EditText input=(EditText)view;input.setTextColor(skin.ink);input.setHintTextColor(skin.muted);input.setTextSize(19);
            input.setMinimumHeight(dp(context,54));input.setPadding(dp(context,18),dp(context,10),dp(context,18),dp(context,10));
            int numericWidth=0;if((input.getInputType()&android.text.InputType.TYPE_MASK_CLASS)==android.text.InputType.TYPE_CLASS_NUMBER){numericWidth=Math.max(dp(context,104),(int)Math.ceil(input.getPaint().measureText("00000"))+dp(context,36));input.setMinimumWidth(numericWidth);}
            ViewGroup.LayoutParams bounds=input.getLayoutParams();
            if(bounds!=null){if(bounds.height>0&&bounds.height<dp(context,54))bounds.height=ViewGroup.LayoutParams.WRAP_CONTENT;if(bounds.width>0&&bounds.width<numericWidth)bounds.width=numericWidth;input.setLayoutParams(bounds);}
            input.setBackground(buttonBackground(context,skin.surface,skin.soft,skin.ink,18));
        }else if(view instanceof TextView) {
            TextView text=(TextView)view;
            float oldSize=text.getTextSize()/context.getResources().getDisplayMetrics().scaledDensity;
            text.setTextSize(Math.max(17,Math.min(28,oldSize)));
            int old=text.getCurrentTextColor();
            boolean semanticRed=Color.red(old)>150&&Color.green(old)<100&&Color.blue(old)<100;
            text.setTextColor(semanticRed?(skin.dark?0xFFFFA48E:0xFFAD3926):skin.ink);
            if(view.isClickable()&&!(view instanceof CompoundButton)) {
                view.setBackground(buttonBackground(context,skin.surface,skin.soft,skin.ink,22));
                view.setMinimumHeight(dp(context,52));view.setMinimumWidth(dp(context,52));
                ViewGroup.LayoutParams bounds=view.getLayoutParams();
                if(bounds!=null&&bounds.height>0&&bounds.height<dp(context,52)){bounds.height=dp(context,52);view.setLayoutParams(bounds);}
                if(view.getParent() instanceof View){View parent=(View)view.getParent();ViewGroup.LayoutParams parentBounds=parent.getLayoutParams();if(parentBounds!=null&&parentBounds.height>0&&parentBounds.height<dp(context,52)){parentBounds.height=dp(context,52);parent.setLayoutParams(parentBounds);}}
                text.setPadding(dp(context,18),dp(context,10),dp(context,18),dp(context,10));
                text.setTypeface(Typeface.create("sans-serif-medium",Typeface.NORMAL));
            }
            if(id.equals("v_name")){text.setMaxLines(2);text.setEllipsize(android.text.TextUtils.TruncateAt.END);}
        }
        if(view instanceof ImageView){ImageView image=(ImageView)view;if(image.getDrawable() instanceof Icons)image.setColorFilter(skin.ink);else if(id.startsWith("v_btn_")||id.equals("v_return"))image.clearColorFilter();}
        if(view instanceof ImageView&&(id.startsWith("v_btn_")||id.equals("v_return"))) {
            view.setMinimumWidth(dp(context,48));view.setMinimumHeight(dp(context,48));
        }
        if(Build.VERSION.SDK_INT>=21) {
            if(view instanceof CompoundButton)((CompoundButton)view).setButtonTintList(new ColorStateList(new int[][]{{android.R.attr.state_checked},{}},new int[]{skin.accent,skin.muted}));
            if(view instanceof ProgressBar)((ProgressBar)view).setProgressTintList(ColorStateList.valueOf(skin.accent));
        }
        if(view instanceof ViewGroup){ViewGroup group=(ViewGroup)view;for(int i=0;i<group.getChildCount();i++)themeTree(group.getChildAt(i));}
    }
    public static void dialog(Dialog dialog) {
        if(dialog==null||dialog.getWindow()==null)return;
        Window window=dialog.getWindow();Context context=dialog.getContext();Skin skin=skin(context);
        window.setBackgroundDrawable(rounded(context,skin.surface,30));
        LegacyUi.dialog(dialog);
        View root=window.getDecorView();theme(root);LegacyUi.retheme(root);
        int[] bounds=windowBounds(context);boolean full=LegacyUi.fullDialog(dialog);
        int width=Math.max(dp(context,240),Math.min(bounds[0]-dp(context,40),dp(context,full?820:LegacyUi.menuDialog(dialog)?380:620)));
        ViewGroup content=(ViewGroup)dialog.findViewById(android.R.id.content);
        if(!full&&content!=null&&content.getChildCount()==1&&!(content.getChildAt(0) instanceof DialogFrame)){
            View original=content.getChildAt(0);content.removeView(original);DialogFrame cap=new DialogFrame(context);cap.addView(original,new FrameLayout.LayoutParams(-1,-2));content.addView(cap,new FrameLayout.LayoutParams(-1,-2));
        }
        WindowManager.LayoutParams params=window.getAttributes();params.width=width;params.height=full?Math.max(dp(context,240),Math.min(bounds[1]-dp(context,48),dp(context,900))):ViewGroup.LayoutParams.WRAP_CONTENT;params.gravity=Gravity.CENTER;
        params.softInputMode=WindowManager.LayoutParams.SOFT_INPUT_ADJUST_RESIZE;
        window.setAttributes(params);
        decorateDialog(dialog);
    }
    public static void decorateDialog(Dialog dialog){boolean known=false;for(WeakReference<Dialog> ref:dialogs)if(ref.get()==dialog)known=true;if(!known)dialogs.add(new WeakReference<Dialog>(dialog));FrostedDialogs.apply(dialog);}
    static void refreshDialog(Dialog dialog){if(SourceInfo.resize(dialog)||ThemePicker.resize(dialog)||WallpaperPicker.resize(dialog)||WallpaperCropper.resize(dialog)){decorateDialog(dialog);return;}if(LegacyUi.dialogLayout(dialog)!=0)dialog(dialog);else decorateDialog(dialog);}
    static int[] windowBounds(Context context){
        Context current=context;for(int i=0;i<12;i++){if(current instanceof Activity){View decor=((Activity)current).getWindow().getDecorView();if(decor.getWidth()>0&&decor.getHeight()>0)return new int[]{decor.getWidth(),decor.getHeight()};break;}if(!(current instanceof android.content.ContextWrapper))break;Context base=((android.content.ContextWrapper)current).getBaseContext();if(base==current)break;current=base;}
        DisplayMetrics m=new DisplayMetrics();((WindowManager)context.getSystemService(Context.WINDOW_SERVICE)).getDefaultDisplay().getMetrics(m);return new int[]{m.widthPixels,m.heightPixels};
    }
    /** Compact dialogs wrap their real content and scroll lists within the owning app window. */
    private static final class DialogFrame extends FrameLayout{
        DialogFrame(Context c){super(c);}
        @Override protected void onMeasure(int w,int h){int max=Math.max(dp(getContext(),160),windowBounds(getContext())[1]-dp(getContext(),48));if(MeasureSpec.getMode(h)!=MeasureSpec.UNSPECIFIED)max=Math.min(max,MeasureSpec.getSize(h));super.onMeasure(w,MeasureSpec.makeMeasureSpec(max,MeasureSpec.AT_MOST));}
    }
}
