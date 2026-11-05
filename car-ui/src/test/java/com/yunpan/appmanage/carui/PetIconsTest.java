package com.yunpan.appmanage.carui;

import android.app.Dialog;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.stream.Stream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import org.junit.Rule;
import org.junit.Test;
import org.junit.rules.TemporaryFolder;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;
import org.robolectric.annotation.LooperMode;
import org.robolectric.shadows.ShadowDialog;
import static org.junit.Assert.*;

@RunWith(RobolectricTestRunner.class)
@Config(sdk = 28, manifest = Config.NONE, qualifiers = "w720dp-h960dp-xhdpi")
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@LooperMode(LooperMode.Mode.PAUSED)
public class PetIconsTest {
    @Rule public final TemporaryFolder temp = new TemporaryFolder();

    @Test public void originalSettingsPreviewPlaysAndSelectsGrokExpressions() throws Exception {
        R4RegressionTest fixture = new R4RegressionTest();
        fixture.setup();
        Path archive = temp.newFile("pet-assets.apk").toPath();
        Path assets = Path.of("src/main/assets");
        try (ZipOutputStream out = new ZipOutputStream(Files.newOutputStream(archive));
             Stream<Path> files = Files.walk(assets.resolve("carui/pets"))) {
            for (Path file : files.filter(Files::isRegularFile).toList()) {
                out.putNextEntry(new ZipEntry("assets/" + assets.relativize(file).toString().replace('\\', '/')));
                Files.copy(file, out);
                out.closeEntry();
            }
        }
        for (AssetManager manager : new AssetManager[]{fixture.activity.getAssets(), fixture.context.getAssets()}) {
            int cookie = (Integer) AssetManager.class.getMethod("addAssetPath", String.class)
                    .invoke(manager, archive.toAbsolutePath().toString());
            assertTrue(cookie > 0);
        }

        View root = fixture.fixture.inflate(fixture.context, "activity_float_button_set");
        ImageView preview = (ImageView) fixture.id(root, "v_ico");
        View save = fixture.id(root, "v_btn_yes");
        fixture.adapt(root, "activity_float_button_set");
        int[] selection = {0};
        PetIcons.addPicker(fixture.activity, id -> {
            selection[0] = id;
            assertTrue(PetIcons.apply(preview, id));
        });
        fixture.fixture.layout(fixture.activity.getWindow().getDecorView(), 1440, 1920);
        assertSame(save, fixture.id(root, "v_btn_yes"));
        assertTrue(text(root, "小狗").performClick());
        assertEquals(-1003, selection[0]);
        Drawable icon = preview.getDrawable();
        Bitmap first = render(icon);
        ((Runnable) icon).run();
        assertFalse("Visible icon advances to another frame", first.sameAs(render(icon)));
        preview.setVisibility(View.GONE);
        ((Runnable) icon).run();
        assertTrue("Hidden icon returns to its static frame", first.sameAs(render(icon)));
        preview.setVisibility(View.VISIBLE);
        fixture.capture(root, 1440, 1920, "r14-pets-settings.png");

        assertTrue(text(root, "Grok Bot\n32 款表情").performClick());
        Dialog dialog = ShadowDialog.getLatestDialog();
        View catalog = dialog.getWindow().getDecorView();
        assertNotNull(text(catalog, "生命周期"));
        assertNotNull(text(catalog, "情绪反应"));
        assertNotNull(text(catalog, "工作状态"));
        fixture.capture(catalog, dialog.getWindow().getAttributes().width,
                dialog.getWindow().getAttributes().height, "r14-grok-catalog.png");
        assertTrue(text(catalog, "思考中").performClick());
        assertEquals(-1130, selection[0]);
        assertFalse(dialog.isShowing());
        assertTrue(text(root, "Grok Bot\n思考中").isSelected());
        assertFalse(PetIcons.apply(preview, 1));
        assertFalse(text(root, "Grok Bot\n32 款表情").isSelected());
    }

    private static Bitmap render(Drawable icon) {
        Bitmap bitmap = Bitmap.createBitmap(160, 160, Bitmap.Config.ARGB_8888);
        icon.setBounds(0, 0, 160, 160);
        icon.draw(new Canvas(bitmap));
        return bitmap;
    }

    private static TextView text(View view, String label) {
        if (view instanceof TextView && label.contentEquals(((TextView) view).getText())) return (TextView) view;
        if (view instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) view;
            for (int i = 0; i < group.getChildCount(); i++) {
                TextView match = text(group.getChildAt(i), label);
                if (match != null) return match;
            }
        }
        return null;
    }
}
