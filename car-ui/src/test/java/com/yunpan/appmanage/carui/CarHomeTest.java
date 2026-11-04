package com.yunpan.appmanage.carui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;
import java.io.File;
import java.io.FileOutputStream;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.Robolectric;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.Shadows;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;
import org.robolectric.annotation.LooperMode;
import org.robolectric.shadows.ShadowDialog;
import static org.junit.Assert.*;

@RunWith(RobolectricTestRunner.class)
@Config(sdk=28, manifest=Config.NONE, qualifiers="w720dp-h960dp-xhdpi")
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@LooperMode(LooperMode.Mode.PAUSED)
public class CarHomeTest {
    public static class PreviewActivity extends Activity{
        @Override public void onCreate(android.os.Bundle bundle){
            setTheme(android.R.style.Theme_Material_Light_NoActionBar_Fullscreen);
            getWindow().setFlags(android.view.WindowManager.LayoutParams.FLAG_FULLSCREEN,android.view.WindowManager.LayoutParams.FLAG_FULLSCREEN);
            getWindow().getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_FULLSCREEN|View.SYSTEM_UI_FLAG_HIDE_NAVIGATION|View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY|View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN|View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION|View.SYSTEM_UI_FLAG_LAYOUT_STABLE);
            super.onCreate(bundle);
        }
    }
    @Before public void clear(){RuntimeEnvironment.getApplication().getSharedPreferences("car_ui_v1",0).edit().clear().commit();}
    @Test public void favoritesPersistRenameReorderDeleteAndEmpty(){
        Context context=RuntimeEnvironment.getApplication();Favorites model=new Favorites(context);assertEquals(6,model.all().size());
        Favorites.Item added=new Favorites.Item("常用页面","link","https://example.com/path","link");assertTrue(model.add(added));assertFalse(model.add(added));
        model.rename(added.id,"新名称");model.move(added.id,0);Favorites restored=new Favorites(context);assertEquals("新名称",restored.all().get(0).name);
        assertEquals("https://example.com/path",restored.all().get(0).target);
        while(!restored.all().isEmpty())restored.remove(restored.all().get(0).id);
        assertEquals(0,new Favorites(context).all().size());
    }
    @Test public void malformedSavedDataIsKeptForRecovery(){
        Context context=RuntimeEnvironment.getApplication();context.getSharedPreferences("car_ui_v1",0).edit().putString("favorites","broken").commit();
        assertEquals(0,new Favorites(context).all().size());assertEquals("broken",context.getSharedPreferences("car_ui_v1",0).getString("favorites_recovery",null));
    }
    @Test public void parsesDeepLinksAndExplicitComponents()throws Exception{
        Activity activity=Robolectric.buildActivity(Activity.class).setup().get();
        assertEquals("https://example.com/path",Bridge.parseTarget(activity,"https://example.com/path").getDataString());
        assertEquals("com.example.app.Main",Bridge.parseTarget(activity,"com.example.app/.Main").getComponent().getClassName());
        try{Bridge.parseTarget(activity,"");fail("Empty target accepted");}catch(IllegalArgumentException expected){}
    }
    private static final class PreviewBridge extends Bridge{
        PreviewBridge(Activity activity){super(activity,null);}
        @Override public boolean available(Favorites.Item item){return true;}
        @Override public void page(int index){}
        @Override public void settings(){}
    }
    private void layout(View root,int width,int height){
        int w=View.MeasureSpec.makeMeasureSpec(width,View.MeasureSpec.EXACTLY),h=View.MeasureSpec.makeMeasureSpec(height,View.MeasureSpec.EXACTLY);
        root.measure(w,h);root.layout(0,0,width,height);Shadows.shadowOf(android.os.Looper.getMainLooper()).idle();
        root.measure(w,h);root.layout(0,0,width,height);Shadows.shadowOf(android.os.Looper.getMainLooper()).idle();
    }
    private void capture(View root,int width,int height,String file)throws Exception{
        invalidate(root);root.scrollTo(0,0);
        layout(root,width,height);assertEquals("Capture width",width,root.getWidth());assertEquals("Capture height",height,root.getHeight());Bitmap bitmap=Bitmap.createBitmap(width,height,Bitmap.Config.ARGB_8888);root.draw(new Canvas(bitmap));
        File output=new File(System.getProperty("carui.preview.dir"),file);output.getParentFile().mkdirs();
        try(FileOutputStream stream=new FileOutputStream(output)){assertTrue(bitmap.compress(Bitmap.CompressFormat.PNG,100,stream));}bitmap.recycle();
    }
    private void invalidate(View view){view.invalidate();view.forceLayout();if(view instanceof ViewGroup){ViewGroup g=(ViewGroup)view;for(int i=0;i<g.getChildCount();i++)invalidate(g.getChildAt(i));}}
    private TextView findText(View view,String title){
        if(view instanceof TextView&&title.contentEquals(((TextView)view).getText()))return(TextView)view;
        if(view instanceof ViewGroup){ViewGroup group=(ViewGroup)view;for(int i=0;i<group.getChildCount();i++){TextView result=findText(group.getChildAt(i),title);if(result!=null)return result;}}return null;
    }
    private void targets(View root){
        if(root.getVisibility()!=View.VISIBLE)return;
        if(root.isClickable()){assertTrue("Narrow target "+root.getContentDescription(),root.getWidth()>=96);assertTrue("Short target "+root.getContentDescription(),root.getHeight()>=96);}
        if(root instanceof ViewGroup){ViewGroup group=(ViewGroup)root;for(int i=0;i<group.getChildCount();i++)targets(group.getChildAt(i));}
    }
    @Test public void nativePortraitLandscapeNightAndEditing()throws Exception{
        Activity activity=Robolectric.buildActivity(PreviewActivity.class).setup().get();PreviewBridge bridge=new PreviewBridge(activity);
        CarHome home=new CarHome(activity,bridge,null);activity.setContentView(home);
        capture(home,1440,1920,"portrait-day.png");targets(home);assertNotNull(findText(home,"添加跳转"));
        assertNotNull(findText(home,"编辑"));findText(home,"编辑").performClick();capture(home,1440,1920,"portrait-edit.png");assertNotNull(findText(home,"完成"));
        findText(home,"完成").performClick();assertTrue(home.back()==false);home.showPage(1);assertTrue(home.back());assertEquals(-1,home.currentPage());
        home.model().dark(true);home=new CarHome(activity,new PreviewBridge(activity),null);activity.setContentView(home);capture(home,1440,1920,"portrait-night.png");
    }
    @Test @Config(qualifiers="w960dp-h720dp-land-xhdpi") public void nativeLandscapeAndLargeFont()throws Exception{
        Activity activity=Robolectric.buildActivity(PreviewActivity.class).setup().get();CarHome home=new CarHome(activity,new PreviewBridge(activity),null);activity.setContentView(home);
        capture(home,1920,1440,"landscape-day.png");targets(home);
        Configuration config=new Configuration(activity.getResources().getConfiguration());config.fontScale=1.3f;
        android.util.DisplayMetrics metrics=activity.getResources().getDisplayMetrics();metrics.scaledDensity=metrics.density*1.3f;activity.getResources().updateConfiguration(config,metrics);
        home=new CarHome(activity,new PreviewBridge(activity),null);activity.setContentView(home);capture(home,1920,1440,"landscape-font130.png");targets(home);
    }
    @Test public void addingInternalFunctionThroughPickerPersists()throws Exception{
        final Activity activity=Robolectric.buildActivity(PreviewActivity.class).setup().get();final Favorites model=new Favorites(activity);
        ShortcutPicker picker=new ShortcutPicker(activity,new PreviewBridge(activity),new CarUi.Skin(false),new ShortcutPicker.Listener(){@Override public boolean add(Favorites.Item item){return model.add(item);}});
        picker.show();View decor=((ViewGroup)picker.findViewById(android.R.id.content)).getChildAt(0);layout(decor,1360,1560);assertNotNull(findText(decor,"添加跳转"));assertNotNull(findText(decor,"应用"));assertNotNull(findDescription(decor,"关闭添加跳转"));capture(decor,1360,1560,"add-shortcut.png");
        ListView list=findList(decor);assertNotNull(list);assertTrue(list.getAdapter().getCount()>2);
        View row=list.getAdapter().getView(2,null,list);list.performItemClick(row,2,2);assertEquals(7,new Favorites(activity).all().size());assertEquals("网络存储",new Favorites(activity).all().get(6).name);
    }
    @Test public void customJumpFormValidatesAndPersists()throws Exception{
        final Activity activity=Robolectric.buildActivity(PreviewActivity.class).setup().get();final Favorites model=new Favorites(activity);
        ShortcutPicker picker=new ShortcutPicker(activity,new PreviewBridge(activity),new CarUi.Skin(false),new ShortcutPicker.Listener(){@Override public boolean add(Favorites.Item item){return model.add(item);}});
        picker.show();View decor=picker.getWindow().getDecorView();layout(decor,1360,1560);findText(decor,"自定义").performClick();capture(decor,1360,1560,"add-custom.png");
        TextView save=findText(decor,"添加到常用功能");assertNotNull(save);save.performClick();assertEquals(6,model.all().size());
        android.widget.EditText name=findInput(decor,"例如：导航回家"),target=findInput(decor,"应用链接、包名或 包名/Activity");assertNotNull(name);assertNotNull(target);
        name.setText("地图入口");target.setText("not.installed.package");save.performClick();assertEquals(6,model.all().size());
        String uri="car-example://route/test";Intent intent=new Intent(Intent.ACTION_VIEW,android.net.Uri.parse(uri));
        android.content.pm.ResolveInfo resolver=new android.content.pm.ResolveInfo();resolver.activityInfo=new android.content.pm.ActivityInfo();resolver.activityInfo.name="com.example.Target";resolver.activityInfo.packageName="com.example";
        Shadows.shadowOf(activity.getPackageManager()).addResolveInfoForIntent(intent,resolver);
        target.setText(uri);save.performClick();Favorites restored=new Favorites(activity);assertEquals(7,restored.all().size());assertEquals(uri,restored.all().get(6).target);
    }
    @Test public void emptyFavoritesStayUsable()throws Exception{
        Activity activity=Robolectric.buildActivity(PreviewActivity.class).setup().get();Favorites model=new Favorites(activity);while(!model.all().isEmpty())model.remove(model.all().get(0).id);
        CarHome home=new CarHome(activity,new PreviewBridge(activity),null);activity.setContentView(home);capture(home,1440,1920,"portrait-empty.png");assertNotNull(findText(home,"添加跳转"));
    }
    private android.widget.EditText findInput(View view,String hint){
        if(view instanceof android.widget.EditText&&hint.contentEquals(((android.widget.EditText)view).getHint()))return(android.widget.EditText)view;
        if(view instanceof ViewGroup){ViewGroup group=(ViewGroup)view;for(int i=0;i<group.getChildCount();i++){android.widget.EditText found=findInput(group.getChildAt(i),hint);if(found!=null)return found;}}return null;
    }
    @Test public void nativePressedAndFocusedRolesHaveContrast()throws Exception{
        Activity activity=Robolectric.buildActivity(PreviewActivity.class).setup().get();
        for(boolean dark:new boolean[]{false,true}){
            Favorites preferences=new Favorites(activity);preferences.dark(dark);CarUi.Skin skin=new CarUi.Skin(dark);
            CarHome home=new CarHome(activity,new PreviewBridge(activity),null);activity.setContentView(home);layout(home,1440,1920);
            View rail=(View)findText(home,"常用").getParent();
            componentState(rail,android.R.attr.state_pressed,skin.onAccent,"rail-pressed-"+(dark?"night":"day")+".png",false);
            componentState(rail,android.R.attr.state_focused,skin.onAccent,"rail-focus-"+(dark?"night":"day")+".png",true);
            if(!dark)continue;
            findText(home,"编辑").performClick();layout(home,1440,1920);
            View remove=findDescription(home,"移除 应用管理");assertNotNull(remove);componentState(remove,android.R.attr.state_pressed,skin.ink,"remove-pressed-night.png",false);
            View tile=(View)((View)findText(home,"应用管理").getParent()).getParent();tile.performClick();Shadows.shadowOf(android.os.Looper.getMainLooper()).idle();
            android.app.Dialog rename=ShadowDialog.getLatestDialog();assertNotNull(rename);View renameDecor=rename.getWindow().getDecorView();Shadows.shadowOf(android.os.Looper.getMainLooper()).idle();layout(renameDecor,renameDecor.getWidth(),renameDecor.getHeight());
            TextView renameSave=findText(renameDecor,"保存");assertNotNull(renameSave);
            componentState(renameSave,android.R.attr.state_pressed,renameSave.getCurrentTextColor(),"rename-save-pressed-night.png",false);
            componentState(renameSave,android.R.attr.state_focused,renameSave.getCurrentTextColor(),"rename-save-focus-night.png",true);rename.dismiss();
            ShortcutPicker picker=new ShortcutPicker(activity,new PreviewBridge(activity),skin,new ShortcutPicker.Listener(){@Override public boolean add(Favorites.Item item){return true;}});
            picker.show();View decor=picker.getWindow().getDecorView();layout(decor,1360,1560);
            View close=findDescription(decor,"关闭添加跳转");componentState(close,android.R.attr.state_pressed,skin.ink,"picker-close-pressed-night.png",false);
            TextView tab=findText(decor,"应用");componentState(tab,android.R.attr.state_pressed,tab.getCurrentTextColor(),"picker-tab-pressed-night.png",false);
            findText(decor,"自定义").performClick();layout(decor,1360,1560);TextView save=findText(decor,"添加到常用功能");
            componentState(save,android.R.attr.state_pressed,save.getCurrentTextColor(),"custom-save-pressed-night.png",false);
            componentState(save,android.R.attr.state_focused,save.getCurrentTextColor(),"custom-save-focus-night.png",true);picker.dismiss();
        }
    }
    private View findDescription(View view,String description){
        if(description.contentEquals(view.getContentDescription()==null?"":view.getContentDescription()))return view;
        if(view instanceof ViewGroup){ViewGroup group=(ViewGroup)view;for(int i=0;i<group.getChildCount();i++){View found=findDescription(group.getChildAt(i),description);if(found!=null)return found;}}return null;
    }
    private double luminance(int color){double total=0;double[] weights={.2126,.7152,.0722};int[] channels={Color.red(color),Color.green(color),Color.blue(color)};for(int i=0;i<3;i++){double c=channels[i]/255.;total+=weights[i]*(c<=.04045?c/12.92:Math.pow((c+.055)/1.055,2.4));}return total;}
    private double contrast(int a,int b){double first=luminance(a),second=luminance(b);return(Math.max(first,second)+.05)/(Math.min(first,second)+.05);}
    private void componentState(View view,int state,int foreground,String name,boolean focus)throws Exception{
        assertTrue("Component not laid out: "+name,view.getWidth()>0&&view.getHeight()>0);
        android.graphics.drawable.Drawable background=view.getBackground();assertNotNull(background);background.setState(new int[]{state});
        android.graphics.drawable.GradientDrawable current=(android.graphics.drawable.GradientDrawable)background.getCurrent();int fill=current.getColor().getDefaultColor();
        assertTrue("Text/icon contrast: "+name+" "+contrast(foreground,fill),contrast(foreground,fill)>=4.5);
        Bitmap bitmap=Bitmap.createBitmap(view.getWidth(),view.getHeight(),Bitmap.Config.ARGB_8888);Canvas canvas=new Canvas(bitmap);
        if(view instanceof TextView){
            // Isolate the real native Drawable/Layout: Robolectric may skip a freshly opened dialog TextView's draw traversal.
            TextView label=(TextView)view;assertNotNull("Missing native text layout: "+name,label.getLayout());
            background.setBounds(0,0,view.getWidth(),view.getHeight());background.draw(canvas);canvas.save();canvas.translate(label.getCompoundPaddingLeft(),label.getTotalPaddingTop());label.getLayout().draw(canvas);canvas.restore();
        }else view.draw(canvas);
        assertTrue("Empty component capture: "+name,Color.alpha(bitmap.getPixel(view.getWidth()/2,view.getHeight()/2))>200);
        if(focus){int stroke=bitmap.getPixel(view.getWidth()/2,2);assertTrue("Focus contrast: "+name+" "+contrast(stroke,fill),contrast(stroke,fill)>=3);}
        File file=new File(System.getProperty("carui.preview.dir"),"states/"+name);file.getParentFile().mkdirs();try(FileOutputStream out=new FileOutputStream(file)){bitmap.compress(Bitmap.CompressFormat.PNG,100,out);}bitmap.recycle();background.setState(new int[]{});
    }
    private ListView findList(View view){if(view instanceof ListView)return(ListView)view;if(view instanceof ViewGroup){ViewGroup group=(ViewGroup)view;for(int i=0;i<group.getChildCount();i++){ListView list=findList(group.getChildAt(i));if(list!=null)return list;}}return null;}
}
