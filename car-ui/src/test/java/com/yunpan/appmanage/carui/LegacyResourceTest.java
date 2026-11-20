package com.yunpan.appmanage.carui;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.ImageView;
import android.view.ViewGroup;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.Looper;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.List;
import java.util.LinkedHashMap;
import java.util.Map;
import org.robolectric.Shadows;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.GridLayoutManager;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.Robolectric;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.android.controller.ActivityController;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;
import org.robolectric.annotation.LooperMode;
import static org.junit.Assert.*;

/** Uses the original APK resource table and compiled binary XML, not hand-built page replicas. */
@RunWith(RobolectricTestRunner.class)
@Config(sdk=28,manifest=Config.NONE,qualifiers="w720dp-h960dp-xhdpi")
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@LooperMode(LooperMode.Mode.PAUSED)
public class LegacyResourceTest {
    Context apkContext(Activity a)throws Exception{
        AssetManager assets=AssetManager.class.getDeclaredConstructor().newInstance();
        int cookie=(Integer)AssetManager.class.getMethod("addAssetPath",String.class).invoke(assets,System.getProperty("carui.original.apk"));assertTrue(cookie>0);
        final Resources resources=new Resources(assets,a.getResources().getDisplayMetrics(),a.getResources().getConfiguration());
        java.lang.reflect.Field loader=Resources.class.getDeclaredField("mClassLoader");loader.setAccessible(true);loader.set(resources,getClass().getClassLoader());
        final Resources.Theme theme=resources.newTheme();theme.applyStyle(android.R.style.Theme_Material_Light_NoActionBar,true);
        return new ContextWrapper(a){@Override public Resources getResources(){return resources;}@Override public Resources.Theme getTheme(){return theme;}@Override public AssetManager getAssets(){return resources.getAssets();}@Override public String getPackageName(){return "com.yunpan.appmanage";}};
    }
    View inflate(Context c,String name){
        int id=c.getResources().getIdentifier(name,"layout","com.yunpan.appmanage");assertTrue(id!=0);
        LayoutInflater inflater=LayoutInflater.from(c).cloneInContext(c);
        inflater.setFactory2(new LayoutInflater.Factory2(){@Override public View onCreateView(String name,Context c,AttributeSet attrs){return onCreateView(null,name,c,attrs);}@Override public View onCreateView(View parent,String name,Context c,AttributeSet attrs){
            if(name.equals("com.owen.tvrecyclerview.widget.TvRecyclerView")||name.equals("com.recycleview.MyRecycleView"))return new androidx.recyclerview.widget.RecyclerView(c,attrs);
            if(name.equals("com.yunpan.appmanage.view.HiveProgressView"))return new com.yunpan.appmanage.view.HiveProgressView(c,attrs);
            if(name.equals("com.yunpan.appmanage.view.MyTextView"))return new TextView(c,attrs);
            if(name.equals("com.yunpan.appmanage.view.NoScrollViewPager"))return new FrameLayout(c,attrs);
            // Test-only native counterpart; production keeps the original AppCompatSeekBar instance.
            if(name.equals("androidx.appcompat.widget.AppCompatSeekBar"))return new android.widget.SeekBar(c,attrs);
            return null;
        }});
        View view=inflater.inflate(id,new FrameLayout(c),false);LegacyUi.inflated(view,id);return view;
    }
    void layout(View root,int width,int height){for(int i=0;i<3;i++){root.measure(View.MeasureSpec.makeMeasureSpec(width,1073741824),View.MeasureSpec.makeMeasureSpec(height,1073741824));root.layout(0,0,width,height);root.getViewTreeObserver().dispatchOnGlobalLayout();Shadows.shadowOf(Looper.getMainLooper()).idle();}}
    private void capture(View root,int width,int height,String file)throws Exception{layout(root,width,height);Bitmap b=Bitmap.createBitmap(width,height,Bitmap.Config.ARGB_8888);root.draw(new Canvas(b));File f=new File(System.getProperty("carui.preview.dir"),"modules/"+file);f.getParentFile().mkdirs();try(FileOutputStream s=new FileOutputStream(f)){assertTrue(b.compress(Bitmap.CompressFormat.PNG,100,s));}b.recycle();}
    private int rid(Context c,String name){return c.getResources().getIdentifier(name,"layout",c.getPackageName());}
    private View id(View root,String name){return root.findViewById(ResourceIndex.id(name));}
    private TextView text(View root,String value){for(View v:views(root))if(v instanceof TextView&&value.contentEquals(((TextView)v).getText()))return(TextView)v;return null;}
    private List<View> views(View root){List<View> all=new ArrayList<>();all.add(root);if(root instanceof ViewGroup){ViewGroup g=(ViewGroup)root;for(int i=0;i<g.getChildCount();i++)all.addAll(views(g.getChildAt(i)));}return all;}
    private void visible(View root,String name,boolean visible){View v=id(root,name);if(v!=null)v.setVisibility(visible?View.VISIBLE:View.GONE);}
    public static final class Bean {public boolean b;Bean(boolean b){this.b=b;}}
    private final class Rows extends RecyclerView.Adapter<RecyclerView.ViewHolder>{
        final Context c;final String resource;final String[] labels;int selected;
        Rows(Context c,String resource,String... labels){this.c=c;this.resource=resource;this.labels=labels;}
        @Override public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent,int type){return new RecyclerView.ViewHolder(inflate(c,resource)){};}
        @Override public void onBindViewHolder(RecyclerView.ViewHolder holder,final int position){View item=holder.itemView;TextView name=(TextView)id(item,"v_name");if(name!=null)name.setText(labels[position]);ImageView icon=(ImageView)id(item,"v_ico");if(icon!=null)icon.setImageDrawable(new Icons(resource.equals("item_app2")?"apps":"files",CarUi.skin(c).ink));LegacyUi.bound(item,new Bean(position==selected));item.setOnClickListener(v->{selected=position;notifyDataSetChanged();});}
        @Override public int getItemCount(){return labels.length;}
    }
    private void rows(View root,String id,String resource,int columns,String... labels){RecyclerView r=(RecyclerView)id(root,id);if(r==null)return;r.setLayoutManager(columns==0?new LinearLayoutManager(root.getContext(),0,false):new GridLayoutManager(root.getContext(),columns));r.setAdapter(new Rows(root.getContext(),resource,labels));}
    private View apps(Context c){View root=inflate(c,"activity_apps");visible(root,"v_search",false);visible(root,"v_read_ts_lay",false);rows(root,"v_list_type","item_apps_type",0,"搜索","全部应用","个人应用","系统应用","服务插件","被禁用","被隐藏");rows(root,"v_list_app","item_app2",3,"布局测试 01","布局测试 02","布局测试 03","布局测试 04","布局测试 05","布局测试 06","布局测试 07","布局测试 08","布局测试 09");LegacyUi.surface(root,rid(c,"activity_apps"));return root;}
    View files(Context c){View root=inflate(c,"fragment_file");visible(root,"v_readProgress",false);visible(root,"v_lay_dirScan",false);visible(root,"v_file_btn_paste",false);visible(root,"v_tile_paste_text",false);visible(root,"v_tasks_list",false);((TextView)id(root,"v_count")).setText("");((TextView)id(root,"v_filePath")).setText("");RecyclerView locations=(RecyclerView)id(root,"v_file_root"),path=(RecyclerView)id(root,"v_file_path");locations.setLayoutManager(new LinearLayoutManager(c,0,false));x9.n4 roots=new x9.n4();for(String name:new String[]{"内部存储","U盘","文件搜索"})roots.d.add(new x9.w3(name));locations.setAdapter(roots);path.setLayoutManager(new LinearLayoutManager(c,0,false));x9.g0 crumbs=new x9.g0();crumbs.d.add(new x9.w3("内部存储"));path.setAdapter(crumbs);LegacyUi.surface(root,rid(c,"fragment_file"));return root;}
    public static final class SettingsDialog extends Dialog {public int c;SettingsDialog(Context context,int layout){super(context);c=layout;}}
    private View settings(Context c){View root=inflate(c,"dialog_set");rows(root,"v_list_immersed","item_set_immersed",0,"全屏","沉浸","沉浸2","隐藏状态栏","全屏2","全屏3","沉浸3");rows(root,"v_list_check1","item_check_no_bg",1,"不使用PM命令安装：也就是不使用root或adb命令来安装应用","PM命令安装时为应用授予运行时权限 参数-g（如：存储权限等）","主动开启无线ADB-方法1（适合大部分系统，如果已永久打开了则不需要）","主动开启无线ADB-方法2（适合小部分系统）","无法启动应用","允许第三方应用调用管家安装应用");rows(root,"v_list_check2","item_check_no_bg2",3,"按返回键不关闭","不使用root模式","使用管家密码锁","弹窗显示不完整","安装成功后弹窗","不提示设备发现","哪吒S自动开ADB","领克03自动开ADB","shell密码错误提醒","adb连接成功提示","使用新版adb协议","不连接shizuku");SettingsDialog dialog=new SettingsDialog(c,rid(c,"dialog_set"));dialog.setContentView(root);CarUi.dialog(dialog);return root;}
    private void matrix(boolean landscape)throws Exception{
        Activity a=Robolectric.buildActivity(CarHomeTest.PreviewActivity.class).setup().get();Context c=apkContext(a);int w=landscape?1920:1440,h=landscape?1440:1920;
        for(String theme:new String[]{"warm","cyan","mono"}){c.getSharedPreferences("car_ui_v1",0).edit().putString("theme",theme).putBoolean("dark",theme.equals("cyan")).commit();
            View app=apps(c);a.setContentView(app);capture(app,w,h,"apps-"+theme+"-"+(landscape?"land":"portrait")+".png");
            RecyclerView list=(RecyclerView)id(app,"v_list_app");assertTrue(list.getHeight()>h/2);View filter=id(app,"v_list_type");assertTrue(filter.getWidth()<=w);
            int expected=Math.min(6,Math.max(1,list.getWidth()/CarUi.dp(c,176)));assertEquals(expected,((GridLayoutManager)list.getLayoutManager()).getSpanCount());int firstRow=0;for(int i=0;i<list.getChildCount();i++)if(list.getChildAt(i).getTop()==list.getChildAt(0).getTop())firstRow++;assertEquals("Real first row tile geometry",expected,firstRow);
            visible(app,"v_search",true);visible(app,"v_list_type",false);layout(app,w,h);assertTrue(id(app,"v_search").getWidth()>w*.8);assertTrue(id(app,"v_search").getHeight()>=96);
            View file=files(c);a.setContentView(file);capture(file,w,h,"files-"+theme+"-"+(landscape?"land":"portrait")+".png");for(String button:new String[]{"v_btn_style","v_btn_coll","v_btn_length","v_btn_new","v_btn_multi","v_btn_reload"}){View v=id(file,button);assertTrue(button,v.getWidth()>=96&&v.getHeight()>=96);int[] xy=new int[2];v.getLocationOnScreen(xy);assertTrue(button+" outside screen",xy[0]>=0&&xy[0]+v.getWidth()<=w);}
            View set=settings(c);((ViewGroup)set.getParent()).removeView(set);a.setContentView(set);String suffix=theme+"-"+(landscape?"land":"portrait")+".png";capture(set,w,h,"settings-"+suffix);
            assertEquals(CarUi.skin(c).onAccent,text(set,"显示").getCurrentTextColor());text(set,"安装").performClick();capture(set,w,h,"settings-install-"+suffix);text(set,"连接").performClick();capture(set,w,h,"settings-connect-"+suffix);assertEquals(CarUi.skin(c).onAccent,text(set,"连接").getCurrentTextColor());int columns=((GridLayoutManager)((RecyclerView)id(set,"v_list_check2")).getLayoutManager()).getSpanCount();assertTrue("Compact option columns "+columns,columns>=2&&columns<=3);text(set,"高级").performClick();capture(set,w,h,"settings-advanced-"+suffix);
        }
    }
    @Test public void realBinaryPortraitThemeMatrix()throws Exception{matrix(false);}
    @Test @Config(qualifiers="w960dp-h720dp-land-xhdpi") public void realBinaryLandscapeThemeMatrix()throws Exception{matrix(true);}
    @Test public void actualFileLayoutFitsHomeWorkspaceAndKeepsActions()throws Exception{
        Activity a=Robolectric.buildActivity(CarHomeTest.PreviewActivity.class).setup().get();Context c=apkContext(a);View file=files(c);final int[] clicks={0};View original=id(file,"v_btn_new");original.setOnClickListener(v->clicks[0]++);
        CarHome home=new CarHome(a,new Bridge(a,file){@Override public void page(int index){}},file);a.setContentView(home);home.showPage(1);capture(home,1440,1920,"file-in-home-workspace.png");original.performClick();assertEquals(1,clicks[0]);assertSame(original,id(home,"v_btn_new"));
        original.requestFocus();original.clearFocus();View label=id(home,"v_btn_new_text");assertEquals(View.VISIBLE,label.getVisibility());
        int[] xy=new int[2];original.getLocationOnScreen(xy);assertTrue(xy[0]+original.getWidth()<=1440);
    }
    @Test public void homePagesShareWallpaperWhenReboundAndLazilyInflated() throws Exception {
        Activity activity = Robolectric.buildActivity(CarHomeTest.PreviewActivity.class).setup().get();
        Context resources = apkContext(activity);
        CarUi.chooseTheme(activity, "mono", true);
        int wallpaperColor = 0xff38697b;
        File image = new File(activity.getFilesDir().getParentFile(), "bj.png");
        Bitmap fixture = Bitmap.createBitmap(32, 32, Bitmap.Config.ARGB_8888);
        fixture.eraseColor(wallpaperColor);
        try (FileOutputStream output = new FileOutputStream(image)) {
            assertTrue(fixture.compress(Bitmap.CompressFormat.PNG, 100, output));
        }
        fixture.recycle();
        Wallpapers.Config config = new Wallpapers.Config();
        config.mode = "static";
        config.staticImage = 2;
        Wallpapers.save(activity, config);

        View shell = inflate(resources, "activity_home1");
        LegacyUi.surface(shell, rid(resources, "activity_home1"));
        FrameLayout pager = (FrameLayout) id(shell, "v_Pager");
        assertTrue("Original viewport handles clicks", pager.isClickable());
        CarHome home = new CarHome(activity, new Bridge(activity, shell) {
            @Override public void page(int index) {}
        }, shell);
        activity.setContentView(home);
        layout(home, 900, 1600);
        WallpaperView backdrop = home.wallpaper();
        assertNotNull(backdrop);
        assertTrue("Original custom wallpaper decodes", backdrop.staticAvailable());

        String[] pageLayouts = {"fragment_cmd", "fragment_file", "fragment_file_wl"};
        for (int i = 0; i < pageLayouts.length; i++) {
            String name = pageLayouts[i];
            View page = inflate(resources, name);
            if (i == 0) {
                rows(page, "v_list", "item_cmd", 3, "文件下载", "文件管理", "设备信息");
                LegacyUi.surface(page, rid(resources, name));
            }
            pager.removeAllViews();
            home.showPage(i);
            pager.addView(page, new FrameLayout.LayoutParams(-1, -1));
            LegacyUi.surface(page, rid(resources, name));
            CarUi.theme(shell);
            layout(home, 900, 1600);
            assertSame("Switching pages keeps the wallpaper instance", backdrop, home.wallpaper());
            assertNull(name + " inherits the host background", page.getBackground());
            if (i == 0) {
                assertEquals(wallpaperColor, blankPagePixel(home, page));
                assertNotNull(((RecyclerView) id(page, "v_list")).getChildAt(0).getBackground());
            }
            if (i == 1) {
                assertNotNull(id(page, "v_btn_new").getBackground());
            }
            if (i == 2) {
                int pixel = blankPagePixel(home, page);
                assertNotEquals("Network panels retain a tint", wallpaperColor, pixel);
                assertNotEquals("Network panels show the wallpaper", CarUi.skin(activity).surface, pixel);
                assertNotEquals("No dark page background under network panels", CarUi.skin(activity).background, pixel);
            }
        }

        pager.removeAllViews();
        View tools = inflate(resources, "fragment_cmd");
        pager.addView(tools, new FrameLayout.LayoutParams(-1, -1));
        LegacyUi.surface(tools, rid(resources, "fragment_cmd"));
        home.showPage(0);
        config.mode = "particles";
        config.still = true;
        config.background = 3;
        Wallpapers.save(activity, config);
        home.reloadWallpaper();
        layout(home, 900, 1600);
        int[] position = new int[2];
        tools.getLocationInWindow(position);
        WallpaperView particles = home.wallpaper();
        assertEquals(pixel(particles, position[0] + 32, position[1] + tools.getHeight() - 100),
                blankPagePixel(home, tools));
        home.showPage(-1);
        home.showPage(0);
        assertSame("Particle scene survives switching between home and tools", particles, home.wallpaper());

        config.mode = "off";
        Wallpapers.save(activity, config);
        home.reloadWallpaper();
        layout(home, 900, 1600);
        assertNull(home.wallpaper());
        assertEquals(CarUi.skin(activity).background, blankPagePixel(home, tools));
    }
    private int blankPagePixel(CarHome home, View page) {
        int[] position = new int[2];
        page.getLocationInWindow(position);
        return pixel(home, position[0] + 32, position[1] + page.getHeight() - 100);
    }
    private int pixel(View view, int x, int y) {
        Bitmap sample = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(sample);
        canvas.translate(-x, -y);
        view.draw(canvas);
        int result = sample.getPixel(0, 0);
        sample.recycle();
        return result;
    }
    @Test public void originalFunctionWindowsShareWallpaperAcrossLifecycleAndThemeChanges() throws Exception {
        Context app = RuntimeEnvironment.getApplication();
        CarUi.install(RuntimeEnvironment.getApplication());
        CarUi.chooseTheme(app, "mono", true);
        Wallpapers.Config config = new Wallpapers.Config();
        config.mode = "static";
        config.staticImage = 1;
        config.background = 3;
        Wallpapers.save(app, config);

        for (String name : new String[]{"activity_apps", "activity_download",
                "activity_automation", "activity_key_map_logcat_set", "activity_installer",
                "activity_window_input_adb_pair"}) {
            ActivityController<CarHomeTest.PreviewActivity> controller =
                    Robolectric.buildActivity(CarHomeTest.PreviewActivity.class).create();
            Activity activity = controller.get();
            Context resources = apkContext(activity);
            View original = name.equals("activity_apps") ? apps(resources) : inflate(resources, name);
            activity.setContentView(original);
            LegacyUi.surface(original, rid(resources, name));
            controller.start().resume().visible();
            View decor = activity.getWindow().getDecorView();
            layout(decor, 900, 1600);
            ViewGroup content = activity.findViewById(android.R.id.content);
            assertNotNull(name + " mounts the selected wallpaper", Wallpapers.mounted(content));
            assertSame(content, original.getParent());
            assertNull(name + " root shares wallpaper", original.getBackground());
            for (View child : views(original)) {
                if (child.getClass().getName().contains("ScrollView")) {
                    assertNull("Scroll viewport inherits the scene", child.getBackground());
                }
            }

            if (name.equals("activity_apps")) {
                int x = content.getWidth() - 24, y = content.getHeight() - 96;
                assertEquals(Wallpapers.BACKGROUNDS[3], pixel(content, x, y));
                assertNotNull(id(original, "v_btn_reload").getBackground());

                WallpaperView originalWallpaper = Wallpapers.mounted(content);
                CarUi.chooseTheme(app, "gd-prism", true);
                assertSame(originalWallpaper, Wallpapers.mounted(content));
                assertEquals(Wallpapers.BACKGROUNDS[3], pixel(content, x, y));
                CarUi.chooseTheme(app, "mono", true);

                config.mode = "particles";
                config.still = true;
                Wallpapers.save(app, config);
                layout(decor, 900, 1600);
                WallpaperView particles = Wallpapers.mounted(content);
                assertNotSame(originalWallpaper, particles);
                assertEquals("particles", particles.config.mode);
                assertEquals(pixel(particles, x, y), pixel(content, x, y));
                config.mode = "off";
                Wallpapers.save(app, config);
                assertNull(Wallpapers.mounted(content));
                assertEquals(CarUi.skin(app).background, pixel(decor, x, y));
                config.mode = "static";
                Wallpapers.save(app, config);
            }
            controller.pause().stop();
            assertNull("Stopped windows release their backdrop", Wallpapers.mounted(content));
            controller.destroy();
        }
    }
    @Test public void originalSettingsTabsKeepTheirFrostedBackgroundAfterRetheming() throws Exception {
        Activity activity = Robolectric.buildActivity(CarHomeTest.PreviewActivity.class).setup().get();
        Context resources = apkContext(activity);
        CarUi.chooseTheme(activity, "cyan", true);
        FrameLayout owner = new FrameLayout(activity);
        owner.setBackgroundColor(0xff65aabc);
        activity.setContentView(owner);
        layout(activity.getWindow().getDecorView(), 900, 1600);

        View root = inflate(resources, "dialog_set");
        SettingsDialog dialog = new SettingsDialog(resources, rid(resources, "dialog_set"));
        dialog.setOwnerActivity(activity);
        dialog.setContentView(root);
        dialog.show();
        CarUi.dialog(dialog);
        ViewGroup content = dialog.findViewById(android.R.id.content);
        View form = id(root, "v_root2");
        View originalInput = id(root, "et_adbPort");
        for (String label : new String[]{"安装", "连接", "高级", "显示", "高级"}) {
            assertTrue(text(root, label).performClick());
            CarUi.theme(dialog.getWindow().getDecorView());
            assertNull(content.getBackground());
            assertNull(form.getBackground());
            for (View child : views(form)) {
                if (child instanceof android.widget.ScrollView) assertNull(child.getBackground());
            }
        }
        assertSame(originalInput, id(root, "et_adbPort"));
        assertNotNull(originalInput.getBackground());
        dialog.dismiss();
    }
    @Test public void realLocationLabelsKeepContrastInAllHomeThemes()throws Exception{
        Activity a=Robolectric.buildActivity(CarHomeTest.PreviewActivity.class).setup().get();Context c=apkContext(a);
        for(String theme:new String[]{"warm","cyan","mono"}){c.getSharedPreferences("car_ui_v1",0).edit().putString("theme",theme).putBoolean("dark",theme.equals("cyan")).commit();View file=files(c);CarHome home=new CarHome(a,new Bridge(a,file){@Override public void page(int index){}},file);a.setContentView(home);home.showPage(1);layout(home,1440,1920);RecyclerView roots=(RecyclerView)id(file,"v_file_root");View chip=roots.getChildAt(0);assertNotNull(chip);CarUi.theme(home);CarUi.theme(file);TextView name=(TextView)id(chip,"v_pathName");assertEquals(CarUi.skin(c).ink,name.getCurrentTextColor());assertEquals("内部存储",name.getText().toString());android.graphics.drawable.Drawable bg=chip.getBackground();bg.setState(new int[]{android.R.attr.state_focused});Bitmap border=Bitmap.createBitmap(160,96,Bitmap.Config.ARGB_8888);bg.setBounds(0,0,160,96);bg.draw(new Canvas(border));assertEquals("Focused drawable border",CarUi.skin(c).ink,border.getPixel(80,1));border.recycle();bg.setState(new int[]{});capture(home,1440,1920,"file-in-home-selected-"+theme+".png");}
    }
    @Test @Config(qualifiers="w960dp-h720dp-land-xhdpi") public void networkFormAndLargeFontRemainReachable()throws Exception{
        Activity a=Robolectric.buildActivity(CarHomeTest.PreviewActivity.class).setup().get();Context c=apkContext(a);
        android.content.res.Configuration cfg=new android.content.res.Configuration(c.getResources().getConfiguration());cfg.fontScale=1.3f;android.util.DisplayMetrics dm=c.getResources().getDisplayMetrics();dm.scaledDensity=dm.density*1.3f;c.getResources().updateConfiguration(cfg,dm);
        View root=inflate(c,"fragment_file_wl");for(String id:new String[]{"v_loadDir_lay","v_loadMore_lay","v_readProgress2"})visible(root,id,false);LegacyUi.surface(root,rid(c,"fragment_file_wl"));a.setContentView(root);capture(root,1920,1440,"network-font130-land.png");assertTrue("Network file list: "+bounds(id(root,"v_file1"))+" / "+bounds(id(root,"v_file2")),id(root,"v_file1").getHeight()>300&&id(root,"v_file2").getHeight()>300);
        View set=settings(c);((ViewGroup)set.getParent()).removeView(set);a.setContentView(set);text(set,"高级").performClick();layout(set,1920,1440);android.widget.ScrollView scroll=null;for(View v:views(set))if(v instanceof android.widget.ScrollView&&v.getVisibility()==View.VISIBLE)scroll=(android.widget.ScrollView)v;assertNotNull(scroll);scroll.fullScroll(View.FOCUS_DOWN);Shadows.shadowOf(Looper.getMainLooper()).idle();capture(set,1920,1440,"settings-lower-font130-land.png");View port=id(set,"et_adbPort");assertNotNull(port);assertTrue(port.getHeight()>=96);
    }
    private String bounds(View view){String result="";for(int i=0;i<6&&view!=null;i++){result+=view.getClass().getSimpleName()+"="+view.getWidth()+"x"+view.getHeight()+" measured "+view.getMeasuredWidth()+"x"+view.getMeasuredHeight()+"; ";view=view.getParent() instanceof View?(View)view.getParent():null;}return result;}
    @Test public void themeSelectionPersistsAndLateRebindKeepsState()throws Exception{
        Activity a=Robolectric.buildActivity(CarHomeTest.PreviewActivity.class).setup().get();Context c=apkContext(a);
        CarUi.chooseTheme(c,"cyan",true);assertEquals("cyan",CarUi.skin(c).theme);View item=inflate(c,"item_check_no_bg");((TextView)id(item,"v_name")).setText("连接成功后提示");LegacyUi.bound(item,new Bean(true));DrawableState before=new DrawableState(((ImageView)id(item,"v_ico")).getDrawable());CarUi.chooseTheme(c,"mono",false);LegacyUi.bound(item,new Bean(false));assertEquals("mono",CarUi.skin(c).theme);assertNotSame(before.drawable,((ImageView)id(item,"v_ico")).getDrawable());
        ThemePicker.show(c);Dialog picker=org.robolectric.shadows.ShadowDialog.getLatestDialog();assertNotNull(picker);capture(picker.getWindow().getDecorView(),1120,1260,"theme-picker.png");
    }
    private static class DrawableState{final android.graphics.drawable.Drawable drawable;DrawableState(android.graphics.drawable.Drawable d){drawable=d;}}
    @Test public void supportedOriginalLayoutsRetainAllNamedControls()throws Exception{
        Activity a=Robolectric.buildActivity(CarHomeTest.PreviewActivity.class).setup().get();Context c=apkContext(a);File dir=new File(System.getProperty("carui.decoded.res"),"layout");List<String> report=new ArrayList<>();List<String> failures=new ArrayList<>();int passed=0;
        for(File f:dir.listFiles()){String name=f.getName().replace(".xml","");if(!(name.startsWith("activity_")||name.startsWith("dialog_")||name.startsWith("fragment_")||name.startsWith("item_")||name.startsWith("window_")))continue;
            try{View root=inflate(c,name);Map<Integer,View> originals=new LinkedHashMap<>();for(View v:views(root))if(v.getId()>0&&!v.getClass().getName().contains("Guideline"))originals.put(v.getId(),v);
                if(name.startsWith("item_"))LegacyUi.bound(root,null);else if(name.equals("dialog_set")){SettingsDialog dialog=new SettingsDialog(c,rid(c,name));dialog.setContentView(root);LegacyUi.dialog(dialog);}else LegacyUi.surface(root,rid(c,name));
                for(Map.Entry<Integer,View> e:originals.entrySet())assertSame(name+" lost "+ResourceIndex.name(e.getKey()),e.getValue(),root.findViewById(e.getKey()));
                layout(root,1440,1920);passed++;report.add(name+"\tPASS\tbinary XML / preserved IDs / native measure");
            }catch(Throwable e){String cause=e.toString();Throwable t=e;while(t.getCause()!=null)t=t.getCause();cause=t.toString();report.add(name+"\tUNVERIFIED\t"+cause);if(!cause.contains("ClassNotFoundException")&&!cause.contains("NoClassDefFoundError"))failures.add(name+": "+cause);}
        }
        File output=new File(System.getProperty("carui.preview.dir"),"modules/layout-checks.tsv");output.getParentFile().mkdirs();Files.write(output.toPath(),report);assertTrue("Too few real layouts checked: "+passed,passed>200);assertTrue(failures.toString(),failures.isEmpty());
    }
    @Test public void inflateOriginalBinaryLayoutAndKeepOriginalControls()throws Exception{
        Activity a=Robolectric.buildActivity(CarHomeTest.PreviewActivity.class).setup().get();Context c=apkContext(a);
        View root=inflate(c,"activity_apps");View back=root.findViewById(ResourceIndex.id("v_btn_return"));assertNotNull(back);
        LegacyUi.surface(root,c.getResources().getIdentifier("activity_apps","layout",c.getPackageName()));
        assertSame(back,root.findViewById(ResourceIndex.id("v_btn_return")));
        root.measure(View.MeasureSpec.makeMeasureSpec(1440,1073741824),View.MeasureSpec.makeMeasureSpec(1920,1073741824));root.layout(0,0,1440,1920);
        assertTrue(root.findViewById(ResourceIndex.id("v_list_app")).getHeight()>1000);
    }
}
