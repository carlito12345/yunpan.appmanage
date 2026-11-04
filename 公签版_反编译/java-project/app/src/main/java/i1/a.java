package i1;

import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import androidx.emoji2.text.l;
import ha.j2;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* loaded from: classes.dex */
public final class a extends j2 {

    /* renamed from: b, reason: collision with root package name */
    public final EditText f8404b;

    /* renamed from: c, reason: collision with root package name */
    public final j f8405c;

    public a(EditText editText) {
        super(7);
        this.f8404b = editText;
        j jVar = new j(editText);
        this.f8405c = jVar;
        editText.addTextChangedListener(jVar);
        if (b.f8407b == null) {
            synchronized (b.f8406a) {
                try {
                    if (b.f8407b == null) {
                        b.f8407b = new b();
                    }
                } finally {
                }
            }
        }
        editText.setEditableFactory(b.f8407b);
    }

    @Override // ha.j2
    public final void O(boolean z) {
        j jVar = this.f8405c;
        if (jVar.f8424c != z) {
            if (jVar.f8423b != null) {
                l lVarA = l.a();
                i iVar = jVar.f8423b;
                lVarA.getClass();
                s1.g.l(iVar, "initCallback cannot be null");
                ReentrantReadWriteLock reentrantReadWriteLock = lVarA.f1112a;
                reentrantReadWriteLock.writeLock().lock();
                try {
                    lVarA.f1113b.remove(iVar);
                } finally {
                    reentrantReadWriteLock.writeLock().unlock();
                }
            }
            jVar.f8424c = z;
            if (z) {
                j.a(l.a().b(), jVar.f8422a);
            }
        }
    }

    @Override // ha.j2
    public final KeyListener c(KeyListener keyListener) {
        if (keyListener instanceof f) {
            return keyListener;
        }
        if (keyListener == null) {
            return null;
        }
        return keyListener instanceof NumberKeyListener ? keyListener : new f(keyListener);
    }

    @Override // ha.j2
    public final InputConnection j(InputConnection inputConnection, EditorInfo editorInfo) {
        return inputConnection instanceof c ? inputConnection : new c(this.f8404b, inputConnection, editorInfo);
    }
}
