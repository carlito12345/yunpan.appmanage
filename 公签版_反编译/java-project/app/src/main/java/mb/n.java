package mb;

import android.os.Build;
import android.text.DynamicLayout;
import android.text.Editable;
import android.text.Layout;
import android.text.Selection;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public final class n {

    /* renamed from: c, reason: collision with root package name */
    public static final ThreadLocal f11099c = new ThreadLocal();

    /* renamed from: a, reason: collision with root package name */
    public final Editable f11100a;

    /* renamed from: b, reason: collision with root package name */
    public final DynamicLayout f11101b;

    public n() throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        Editable editableNewEditable = Editable.Factory.getInstance().newEditable("");
        this.f11100a = editableNewEditable;
        if (Build.VERSION.SDK_INT > 28) {
            this.f11101b = DynamicLayout.Builder.obtain(editableNewEditable, new TextPaint(), 1073741823).setIncludePad(true).setLineSpacing(0.0f, 0.0f).setTextDirection(TextDirectionHeuristics.FIRSTSTRONG_LTR).setAlignment(Layout.Alignment.ALIGN_NORMAL).build();
            return;
        }
        DynamicLayout dynamicLayout = new DynamicLayout(editableNewEditable, new TextPaint(), 1073741823, Layout.Alignment.ALIGN_NORMAL, 0.0f, 0.0f, true);
        this.f11101b = dynamicLayout;
        try {
            Field declaredField = Layout.class.getDeclaredField("mTextDir");
            declaredField.setAccessible(true);
            declaredField.set(dynamicLayout, TextDirectionHeuristics.FIRSTSTRONG_LTR);
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    public static n a() {
        ThreadLocal threadLocal = f11099c;
        n nVar = (n) threadLocal.get();
        if (nVar != null) {
            return nVar;
        }
        n nVar2 = new n();
        threadLocal.set(nVar2);
        return nVar2;
    }

    public final int b(int i10, h hVar) {
        int iMax = Math.max(0, i10 - 64);
        int i11 = i10 - iMax;
        int iMin = Math.min(hVar.f11076c, i10 + 65);
        Editable editable = this.f11100a;
        editable.append((CharSequence) hVar, iMax, iMin);
        Selection.setSelection(editable, Math.min(i11, editable.length()));
        Selection.moveLeft(editable, this.f11101b);
        int selectionStart = Selection.getSelectionStart(editable);
        editable.clear();
        Selection.removeSelection(editable);
        return selectionStart + iMax;
    }
}
