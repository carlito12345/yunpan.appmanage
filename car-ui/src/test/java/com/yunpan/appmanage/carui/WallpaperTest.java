package com.yunpan.appmanage.carui;

import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.concurrent.TimeUnit;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.Shadows;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;
import org.robolectric.annotation.LooperMode;
import org.robolectric.shadows.ShadowDialog;
import org.robolectric.util.ReflectionHelpers;
import static org.junit.Assert.*;

@RunWith(RobolectricTestRunner.class)
@Config(sdk=28,manifest=Config.NONE,qualifiers="w720dp-h960dp-xhdpi")
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@LooperMode(LooperMode.Mode.PAUSED)
public class WallpaperTest {
    final R4RegressionTest f=new R4RegressionTest();
    @Before public void setup()throws Exception{f.setup();f.activity.getSharedPreferences("car_wallpaper_v1",0).edit().clear().commit();}
    View text(View root,String name){if(root instanceof TextView&&((TextView)root).getText().toString().startsWith(name))return root;if(root instanceof ViewGroup){ViewGroup g=(ViewGroup)root;for(int i=0;i<g.getChildCount();i++){View found=text(g.getChildAt(i),name);if(found!=null)return found;}}return null;}
    @Test public void settingsPersistAndMalformedIndexesAreBounded(){Wallpapers.Config c=Wallpapers.load(f.activity);assertEquals("off",c.mode);c.mode="particles";c.style=5;c.color=4;c.background=3;c.speed=91;c.still=true;Wallpapers.save(f.activity,c);Wallpapers.Config saved=Wallpapers.load(f.activity);assertEquals(5,saved.style);assertEquals(4,saved.color);assertEquals(3,saved.background);assertEquals(91,saved.speed);assertTrue(saved.still);f.activity.getSharedPreferences("car_wallpaper_v1",0).edit().putInt("style",999).putInt("color",-4).putString("mode","unknown").commit();saved=Wallpapers.load(f.activity);assertEquals("off",saved.mode);assertEquals(5,saved.style);assertEquals(0,saved.color);}
    Bitmap frame(Wallpapers.Config config, float time) {
        ParticleScene scene = new ParticleScene();
        scene.configure(config);
        for (float remaining = time; remaining > 0f; remaining -= .04f) {
            scene.advance(config, Math.min(.04f, remaining));
        }
        return frame(scene, config);
    }
    private Bitmap frame(ParticleScene scene, Wallpapers.Config config) {
        Bitmap bitmap = Bitmap.createBitmap(480, 640, Bitmap.Config.ARGB_8888);
        scene.draw(new Canvas(bitmap), 480, 640, config);
        return bitmap;
    }
    private Bitmap frame(View view) {
        Bitmap bitmap = Bitmap.createBitmap(480, 640, Bitmap.Config.ARGB_8888);
        view.draw(new Canvas(bitmap));
        return bitmap;
    }
    @Test public void particlePreviewRunsAndPausesOnTheCurrentFrame() {
        Wallpapers.Config config = new Wallpapers.Config();
        config.mode = "particles";
        config.style = 5;
        WallpaperView preview = new WallpaperView(f.activity, true);
        preview.configure(config);
        f.activity.setContentView(preview);
        f.fixture.layout(preview, 480, 640);
        Bitmap initial = frame(preview);
        Shadows.shadowOf(Looper.getMainLooper()).idleFor(480, TimeUnit.MILLISECONDS);
        Bitmap moving = frame(preview);
        assertFalse(initial.sameAs(moving));
        config.still = true;
        preview.configure(config);
        Shadows.shadowOf(Looper.getMainLooper()).idleFor(480, TimeUnit.MILLISECONDS);
        Bitmap paused = frame(preview);
        assertTrue("Pausing retains the current scene", moving.sameAs(paused));
        config.still = false;
        preview.configure(config);
        Shadows.shadowOf(Looper.getMainLooper()).idleFor(480, TimeUnit.MILLISECONDS);
        Bitmap resumed = frame(preview);
        assertFalse(paused.sameAs(resumed));
        initial.recycle();
        moving.recycle();
        paused.recycle();
        resumed.recycle();
    }
    @Test public void particlesCarryVelocityAndBreatheAtIndependentRates() {
        Wallpapers.Config config = new Wallpapers.Config();
        config.mode = "particles";
        config.style = 5;
        config.speed = 0;
        ParticleScene scene = new ParticleScene();
        scene.configure(config);
        Object[] particles = ReflectionHelpers.getField(scene, "particles");
        Object first = particles[0], second = particles[1];
        float previousVelocity = ReflectionHelpers.getField(first, "vy");
        float previousBreath = ReflectionHelpers.getField(first, "breath");
        float anotherBreath = ReflectionHelpers.getField(second, "breath");

        config.speed = 100;
        scene.advance(config, .033f);
        float initialVelocity = ReflectionHelpers.getField(first, "vy");
        float instantTarget = 1.94f * ReflectionHelpers.<Float>getField(first, "driftY");
        assertTrue(initialVelocity > previousVelocity);
        assertTrue("Velocity must ease towards the new speed", initialVelocity < instantTarget);
        float firstPhaseStep = ReflectionHelpers.<Float>getField(first, "breath") - previousBreath;
        float secondPhaseStep = ReflectionHelpers.<Float>getField(second, "breath") - anotherBreath;
        assertTrue(firstPhaseStep > 0f && secondPhaseStep > 0f);
        assertNotEquals(firstPhaseStep, secondPhaseStep, .00001f);
    }
    @Test public void allSixPatternsAnimateAndBothPalettesAffectPixels(){java.util.HashSet<Integer> signatures=new java.util.HashSet<>();Wallpapers.Config c=new Wallpapers.Config();for(int style=0;style<6;style++){c.style=style;Bitmap first=frame(c,0),later=frame(c,8);assertFalse("style "+style+" must change with time",first.sameAs(later));int[] pixels=new int[480*640];first.getPixels(pixels,0,480,0,0,480,640);signatures.add(java.util.Arrays.hashCode(pixels));first.recycle();later.recycle();}assertEquals(6,signatures.size());Bitmap blue=frame(c,0);c.background=2;c.color=4;Bitmap purple=frame(c,0);assertFalse(blue.sameAs(purple));blue.recycle();purple.recycle();}
    @Test public void previewCancelDoesNotSaveAndApplyPersistsSelection()throws Exception{WallpaperPicker.show(f.activity);Dialog d=ShadowDialog.getLatestDialog();View decor=d.getWindow().getDecorView();text(decor,"粒子").performClick();assertEquals("off",Wallpapers.load(f.activity).mode);text(decor,"流星雨").performClick();text(decor,"取消").performClick();assertEquals("off",Wallpapers.load(f.activity).mode);WallpaperPicker.show(f.activity);d=ShadowDialog.getLatestDialog();decor=d.getWindow().getDecorView();text(decor,"粒子").performClick();text(decor,"轨道光环").performClick();text(decor,"樱粉").performClick();text(decor,"暮光紫").performClick();for(int[] size:new int[][]{{1440,1920},{1920,1440}}){f.fixture.layout(f.activity.getWindow().getDecorView(),size[0],size[1]);android.view.WindowManager.LayoutParams p=d.getWindow().getAttributes();f.fixture.layout(decor,p.width,p.height);assertTrue(decor.getHeight()<=size[1]);assertTrue(text(decor,"应用壁纸").getHeight()>=96);}text(decor,"应用壁纸").performClick();Wallpapers.Config saved=Wallpapers.load(f.activity);assertEquals("particles",saved.mode);assertEquals(4,saved.style);assertEquals(4,saved.color);assertEquals(2,saved.background);}
    @Test public void systemVideoRequestAndCancellationPreserveCurrentWallpaper(){Wallpapers.Config c=new Wallpapers.Config();c.mode="particles";Wallpapers.save(f.activity,c);Wallpapers.chooseVideo(f.activity);org.robolectric.shadows.ShadowActivity.IntentForResult request=Shadows.shadowOf(f.activity).getNextStartedActivityForResult();assertNotNull(request);assertEquals(Intent.ACTION_OPEN_DOCUMENT,request.intent.getAction());assertEquals("video/*",request.intent.getType());assertTrue(request.intent.getBooleanExtra(Intent.EXTRA_LOCAL_ONLY,false));assertTrue((request.intent.getFlags()&Intent.FLAG_GRANT_PERSISTABLE_URI_PERMISSION)!=0);Wallpapers.VideoResult fragment=(Wallpapers.VideoResult)f.activity.getFragmentManager().findFragmentByTag("carui.video.result");fragment.onActivityResult(7362,Activity.RESULT_CANCELED,null);assertEquals("particles",Wallpapers.load(f.activity).mode);ShadowDialog.getLatestDialog().dismiss();fragment.onActivityResult(7362,Activity.RESULT_OK,new Intent().setData(Uri.parse("https://example.com/video.mp4")));assertEquals("particles",Wallpapers.load(f.activity).mode);ShadowDialog.getLatestDialog().dismiss();}
    @Test public void activityPauseAndDetachStopTheRenderLoop()throws Exception{WallpaperView view=new WallpaperView(f.activity,false);Wallpapers.Config c=new Wallpapers.Config();c.mode="particles";view.configure(c);f.activity.setContentView(view);f.fixture.layout(view,1440,1920);java.lang.reflect.Method running=WallpaperView.class.getDeclaredMethod("running");running.setAccessible(true);assertTrue((Boolean)running.invoke(view));WallpaperView.activityState(f.activity,false);assertFalse((Boolean)running.invoke(view));WallpaperView.activityState(f.activity,true);assertTrue((Boolean)running.invoke(view));((ViewGroup)view.getParent()).removeView(view);assertFalse((Boolean)running.invoke(view));}
    @Test public void originalStaticWallpaperResourceAndSolidColorsPersistWithoutAPlayer()throws Exception{Wallpapers.Config c=new Wallpapers.Config();c.mode="static";c.staticImage=0;assertNotNull("Original bj_2 resource must resolve",Wallpapers.staticDrawable(f.context,0));Wallpapers.save(f.context,c);assertEquals("static",Wallpapers.load(f.context).mode);WallpaperView view=new WallpaperView(f.context,false);view.configure(c);f.activity.setContentView(view);for(int[] size:new int[][]{{1440,1920},{1920,1440}}){f.fixture.layout(view,size[0],size[1]);android.widget.ImageView image=(android.widget.ImageView)view.getChildAt(0);assertNotNull(image.getDrawable());assertEquals(View.VISIBLE,image.getVisibility());float[] point={image.getDrawable().getIntrinsicWidth()*.7f,image.getDrawable().getIntrinsicHeight()*.25f};image.getImageMatrix().mapPoints(point);assertTrue(point[0]>=0&&point[0]<=size[0]);assertTrue(point[1]>=0&&point[1]<=size[1]);}c.staticImage=1;c.background=4;Wallpapers.save(f.context,c);view.configure(c);assertEquals(1,Wallpapers.load(f.context).staticImage);assertEquals(4,Wallpapers.load(f.context).background);assertEquals(View.GONE,view.getChildAt(0).getVisibility());java.lang.reflect.Field player=WallpaperView.class.getDeclaredField("player");player.setAccessible(true);assertNull(player.get(view));}

    @Test public void staticChooserUsesImagesAndSystemCancelDoesNotChangeSavedConfig(){Wallpapers.Config c=new Wallpapers.Config();c.mode="particles";Wallpapers.save(f.activity,c);Wallpapers.chooseImage(f.activity,c,"");org.robolectric.shadows.ShadowActivity.IntentForResult request=Shadows.shadowOf(f.activity).getNextStartedActivityForResult();assertEquals(7363,request.requestCode);assertEquals("image/*",request.intent.getType());assertTrue(request.intent.getBooleanExtra(Intent.EXTRA_LOCAL_ONLY,false));Wallpapers.VideoResult fragment=(Wallpapers.VideoResult)f.activity.getFragmentManager().findFragmentByTag("carui.video.result");fragment.onActivityResult(7363,Activity.RESULT_CANCELED,null);assertEquals("particles",Wallpapers.load(f.activity).mode);ShadowDialog.getLatestDialog().dismiss();}
    @Test public void cropGeometryFillsDetectedScreenAfterPanZoomAndRotation()throws Exception{Bitmap source=Bitmap.createBitmap(1600,900,Bitmap.Config.ARGB_8888);source.eraseColor(android.graphics.Color.GREEN);WallpaperCropper.CropView view=new WallpaperCropper.CropView(f.activity,source,1440,1920);f.activity.setContentView(view);f.fixture.layout(view,1300,1500);view.zoom(2,view.frame.centerX(),view.frame.centerY());view.move(100000,-100000);assertTrue(view.dx<=view.frame.left&&view.dy<=view.frame.top);assertTrue(view.dx+source.getWidth()*view.scale>=view.frame.right-.1f);assertTrue(view.dy+source.getHeight()*view.scale>=view.frame.bottom-.1f);Bitmap cropped=view.output();assertEquals(1440,cropped.getWidth());assertEquals(1920,cropped.getHeight());assertEquals(android.graphics.Color.GREEN,cropped.getPixel(0,0));assertEquals(android.graphics.Color.GREEN,cropped.getPixel(1439,1919));cropped.recycle();view.target(1920,1440);f.fixture.layout(view,1700,950);assertEquals(1920f/1440,view.frame.width()/view.frame.height(),.001);assertEquals(2,view.scale/view.minScale,.001);cropped=view.output();assertEquals(1920,cropped.getWidth());assertEquals(1440,cropped.getHeight());assertEquals(android.graphics.Color.GREEN,cropped.getPixel(1919,1439));cropped.recycle();view.reset();assertEquals(view.minScale,view.scale,0);assertArrayEquals(new int[]{1440,1920},WallpaperCropper.outputSize(1440,1920));int[] huge=WallpaperCropper.outputSize(7680,4320);assertTrue(huge[0]<=2560&&(long)huge[0]*huge[1]<=4000000);assertFalse(source.isRecycled());view.release();}
    @Test public void croppedCopiesArePrivateAndCancelCannotDeleteSavedOrOriginalImage()throws Exception{java.io.File dir=new java.io.File(f.activity.getFilesDir(),"wallpaper-images");dir.mkdirs();java.io.File original=new java.io.File(f.activity.getFilesDir(),"original-test.jpg"),saved=new java.io.File(dir,"saved-test.jpg"),pending=new java.io.File(dir,"pending-test.jpg");for(java.io.File file:new java.io.File[]{original,saved,pending})try(java.io.FileOutputStream out=new java.io.FileOutputStream(file)){out.write(12);}Wallpapers.Config c=new Wallpapers.Config();c.mode="static";c.staticImage=3;c.imageUri=saved.toURI().toString();Wallpapers.save(f.activity,c);Wallpapers.discardImage(f.activity,c.imageUri);Wallpapers.discardImage(f.activity,original.toURI().toString());assertTrue(saved.exists());assertTrue(original.exists());Wallpapers.Config draft=c.copy();draft.imageUri=pending.toURI().toString();WallpaperPicker.show(f.activity,draft,"");Dialog editor=ShadowDialog.getLatestDialog();text(editor.getWindow().getDecorView(),"取消").performClick();assertFalse("Unsaved pending crop must be removed on cancel",pending.exists());assertTrue(saved.exists());assertEquals(c.imageUri,Wallpapers.load(f.activity).imageUri);c.imageUri="";c.staticImage=0;Wallpapers.save(f.activity,c);assertFalse("Previous saved crop must be removed after replacement",saved.exists());assertTrue(original.exists());original.delete();}
    @Test public void originalAdvancedBackgroundButtonOpensTheSameWallpaperCenter()throws Exception{View root=f.fixture.inflate(f.context,"dialog_set");View original=f.id(root,"v_btn_background");assertNotNull(original);LegacyResourceTest.SettingsDialog settings=new LegacyResourceTest.SettingsDialog(f.context,f.resource("layout","dialog_set"));settings.setContentView(root);final int[] dismissed={0};settings.setOnDismissListener(d->dismissed[0]++);settings.show();CarUi.dialog(settings);assertSame(original,f.id(root,"v_btn_background"));original.performClick();assertFalse(settings.isShowing());Shadows.shadowOf(android.os.Looper.getMainLooper()).idle();assertEquals(1,dismissed[0]);Dialog center=ShadowDialog.getLatestDialog();assertNotSame(settings,center);assertNotNull(text(center.getWindow().getDecorView(),"壁纸中心"));center.dismiss();}
}
