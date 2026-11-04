package w;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.DragEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.EditText;
import android.widget.TextView;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public class u extends EditText implements x0.e0, x0.z, b1.x {

    /* renamed from: a, reason: collision with root package name */
    public final b5.i f17272a;

    /* renamed from: b, reason: collision with root package name */
    public final y0 f17273b;

    /* renamed from: c, reason: collision with root package name */
    public final b0 f17274c;

    /* renamed from: d, reason: collision with root package name */
    public final b1.v f17275d;

    /* renamed from: e, reason: collision with root package name */
    public final b0 f17276e;

    /* renamed from: f, reason: collision with root package name */
    public t f17277f;

    public u(Context context, AttributeSet attributeSet) {
        super(c3.a(context), attributeSet, R.attr.editTextStyle);
        b3.a(this, getContext());
        b5.i iVar = new b5.i(this);
        this.f17272a = iVar;
        iVar.h(attributeSet, R.attr.editTextStyle);
        y0 y0Var = new y0(this);
        this.f17273b = y0Var;
        y0Var.f(attributeSet, R.attr.editTextStyle);
        y0Var.b();
        this.f17274c = new b0(2, this);
        this.f17275d = new b1.v();
        b0 b0Var = new b0(this);
        this.f17276e = b0Var;
        b0Var.b(attributeSet, R.attr.editTextStyle);
        KeyListener keyListener = getKeyListener();
        if (keyListener instanceof NumberKeyListener) {
            return;
        }
        boolean zIsFocusable = super.isFocusable();
        boolean zIsClickable = super.isClickable();
        boolean zIsLongClickable = super.isLongClickable();
        int inputType = super.getInputType();
        KeyListener keyListenerA = b0Var.a(keyListener);
        if (keyListenerA == keyListener) {
            return;
        }
        super.setKeyListener(keyListenerA);
        super.setRawInputType(inputType);
        super.setFocusable(zIsFocusable);
        super.setClickable(zIsClickable);
        super.setLongClickable(zIsLongClickable);
    }

    private t getSuperCaller() {
        if (this.f17277f == null) {
            this.f17277f = new t(this);
        }
        return this.f17277f;
    }

    @Override // x0.z
    public final x0.i a(x0.i iVar) {
        return this.f17275d.a(this, iVar);
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        b5.i iVar = this.f17272a;
        if (iVar != null) {
            iVar.c();
        }
        y0 y0Var = this.f17273b;
        if (y0Var != null) {
            y0Var.b();
        }
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return d.b.w0(super.getCustomSelectionActionModeCallback());
    }

    @Override // x0.e0
    public ColorStateList getSupportBackgroundTintList() {
        b5.i iVar = this.f17272a;
        if (iVar != null) {
            return iVar.f();
        }
        return null;
    }

    @Override // x0.e0
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        b5.i iVar = this.f17272a;
        if (iVar != null) {
            return iVar.g();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f17273b.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f17273b.e();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        b0 b0Var;
        if (Build.VERSION.SDK_INT >= 28 || (b0Var = this.f17274c) == null) {
            return super.getTextClassifier();
        }
        TextClassifier textClassifier = (TextClassifier) b0Var.f17022c;
        return textClassifier == null ? r0.a((TextView) b0Var.f17021b) : textClassifier;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0057 A[PHI: r1
  0x0057: PHI (r1v14 java.lang.String[]) = (r1v9 java.lang.String[]), (r1v15 java.lang.String[]) binds: [B:30:0x006a, B:22:0x0055] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0071  */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        int i10;
        String[] strArrI;
        String[] stringArray;
        InputConnection fVar;
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.f17273b.getClass();
        y0.h(editorInfo, inputConnectionOnCreateInputConnection, this);
        nh.b.e0(editorInfo, inputConnectionOnCreateInputConnection, this);
        if (inputConnectionOnCreateInputConnection != null && (i10 = Build.VERSION.SDK_INT) <= 30 && (strArrI = x0.b1.i(this)) != null) {
            if (i10 >= 25) {
                editorInfo.contentMimeTypes = strArrI;
            } else {
                if (editorInfo.extras == null) {
                    editorInfo.extras = new Bundle();
                }
                editorInfo.extras.putStringArray("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES", strArrI);
                editorInfo.extras.putStringArray("android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES", strArrI);
            }
            a1.d dVar = new a1.d(0, this);
            if (i10 >= 25) {
                fVar = new a1.e(inputConnectionOnCreateInputConnection, dVar);
            } else {
                String[] strArr = a1.c.f69a;
                if (i10 >= 25) {
                    stringArray = editorInfo.contentMimeTypes;
                    if (stringArray != null) {
                        strArr = stringArray;
                    }
                    if (strArr.length != 0) {
                        fVar = new a1.f(inputConnectionOnCreateInputConnection, dVar);
                    }
                } else {
                    Bundle bundle = editorInfo.extras;
                    if (bundle != null) {
                        stringArray = bundle.getStringArray("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES");
                        if (stringArray == null) {
                            stringArray = editorInfo.extras.getStringArray("android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES");
                        }
                        if (stringArray != null) {
                        }
                    }
                    if (strArr.length != 0) {
                    }
                }
            }
            inputConnectionOnCreateInputConnection = fVar;
        }
        h5.m mVar = (h5.m) this.f17276e.f17022c;
        if (inputConnectionOnCreateInputConnection != null) {
            return ((ha.j2) mVar.f6611b).j(inputConnectionOnCreateInputConnection, editorInfo);
        }
        mVar.getClass();
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onDragEvent(DragEvent dragEvent) {
        Activity activity;
        int i10 = Build.VERSION.SDK_INT;
        boolean zA = false;
        if (i10 < 31 && i10 >= 24 && dragEvent.getLocalState() == null && x0.b1.i(this) != null) {
            Context context = getContext();
            while (true) {
                if (!(context instanceof ContextWrapper)) {
                    activity = null;
                    break;
                }
                if (context instanceof Activity) {
                    activity = (Activity) context;
                    break;
                }
                context = ((ContextWrapper) context).getBaseContext();
            }
            if (activity == null) {
                toString();
            } else if (dragEvent.getAction() != 1 && dragEvent.getAction() == 3) {
                zA = e0.a(dragEvent, this, activity);
            }
        }
        if (zA) {
            return true;
        }
        return super.onDragEvent(dragEvent);
    }

    @Override // android.widget.EditText, android.widget.TextView
    public final boolean onTextContextMenuItem(int i10) {
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 31 || x0.b1.i(this) == null || !(i10 == 16908322 || i10 == 16908337)) {
            return super.onTextContextMenuItem(i10);
        }
        ClipboardManager clipboardManager = (ClipboardManager) getContext().getSystemService("clipboard");
        ClipData primaryClip = clipboardManager == null ? null : clipboardManager.getPrimaryClip();
        if (primaryClip != null && primaryClip.getItemCount() > 0) {
            x0.f eVar = i11 >= 31 ? new x0.e(primaryClip, 1) : new x0.g(primaryClip, 1);
            eVar.d(i10 == 16908322 ? 0 : 1);
            x0.b1.r(this, eVar.build());
        }
        return true;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        b5.i iVar = this.f17272a;
        if (iVar != null) {
            iVar.i();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        b5.i iVar = this.f17272a;
        if (iVar != null) {
            iVar.j(i10);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        y0 y0Var = this.f17273b;
        if (y0Var != null) {
            y0Var.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        y0 y0Var = this.f17273b;
        if (y0Var != null) {
            y0Var.b();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(d.b.y0(callback, this));
    }

    public void setEmojiCompatEnabled(boolean z) {
        ((ha.j2) ((h5.m) this.f17276e.f17022c).f6611b).O(z);
    }

    @Override // android.widget.TextView
    public void setKeyListener(KeyListener keyListener) {
        super.setKeyListener(this.f17276e.a(keyListener));
    }

    @Override // x0.e0
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        b5.i iVar = this.f17272a;
        if (iVar != null) {
            iVar.o(colorStateList);
        }
    }

    @Override // x0.e0
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        b5.i iVar = this.f17272a;
        if (iVar != null) {
            iVar.p(mode);
        }
    }

    @Override // b1.x
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        y0 y0Var = this.f17273b;
        y0Var.l(colorStateList);
        y0Var.b();
    }

    @Override // b1.x
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        y0 y0Var = this.f17273b;
        y0Var.m(mode);
        y0Var.b();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i10) {
        super.setTextAppearance(context, i10);
        y0 y0Var = this.f17273b;
        if (y0Var != null) {
            y0Var.g(context, i10);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        b0 b0Var;
        if (Build.VERSION.SDK_INT >= 28 || (b0Var = this.f17274c) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            b0Var.f17022c = textClassifier;
        }
    }

    @Override // android.widget.EditText, android.widget.TextView
    public Editable getText() {
        return Build.VERSION.SDK_INT >= 28 ? super.getText() : super.getEditableText();
    }
}
