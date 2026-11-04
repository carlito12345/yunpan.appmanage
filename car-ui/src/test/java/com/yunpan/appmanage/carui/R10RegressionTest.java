package com.yunpan.appmanage.carui;

import android.app.Dialog;
import android.graphics.Rect;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.TextView;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.Shadows;
import org.robolectric.annotation.*;
import static org.junit.Assert.*;

@RunWith(RobolectricTestRunner.class)
@Config(sdk=28,manifest=Config.NONE,qualifiers="w720dp-h960dp-xhdpi")
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@LooperMode(LooperMode.Mode.PAUSED)
public class R10RegressionTest {
    final R4RegressionTest f=new R4RegressionTest();
    @Before public void setup()throws Exception{f.setup();}
    @Test public void bootNumericValuesFitAndKeepOriginalInputsAcrossThemesRotationAndFontScale()throws Exception{
        for(float font:new float[]{1f,1.3f})for(String theme:new String[]{"warm","cyan","mono"}){
            android.content.res.Configuration config=new android.content.res.Configuration(f.context.getResources().getConfiguration());config.fontScale=font;
            f.context.getResources().updateConfiguration(config,f.context.getResources().getDisplayMetrics());
            f.context.getSharedPreferences("car_ui_v1",0).edit().putString("theme",theme).putBoolean("dark",theme.equals("cyan")).commit();
            View root=f.fixture.inflate(f.context,"dialog_boot_task_set");
            EditText[] fields={(EditText)f.id(root,"v_et_time_load_delay"),(EditText)f.id(root,"v_et_time_boot"),(EditText)f.id(root,"v_et_time")};
            String[] values={"1","40","12345"};final int[] edits={0};
            fields[1].addTextChangedListener(new TextWatcher(){public void beforeTextChanged(CharSequence s,int a,int c,int n){}public void onTextChanged(CharSequence s,int a,int b,int c){}public void afterTextChanged(Editable e){edits[0]++;}});
            for(int i=0;i<fields.length;i++)fields[i].setText(values[i]);
            int expectedEdits=edits[0];
            Dialog dialog=new LegacyResourceTest.SettingsDialog(f.context,f.resource("layout","dialog_boot_task_set"));dialog.setOwnerActivity(f.activity);dialog.setContentView(root);dialog.show();
            for(int[] size:new int[][]{{1440,1920},{1920,1440}}){
                f.fixture.layout(f.activity.getWindow().getDecorView(),size[0],size[1]);CarUi.dialog(dialog);
                View decor=dialog.getWindow().getDecorView();WindowManager.LayoutParams p=dialog.getWindow().getAttributes();
                decor.measure(View.MeasureSpec.makeMeasureSpec(p.width,View.MeasureSpec.EXACTLY),View.MeasureSpec.makeMeasureSpec(size[1]-CarUi.dp(f.context,48),View.MeasureSpec.AT_MOST));decor.layout(0,0,decor.getMeasuredWidth(),decor.getMeasuredHeight());
                for(int i=0;i<fields.length;i++){
                    EditText field=fields[i];assertSame(field,f.id(root,CarUi.name(field)));assertEquals(values[i],field.getText().toString());
                    assertTrue("Numeric field needs a touch-sized height",field.getHeight()>=CarUi.dp(f.context,54));
                    Rect line=new Rect();field.getLayout().getLineBounds(0,line);
                    assertTrue("Full numeral height must fit inside padding",field.getHeight()-field.getCompoundPaddingTop()-field.getCompoundPaddingBottom()>=line.height());
                    assertTrue("Five-digit values must fit",field.getWidth()-field.getCompoundPaddingLeft()-field.getCompoundPaddingRight()>=field.getPaint().measureText(values[i]));
                    assertTrue("No field may overflow its row",field.getLeft()>=0&&field.getRight()<=((View)field.getParent()).getWidth());
                }
                if(font==1f)f.capture(decor,decor.getWidth(),decor.getHeight(),"r10-boot-"+theme+"-"+size[0]+".png");
            }
            assertEquals("Theming must not rewrite saved text",expectedEdits,edits[0]);fields[1].setText("120");assertEquals(expectedEdits+1,edits[0]);
            dialog.dismiss();
        }
    }
    TextView text(View v,String label){if(v instanceof TextView&&label.contentEquals(((TextView)v).getText()))return(TextView)v;if(v instanceof ViewGroup)for(int i=0;i<((ViewGroup)v).getChildCount();i++){TextView found=text(((ViewGroup)v).getChildAt(i),label);if(found!=null)return found;}return null;}
    View description(View v,String label){if(label.equals(String.valueOf(v.getContentDescription())))return v;if(v instanceof ViewGroup)for(int i=0;i<((ViewGroup)v).getChildCount();i++){View found=description(((ViewGroup)v).getChildAt(i),label);if(found!=null)return found;}return null;}
    void noBorder(View card,int color,float radius,int[] state){
        Drawable actual=card.getBackground();actual.setState(state);actual.setBounds(0,0,240,240);
        GradientDrawable expected=new GradientDrawable();expected.setColor(Appearance.color(color,Appearance.load(f.activity)));expected.setCornerRadius(CarUi.dp(f.activity,radius));expected.setBounds(0,0,240,240);
        Bitmap a=Bitmap.createBitmap(240,240,Bitmap.Config.ARGB_8888),b=Bitmap.createBitmap(240,240,Bitmap.Config.ARGB_8888);actual.draw(new Canvas(a));expected.draw(new Canvas(b));
        int[] ap=new int[240*240],bp=new int[240*240];a.getPixels(ap,0,240,0,0,240,240);b.getPixels(bp,0,240,0,0,240,240);
        int max=0;for(int i=0;i<ap.length;i++){int ca=ap[i],cb=bp[i],aa=ca>>>24,ab=cb>>>24;max=Math.max(max,Math.abs(aa-ab));for(int shift:new int[]{0,8,16})max=Math.max(max,Math.abs(((ca>>>shift)&255)*aa/255-((cb>>>shift)&255)*ab/255));}
        // Native premultiplication and state-container alpha rounding differ by a few 8-bit levels.
        assertTrue("Favorite background must be a plain fill without any border; pixel delta="+max+", state="+java.util.Arrays.toString(state)+", center="+Integer.toHexString(a.getPixel(120,120))+" expected="+Integer.toHexString(b.getPixel(120,120)),max<=4);a.recycle();b.recycle();
    }
    @Test public void homeKeepsSeparatePanelsAndBorderlessFavoritesInEveryThemeAndEdgeStyle()throws Exception{
        checkHome(1440,1920);
    }
    @Test @Config(qualifiers="w960dp-h720dp-land-xhdpi") public void landscapeKeepsSeparatePanelsAndBorderlessFavorites()throws Exception{
        checkHome(1920,1440);
    }
    void checkHome(int width,int height)throws Exception{
        f.activity=org.robolectric.Robolectric.buildActivity(CarHomeTest.PreviewActivity.class).setup().get();
        Wallpapers.Config wallpaper=Wallpapers.load(f.activity);wallpaper.mode="particles";Wallpapers.save(f.activity,wallpaper);
        for(String theme:new String[]{"warm","cyan","mono"})for(boolean dark:new boolean[]{false,true})for(int style=0;style<4;style++){
            f.activity.getSharedPreferences("car_ui_v1",0).edit().putString("theme",theme).putBoolean("dark",dark).putInt("borderStyle",style).putInt("transparency",32).commit();
            CarHome home=new CarHome(f.activity,new Bridge(f.activity,null),null);f.activity.setContentView(home);
            for(int[] size:new int[][]{{width,height}}){
                for(int pass=0;pass<2;pass++){f.fixture.layout(home,size[0],size[1]);Shadows.shadowOf(android.os.Looper.getMainLooper()).idle();}
                View heading=(View)text(home,"应用管家").getParent(),hero=(View)text(home,size[0]>size[1]?"常用入口，随你安排":"常用入口\n随你安排").getParent().getParent(),section=(View)text(home,"常用功能").getParent(),card=(View)text(home,"应用管理").getParent().getParent(),add=description(home,"添加新的常用功能或跳转");
                assertTrue("Header and hero need a real outer gap",f.top(hero)-f.top(heading)-heading.getHeight()>=CarUi.dp(f.activity,16));
                assertTrue("Hero and favorites heading need separation",f.top(section)-f.top(hero)-hero.getHeight()>=CarUi.dp(f.activity,18));
                assertTrue("Favorites heading must not touch cards",f.top(card)-f.top(section)-section.getHeight()>=CarUi.dp(f.activity,14));
                CarUi.Skin skin=CarUi.skin(f.activity);float radius=theme.equals("cyan")?10:theme.equals("mono")?16:26;
                assertNotNull(add);assertTrue(add.isClickable());
                for(int[] state:new int[][]{new int[]{},new int[]{android.R.attr.state_pressed},new int[]{android.R.attr.state_focused}})noBorder(card,state.length==0?skin.surface:skin.soft,radius,state);
                card.getBackground().setState(new int[]{});add.getBackground().setState(new int[]{});
                if(style==3&&!dark)f.capture(home,size[0],size[1],"r10-home-"+theme+"-"+size[0]+".png");
            }
        }
    }
}
