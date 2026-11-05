package com.yunpan.appmanage.carui;

import android.app.Dialog;
import android.content.*;
import android.content.ClipboardManager;
import android.graphics.Rect;
import android.text.*;
import android.view.*;
import android.widget.*;
import org.junit.*;
import org.junit.runner.RunWith;
import org.robolectric.*;
import org.robolectric.annotation.*;
import org.robolectric.shadows.ShadowSettings;
import static org.junit.Assert.*;

/** Real binary XML and original widget identities; synthetic values never invoke real pairing. */
@RunWith(RobolectricTestRunner.class)
@Config(sdk=28,manifest=Config.NONE,qualifiers="w720dp-h960dp-xhdpi")
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@LooperMode(LooperMode.Mode.PAUSED)
public class R13RegressionTest {
    final R4RegressionTest f=new R4RegressionTest();
    @Before public void setup()throws Exception{f.setup();}
    @After public void cleanup(){AdbPairUi.destroyed(f.activity);}
    TextView text(View v,String label){if(v instanceof TextView&&label.contentEquals(((TextView)v).getText()))return(TextView)v;if(v instanceof ViewGroup)for(int i=0;i<((ViewGroup)v).getChildCount();i++){TextView found=text(((ViewGroup)v).getChildAt(i),label);if(found!=null)return found;}return null;}
    void theme(String value){f.context.getSharedPreferences("car_ui_v1",0).edit().putString("theme",value).putBoolean("dark",value.equals("cyan")).commit();}
    void font(float scale){android.content.res.Configuration c=new android.content.res.Configuration(f.context.getResources().getConfiguration());c.fontScale=scale;f.context.getResources().updateConfiguration(c,f.context.getResources().getDisplayMetrics());}
    @Test public void advancedTextInputsKeepValuesListenersAndUsableBounds()throws Exception{
        for(float font:new float[]{1f,1.3f})for(String theme:new String[]{"warm","cyan","mono"}){
            font(font);theme(theme);View root=f.fixture.inflate(f.context,"dialog_set");
            EditText su=(EditText)f.id(root,"v_edit_su"),password=(EditText)f.id(root,"v_edit_adb_shell_password");
            su.setText("su");password.setText("synthetic-test-value");final int[] edits={0};
            TextWatcher watcher=new TextWatcher(){public void beforeTextChanged(CharSequence s,int a,int c,int n){}public void onTextChanged(CharSequence s,int a,int b,int c){}public void afterTextChanged(Editable e){edits[0]++;}};su.addTextChangedListener(watcher);password.addTextChangedListener(watcher);
            Dialog dialog=new LegacyResourceTest.SettingsDialog(f.context,f.resource("layout","dialog_set"));dialog.setOwnerActivity(f.activity);dialog.setContentView(root);dialog.show();CarUi.dialog(dialog);
            assertNotNull(text(root,"无线调试配对助手"));assertNotNull(text(root,"高级"));text(root,"高级").performClick();
            for(int[] size:new int[][]{{1440,1920},{1920,1440}}){
                f.fixture.layout(f.activity.getWindow().getDecorView(),size[0],size[1]);CarUi.dialog(dialog);
                View decor=dialog.getWindow().getDecorView();WindowManager.LayoutParams p=dialog.getWindow().getAttributes();f.fixture.layout(decor,p.width,p.height);
                for(EditText input:new EditText[]{su,password}){assertSame(input,f.id(root,CarUi.name(input)));assertTrue("Input has its own full-width row",input.getWidth()>CarUi.dp(f.context,220));assertTrue("Input is touch sized",input.getHeight()>=CarUi.dp(f.context,54));assertTrue(input.getRight()<=((View)input.getParent()).getWidth());Rect line=new Rect();input.getLayout().getLineBounds(0,line);assertTrue(input.getHeight()-input.getCompoundPaddingTop()-input.getCompoundPaddingBottom()>=line.height());}
                if(font==1f)f.capture(decor,p.width,p.height,"r13-settings-"+theme+"-"+size[0]+".png");
            }
            assertEquals("su",su.getText().toString());assertEquals("synthetic-test-value",password.getText().toString());assertEquals(0,edits[0]);su.setText("custom-su");password.setText("changed-test-value");assertEquals("Original edit listeners remain",2,edits[0]);dialog.dismiss();
        }
    }
    @Test @Config(sdk=30) public void pairingValidationClipboardAndOriginalCallbacksSurvive()throws Exception{
        View root=f.fixture.inflate(f.context,"activity_window_input_adb_pair");EditText code=(EditText)f.id(root,"et_pair");TextView yes=(TextView)f.id(root,"v_btn_yes"),status=(TextView)f.id(root,"v_ts");final int[] submits={0};yes.setOnClickListener(v->submits[0]++);
        f.adapt(root,"activity_window_input_adb_pair");assertSame(code,f.id(root,"et_pair"));assertSame(yes,f.id(root,"v_btn_yes"));assertFalse(yes.isEnabled());assertEquals(CarUi.skin(f.context).ink,status.getCurrentTextColor());
        code.setText("012345");assertEquals("012345",code.getText().toString());assertTrue(yes.isEnabled());yes.performClick();assertEquals(1,submits[0]);yes.setText("连接中");assertFalse(yes.isEnabled());yes.setText("确定");status.setText("未找到端口，请重新尝试");assertTrue(yes.isEnabled());assertSame(status,f.id(root,"v_ts"));
        code.setText("12345");assertFalse(yes.isEnabled());code.setText("1234567");assertFalse(yes.isEnabled());
        assertNotEquals(CarUi.skin(f.context).ink,status.getCurrentTextColor());status.setText("正在匹配中");assertEquals(CarUi.skin(f.context).ink,status.getCurrentTextColor());status.setText("配对成功，请返回");assertEquals(CarUi.skin(f.context).ink,status.getCurrentTextColor());
        ClipboardManager clipboard=(ClipboardManager)f.context.getSystemService(Context.CLIPBOARD_SERVICE);clipboard.setPrimaryClip(ClipData.newPlainText("test","012 345"));text(root,"粘贴配对码").performClick();assertEquals("012345",code.getText().toString());assertTrue(yes.isEnabled());
        clipboard.setPrimaryClip(ClipData.newPlainText("test","192.168.1.1:5555"));text(root,"粘贴配对码").performClick();assertEquals("012345",code.getText().toString());assertEquals(1,submits[0]);
        for(float scale:new float[]{1f,1.3f})for(String theme:new String[]{"warm","cyan","mono"})for(int[] size:new int[][]{{1440,1920},{1920,1440}}){font(scale);theme(theme);AdbPairUi.themeChanged();f.fixture.layout(root,size[0],size[1]);assertTrue(code.getWidth()-code.getCompoundPaddingLeft()-code.getCompoundPaddingRight()>code.getPaint().measureText("012345"));assertTrue(code.getHeight()>=CarUi.dp(f.context,54));if(scale==1f)f.capture(root,size[0],size[1],"r13-pair-input-"+theme+"-"+size[0]+".png");}
    }
    @Test @Config(sdk=30) public void overlayPermissionRequestPreservesInputAndCanBeDeclined()throws Exception{
        ShadowSettings.setCanDrawOverlays(false);View root=f.fixture.inflate(f.context,"activity_window_input_adb_pair");EditText code=(EditText)f.id(root,"et_pair");f.adapt(root,"activity_window_input_adb_pair");code.setText("012345");text(root,"悬浮填写并打开设置").performClick();
        Intent request=Shadows.shadowOf(f.activity).getNextStartedActivity();assertEquals(android.provider.Settings.ACTION_MANAGE_OVERLAY_PERMISSION,request.getAction());AdbPairUi.resumed(f.activity);assertSame(code,f.id(root,"et_pair"));assertEquals("012345",code.getText().toString());assertNotNull(text(root,"尚未允许悬浮显示。可在此输入，或使用原通知栏输入方式。"));
    }
    @Test @Config(sdk=30) public void settingsProvidesDirectPairingEntryWithoutUsingRootGatedTool()throws Exception{
        View root=f.fixture.inflate(f.context,"dialog_set");Dialog dialog=new LegacyResourceTest.SettingsDialog(f.context,f.resource("layout","dialog_set"));dialog.setOwnerActivity(f.activity);dialog.setContentView(root);dialog.show();CarUi.dialog(dialog);text(root,"连接").performClick();text(root,"无线调试配对助手").performClick();Intent next=Shadows.shadowOf(f.activity).getNextStartedActivity();assertEquals("com.yunpan.appmanage.ui.ActivityWindowInputAdbPair",next.getComponent().getClassName());assertFalse(dialog.isShowing());
    }
    @Test @Config(sdk=30) public void notificationFallbackStartsOriginalServiceAndOpensSettings()throws Exception{
        View root=f.fixture.inflate(f.context,"activity_window_input_adb_pair");f.adapt(root,"activity_window_input_adb_pair");text(root,"通知栏输入并打开设置").performClick();Intent service=Shadows.shadowOf(f.activity.getApplication()).getNextStartedService();assertNotNull(service);assertEquals("com.yunpan.appmanage.service.AdbPairService",service.getComponent().getClassName());Intent settings=Shadows.shadowOf(f.activity).getNextStartedActivity();assertEquals(android.provider.Settings.ACTION_APPLICATION_DEVELOPMENT_SETTINGS,settings.getAction());assertEquals(View.VISIBLE,text(root,"停止配对通知").getVisibility());text(root,"停止配对通知").performClick();assertEquals(View.GONE,text(root,"停止配对通知").getVisibility());
    }
    @Test @Config(sdk=30) public void pairingGuideKeepsOriginalActionsAndBounds()throws Exception{
        for(String theme:new String[]{"warm","cyan","mono"}){
            theme(theme);View root=f.fixture.inflate(f.context,"dialog_adb_pair");View original=f.id(root,"v_btn_setver"),connect=f.id(root,"v_btn_connect");final int[] taps={0};original.setOnClickListener(v->taps[0]++);
            Dialog dialog=new LegacyResourceTest.SettingsDialog(f.context,f.resource("layout","dialog_adb_pair"));dialog.setOwnerActivity(f.activity);dialog.setContentView(root);dialog.show();CarUi.dialog(dialog);assertSame(original,f.id(root,"v_btn_setver"));assertSame(connect,f.id(root,"v_btn_connect"));original.performClick();assertEquals(1,taps[0]);
            for(int[] size:new int[][]{{1440,1920},{1920,1440}}){f.fixture.layout(f.activity.getWindow().getDecorView(),size[0],size[1]);CarUi.dialog(dialog);View decor=dialog.getWindow().getDecorView();WindowManager.LayoutParams p=dialog.getWindow().getAttributes();f.fixture.layout(decor,p.width,p.height);assertTrue(p.width<=size[0]);assertTrue(p.height<=size[1]);for(String id:new String[]{"v_btn_auto_enable_wifi_adb","v_btn_auto_port","v_btn_boyuel"})assertTrue(id+" touch height",f.id(root,id).getHeight()>=CarUi.dp(f.context,52));f.capture(decor,p.width,p.height,"r13-pair-guide-"+theme+"-"+size[0]+".png");}dialog.dismiss();
        }
    }
}
