package com.yunpan.appmanage.carui;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Looper;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.Robolectric;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.Shadows;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;
import org.robolectric.annotation.LooperMode;
import org.robolectric.shadows.ShadowWindowManagerGlobal;
import org.robolectric.util.ReflectionHelpers;
import static org.junit.Assert.*;

@RunWith(RobolectricTestRunner.class)
@Config(sdk=28, manifest=Config.NONE, qualifiers="w960dp-h540dp-land-xhdpi")
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@LooperMode(LooperMode.Mode.PAUSED)
public class RemoteNavigationTest {
    private final R4RegressionTest fixture = new R4RegressionTest();
    private BackActivity activity;
    private View root, history;
    private RecyclerView toolbar, historyList;

    public static class BackActivity extends CarHomeTest.PreviewActivity {
        int backs;
        @Override public void onBackPressed() { backs++; }
    }

    @Before public void setup() throws Exception {
        ReflectionHelpers.callStaticMethod(ShadowWindowManagerGlobal.class, "setInTouchMode",
                ReflectionHelpers.ClassParameter.from(boolean.class, false));
        activity = Robolectric.buildActivity(BackActivity.class).setup().get();
        fixture.activity = activity;
        fixture.context = fixture.fixture.apkContext(activity);
    }

    private void downloadPage(float fontScale, String... entries) {
        android.content.res.Configuration config = fixture.context.getResources().getConfiguration();
        config.fontScale = fontScale;
        fixture.context.getResources().updateConfiguration(config, fixture.context.getResources().getDisplayMetrics());
        root = fixture.fixture.inflate(fixture.context, "activity_download");
        for (String id : new String[]{"v_lay_qrcode", "v_lay_history", "v_help", "v_loading", "v_lay_load_more"}) {
            fixture.id(root, id).setVisibility(View.GONE);
        }
        toolbar = fixture.rows(root, "v_list_gn", "item_btn3", true, "打开", "历史", "扫码", "推送", "说明", "返回");
        fixture.rows(root, "v_list_down", "item_btn1", false);
        fixture.rows(root, "v_list_file", "item_btn1", false);
        history = fixture.id(root, "v_lay_history");
        historyList = fixture.rows(root, "v_list_history", "item_history", false, entries);
        fixture.adapt(root, "activity_download");
        layout();
        toolbar.getChildAt(1).setOnFocusChangeListener((view, focused) -> {
            if (focused) history.setVisibility(View.VISIBLE);
        });
    }

    private void layout() {
        View decor = activity.getWindow().getDecorView();
        for (int pass = 0; pass < 3; pass++) {
            decor.measure(View.MeasureSpec.makeMeasureSpec(1920, View.MeasureSpec.EXACTLY),
                    View.MeasureSpec.makeMeasureSpec(1080, View.MeasureSpec.EXACTLY));
            decor.layout(0, 0, 1920, 1080);
            leaveTouchMode(decor);
            decor.getViewTreeObserver().dispatchOnGlobalLayout();
            Shadows.shadowOf(Looper.getMainLooper()).idle();
        }
        leaveTouchMode(decor);
    }

    private static void leaveTouchMode(View decor) {
        // A hardware D-pad leaves touch mode before Android dispatches a directional key.
        if (decor.isInTouchMode()) {
            Object attachInfo = ReflectionHelpers.getField(decor, "mAttachInfo");
            if (attachInfo != null) ReflectionHelpers.setField(attachInfo, "mInTouchMode", false);
        }
    }

    private boolean event(long down, int action, int code, int repeat) {
        return activity.dispatchKeyEvent(new KeyEvent(down, SystemClock.uptimeMillis(), action, code, repeat));
    }

    private void press(int code) {
        long down = SystemClock.uptimeMillis();
        event(down, KeyEvent.ACTION_DOWN, code, 0);
        event(down, KeyEvent.ACTION_UP, code, 0);
        layout();
    }

    @Test public void landscapeKeepsTheSixOriginalCommandsAndHistoryUpDown() {
        downloadPage(1f, "最近记录", "较早记录", "旧记录");
        assertEquals(6, ((GridLayoutManager) toolbar.getLayoutManager()).getSpanCount());
        assertEquals(6, toolbar.getChildCount());
        for (int i = 1; i < 6; i++) {
            assertEquals(toolbar.getChildAt(0).getTop(), toolbar.getChildAt(i).getTop());
        }
        View opener = toolbar.getChildAt(1);
        assertTrue(opener.requestFocus());
        layout();
        press(KeyEvent.KEYCODE_DPAD_DOWN);
        assertSame(historyList.getChildAt(0), root.findFocus());
        assertSame(historyList.getChildAt(1), root.findFocus().focusSearch(View.FOCUS_DOWN));
        press(KeyEvent.KEYCODE_DPAD_UP);
        assertSame(opener, root.findFocus());
        assertEquals(View.VISIBLE, history.getVisibility());
    }

    @Test public void wrappedToolbarCannotTreatHistoryConfirmOrDownAsReturn() {
        downloadPage(1.3f, "最近记录", "较早记录");
        assertTrue(((GridLayoutManager) toolbar.getLayoutManager()).getSpanCount() < 6);
        View opener = toolbar.getChildAt(1);
        View returnButton = toolbar.getChildAt(5);
        int[] returns = new int[1], entryClicks = new int[1];
        returnButton.setOnClickListener(view -> returns[0]++);
        assertTrue(opener.requestFocus());
        layout();
        historyList.getChildAt(0).setOnClickListener(view -> entryClicks[0]++);

        long down = SystemClock.uptimeMillis();
        assertTrue(event(down, KeyEvent.ACTION_DOWN, KeyEvent.KEYCODE_DPAD_CENTER, 0));
        assertTrue(event(down, KeyEvent.ACTION_DOWN, KeyEvent.KEYCODE_DPAD_CENTER, 1));
        assertSame(opener, root.findFocus());
        assertTrue(event(down, KeyEvent.ACTION_UP, KeyEvent.KEYCODE_DPAD_CENTER, 0));
        layout();
        assertSame(historyList.getChildAt(0), root.findFocus());
        assertEquals(0, entryClicks[0]);
        press(KeyEvent.KEYCODE_DPAD_CENTER);
        assertEquals(1, entryClicks[0]);

        press(KeyEvent.KEYCODE_BACK);
        assertEquals(0, activity.backs);
        assertEquals(View.GONE, history.getVisibility());
        assertSame(opener, root.findFocus());
        press(KeyEvent.KEYCODE_DPAD_DOWN);
        assertEquals(View.VISIBLE, history.getVisibility());
        assertSame(historyList.getChildAt(0), root.findFocus());
        press(KeyEvent.KEYCODE_BACK);
        press(KeyEvent.KEYCODE_BACK);
        assertEquals(1, activity.backs);
        assertEquals(0, returns[0]);
    }

    @Test public void emptyHistoryKeepsFocusOnItsOwnCommand() {
        downloadPage(1.3f);
        View opener = toolbar.getChildAt(1);
        assertTrue(opener.requestFocus());
        press(KeyEvent.KEYCODE_DPAD_DOWN);
        assertEquals(View.VISIBLE, history.getVisibility());
        assertSame(opener, root.findFocus());
        assertEquals("暂无下载历史", ((TextView) fixture.id(history, "v_history_ts")).getText().toString());
        press(KeyEvent.KEYCODE_BACK);
        assertEquals(View.GONE, history.getVisibility());
        assertSame(opener, root.findFocus());
        assertEquals(0, activity.backs);
    }

    @Test public void downloadPreviewsShareTheWallpaperAndCoverTheTaskArea() throws Exception {
        CarUi.chooseTheme(fixture.context, "gd-glow", false);
        Appearance.Config appearance = new Appearance.Config();
        appearance.transparency = 60;
        Appearance.save(fixture.context, appearance);
        Wallpapers.Config config = new Wallpapers.Config();
        config.mode = "particles";
        config.still = true;
        Wallpapers.save(fixture.context, config);
        downloadPage(1f, "最近记录", "较早记录");
        ViewGroup content = activity.findViewById(android.R.id.content);
        LegacyUi.inheritWindowBackground(content);
        Wallpapers.mount(activity, content, false);
        WallpaperView wallpaper = Wallpapers.mounted(content);
        RecyclerView tasks = fixture.rows(root, "v_list_down", "item_btn1", false, "下载中");
        layout();
        assertTrue(tasks.getChildCount() > 0);
        View opener = toolbar.getChildAt(1);
        assertTrue(opener.requestFocus());
        press(KeyEvent.KEYCODE_DPAD_CENTER);
        assertSame(historyList.getChildAt(0), root.findFocus());
        assertFalse(tasks.isShown());
        assertNull(history.getBackground());
        assertEquals(previewPixel(history, wallpaper), previewPixel(history, content));
        TextView hint = (TextView) fixture.id(history, "v_history_ts");
        assertEquals(Color.WHITE, hint.getCurrentTextColor());
        TextView name = (TextView) fixture.id(historyList.getChildAt(0), "v_name");
        assertEquals(new CarUi.Skin("gd-glow", true).ink, name.getCurrentTextColor());
        fixture.capture(activity.getWindow().getDecorView(), 1920, 1080, "download-history-transparent.png");

        CarUi.chooseTheme(fixture.context, "gd-prism", true);
        CarUi.theme(content);
        layout();
        assertNull(history.getBackground());
        assertEquals(previewPixel(history, wallpaper), previewPixel(history, content));
        assertSame(historyList.getChildAt(0), root.findFocus());
        press(KeyEvent.KEYCODE_BACK);
        assertTrue(tasks.isShown());
        assertSame(opener, root.findFocus());

        View qr = fixture.id(root, "v_lay_qrcode");
        ImageView code = (ImageView) fixture.id(qr, "v_image_qrCode");
        ColorDrawable testCode = new ColorDrawable(Color.BLACK);
        code.setImageDrawable(testCode);
        assertPreviewOpens(2, qr);
        assertFalse(tasks.isShown());
        assertEquals(previewPixel(qr, wallpaper), previewPixel(qr, content));
        View tile = (View) code.getParent();
        assertEquals(tile.getWidth(), tile.getHeight());
        assertTrue(tile.getPaddingLeft() > 0);
        assertEquals(Color.WHITE, pixel(tile, tile.getPaddingLeft() / 2, tile.getHeight() / 2));
        assertSame(testCode, code.getDrawable());
        press(KeyEvent.KEYCODE_BACK);
        assertTrue(tasks.isShown());

        fixture.rows(root, "v_list_down", "item_btn1", false);
        layout();
        TextView empty = (TextView) ((ViewGroup) tasks.getParent()).getChildAt(1);
        assertEquals("暂无下载任务", empty.getText().toString());
        assertTrue(empty.isShown());
        View help = fixture.id(root, "v_help");
        assertPreviewOpens(4, help);
        assertFalse(empty.isShown());
        assertEquals(previewPixel(help, wallpaper), previewPixel(help, content));
        fixture.capture(activity.getWindow().getDecorView(), 1152, 2560, "download-help-transparent.png");
        press(KeyEvent.KEYCODE_BACK);
        assertTrue(empty.isShown());
    }

    private void assertPreviewOpens(int index, View pane) {
        View button = toolbar.getChildAt(index);
        button.setOnFocusChangeListener((view, focused) -> {
            if (focused) pane.setVisibility(View.VISIBLE);
        });
        assertTrue(button.requestFocus());
        layout();
        assertTrue(pane.isShown());
        assertNull(pane.getBackground());
    }

    private int previewPixel(View preview, View layer) {
        int[] pane = new int[2], origin = new int[2];
        preview.getLocationInWindow(pane);
        layer.getLocationInWindow(origin);
        return pixel(layer, pane[0] - origin[0] + 8,
                pane[1] - origin[1] + Math.round(preview.getHeight() * .7f));
    }

    private static int pixel(View layer, int x, int y) {
        Bitmap pixel = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(pixel);
        canvas.translate(-x, -y);
        layer.draw(canvas);
        int color = pixel.getPixel(0, 0);
        pixel.recycle();
        return color;
    }

    @Test public void helpAndQrPreviewsDoNotCloseOrFallThroughToReturnOnConfirm() {
        downloadPage(1.3f);
        View[] commands = { toolbar.getChildAt(4), toolbar.getChildAt(2) };
        String[] ids = { "v_help", "v_lay_qrcode" };
        for (int i = 0; i < commands.length; i++) {
            View item = commands[i], preview = fixture.id(root, ids[i]);
            assertTrue(item.requestFocus());
            preview.setVisibility(View.VISIBLE);
            item.setOnClickListener(view -> preview.setVisibility(View.GONE));
            layout();
            press(KeyEvent.KEYCODE_DPAD_CENTER);
            press(KeyEvent.KEYCODE_DPAD_DOWN);
            assertEquals(View.VISIBLE, preview.getVisibility());
            assertSame(item, root.findFocus());
            press(KeyEvent.KEYCODE_BACK);
            assertEquals(View.GONE, preview.getVisibility());
            assertEquals(0, activity.backs);
        }
    }

    @Test public void shellQrPreviewKeepsItsFocusUntilItIsDismissed() {
        root = fixture.fixture.inflate(fixture.context, "activity_shell");
        View qr = fixture.id(root, "v_qrCode");
        qr.setVisibility(View.GONE);
        RecyclerView commands = fixture.rows(root, "v_list_btn", "item_shell", true, "扫码输入", "返回");
        fixture.adapt(root, "activity_shell");
        assertTrue("Shell toolbar uses preview navigation", ((ViewGroup) root).getChildAt(0) instanceof PreviewNavigation);
        layout();
        View scan = commands.getChildAt(0);
        scan.setOnFocusChangeListener((view, focused) -> qr.setVisibility(focused ? View.VISIBLE : View.GONE));
        scan.setOnClickListener(view -> qr.setVisibility(View.GONE));
        assertTrue(scan.requestFocus());
        qr.setVisibility(View.VISIBLE);
        press(KeyEvent.KEYCODE_DPAD_CENTER);
        assertEquals(View.VISIBLE, qr.getVisibility());
        assertSame(scan, root.findFocus());
        press(KeyEvent.KEYCODE_BACK);
        assertEquals(View.GONE, qr.getVisibility());
        assertEquals(0, activity.backs);
    }

    @Test public void networkTaskCenterGetsFocusAndBackClosesItBeforeLeavingNetwork() {
        View network = fixture.fixture.inflate(fixture.context, "fragment_file_wl");
        View opener = fixture.id(network, "v_btn_task"), panel = fixture.id(network, "v_task_lay");
        RecyclerView tasks = fixture.rows(network, "v_task", "item_btn1", false, "传输任务");
        fixture.rows(network, "v_file1", "item_file", false, "云端文件");
        fixture.rows(network, "v_file2", "item_file", false, "本地文件");
        opener.setOnClickListener(view -> panel.setVisibility(View.VISIBLE));
        LegacyUi.surface(network, fixture.resource("layout", "fragment_file_wl"));
        CarHome home = new CarHome(activity, new Bridge(activity, network) {
            @Override public void page(int index) {}
        }, network);
        activity.setContentView(home);
        layout();
        home.showPage(2);
        assertTrue(opener.requestFocus());
        press(KeyEvent.KEYCODE_DPAD_CENTER);
        assertEquals(View.VISIBLE, panel.getVisibility());
        assertSame(tasks.getChildAt(0), home.findFocus());
        assertTrue(home.back());
        assertEquals(View.GONE, panel.getVisibility());
        assertSame(opener, home.findFocus());
        assertEquals(2, home.currentPage());
    }

    @Test public void movingBackToRailAndRebuildingKeepTheActiveDestination() {
        FrameLayout legacy = new FrameLayout(activity);
        TextView control = new TextView(activity);
        control.setText("文件列表");
        control.setFocusable(true);
        control.setOnClickListener(view -> {});
        legacy.addView(control, new FrameLayout.LayoutParams(200, 100));
        CarHome home = new CarHome(activity, new Bridge(activity, legacy) {
            @Override public void page(int index) {}
        }, legacy);
        activity.setContentView(home);
        layout();
        home.showPage(1);
        assertTrue(control.requestFocus());
        View rail = home.focusSearch(control, View.FOCUS_LEFT);
        assertEquals("文件", rail.getContentDescription());
        assertTrue(rail.requestFocus());
        assertSame(rail, home.findFocus());
        home.refreshTheme();
        layout();
        assertNotNull("Rebuilt rail focus, touch mode = " + home.isInTouchMode(), home.findFocus());
        assertEquals("文件", home.findFocus().getContentDescription());
        assertSame(control, home.focusSearch(home.findFocus(), View.FOCUS_RIGHT));
    }
}
