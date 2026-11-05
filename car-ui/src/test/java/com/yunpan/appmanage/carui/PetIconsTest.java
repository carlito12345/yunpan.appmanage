package com.yunpan.appmanage.carui;

import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import java.lang.reflect.Field;
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

    @Test public void resizedPreviewUsesCurrentLayoutParamsAndGrokRotatesWithoutADialog() throws Exception {
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
        SeekBar size = (SeekBar) fixture.id(root, "v_seek_size");
        ViewGroup.LayoutParams originalParams = preview.getLayoutParams();
        size.setMax(100);
        size.setProgress(20);
        PetIcons.bindSizePreview(size, preview);
        View save = fixture.id(root, "v_btn_yes");
        fixture.adapt(root, "activity_float_button_set");
        int[] selection = {0};
        PetIcons.addPicker(fixture.activity, id -> {
            selection[0] = id;
            assertTrue(PetIcons.apply(preview, id));
        });
        fixture.fixture.layout(fixture.activity.getWindow().getDecorView(), 1440, 1920);
        assertSame(save, fixture.id(root, "v_btn_yes"));
        ViewGroup.LayoutParams currentParams = preview.getLayoutParams();
        assertNotSame("Themed layout reparents the preview", originalParams, currentParams);
        assertNotEquals(originalParams.getClass(), currentParams.getClass());
        for (int progress : new int[]{0, 1, 100, 37, 20}) {
            size.setProgress(progress);
            fixture.fixture.layout(fixture.activity.getWindow().getDecorView(), 1440, 1920);
            assertSame(currentParams, preview.getLayoutParams());
            assertEquals(progress * 5, preview.getWidth());
            assertEquals(progress * 5, preview.getHeight());
        }
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
        assertNull(ShadowDialog.getLatestDialog());
        TextView grok = text(root, "Grok Bot\n随机表情");
        assertTrue(grok.performClick());
        assertEquals(-1099, selection[0]);
        assertNull(ShadowDialog.getLatestDialog());
        assertTrue(grok.isSelected());
        Drawable random = preview.getDrawable();
        assertTrue(PetIcons.apply(preview, -1130));
        assertSame("An old expression ID resolves to the same random mode", random, preview.getDrawable());
        Field expression = random.getClass().getDeclaredField("expression");
        expression.setAccessible(true);
        int initial = expression.getInt(random);
        for (int frame = 0; frame < 47; frame++) ((Runnable) random).run();
        assertEquals(initial, expression.getInt(random));
        ((Runnable) random).run();
        assertNotEquals("Next expression differs after four complete loops", initial, expression.getInt(random));
        fixture.capture(root, 1440, 1920, "r15-grok-random.png");
        assertFalse(PetIcons.apply(preview, 1));
        assertFalse(grok.isSelected());
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
