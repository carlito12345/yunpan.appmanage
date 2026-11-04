package tb;

import a2.e0;
import android.app.ProgressDialog;
import android.content.Context;
import android.util.SparseIntArray;
import android.widget.Toast;
import com.yunpan.appmanage.R;
import io.github.rosemoe.sora.widget.CodeEditor;

/* loaded from: classes.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    public final CodeEditor f14999a;

    /* renamed from: b, reason: collision with root package name */
    public String f15000b;

    /* renamed from: c, reason: collision with root package name */
    public p f15001c;

    /* renamed from: d, reason: collision with root package name */
    public final o f15002d;

    /* renamed from: e, reason: collision with root package name */
    public Thread f15003e;

    /* renamed from: f, reason: collision with root package name */
    public sb.e f15004f;

    public r(CodeEditor codeEditor) {
        this.f14999a = codeEditor;
        codeEditor.l0(db.d.class, new db.m(2, this));
        this.f15002d = o.f14991a;
    }

    public final void a() {
        if (this.f15000b == null) {
            throw new IllegalStateException("pattern not set");
        }
    }

    public final void b() {
        Thread thread = this.f15003e;
        if (thread != null && thread.isAlive()) {
            this.f15003e.interrupt();
        }
        Thread thread2 = new Thread(new q(this, this.f14999a.getText(), this.f15001c, this.f15000b));
        this.f15003e = thread2;
        thread2.start();
    }

    public final int c() {
        sb.e eVar;
        a();
        mb.j cursor = this.f14999a.getCursor();
        if (!cursor.a()) {
            return -1;
        }
        int i10 = cursor.f11081c.f11056a;
        int i11 = cursor.f11082d.f11056a;
        if (!f() || (eVar = this.f15004f) == null) {
            return -1;
        }
        long jG = sb.h.g(i10, i11);
        int i12 = eVar.f14472b - 1;
        int i13 = 0;
        while (true) {
            if (i13 > i12) {
                break;
            }
            int i14 = (i13 + i12) >>> 1;
            long j10 = eVar.f14473c[i14];
            if (j10 >= jG) {
                if (j10 <= jG) {
                    i13 = i14;
                    break;
                }
                i12 = i14 - 1;
            } else {
                i13 = i14 + 1;
            }
        }
        if (i13 >= eVar.f14472b || eVar.c(i13) != jG) {
            return -1;
        }
        return i13;
    }

    public final void d() {
        sb.e eVar;
        a();
        if (!f() || (eVar = this.f15004f) == null) {
            return;
        }
        CodeEditor codeEditor = this.f14999a;
        int iD = eVar.d(codeEditor.getCursor().f11082d.f11056a);
        int i10 = eVar.f14472b;
        if (iD == i10) {
            iD = 0;
        }
        if (iD < i10) {
            long jC = eVar.c(iD);
            mb.b bVarZ = codeEditor.getText().n().z((int) (jC >> 32));
            mb.b bVarZ2 = codeEditor.getText().n().z((int) (jC & 4294967295L));
            this.f14999a.j0(bVarZ.f11057b, bVarZ.f11058c, bVarZ2.f11057b, bVarZ2.f11058c, 6, true);
        }
    }

    public final void e() {
        sb.e eVar;
        a();
        if (!f() || (eVar = this.f15004f) == null || eVar.f14472b == 0) {
            return;
        }
        CodeEditor codeEditor = this.f14999a;
        int iD = eVar.d(codeEditor.getCursor().f11081c.f11056a);
        if (iD == eVar.f14472b || ((int) (eVar.c(iD) >> 32)) >= iD) {
            iD--;
        }
        if (iD < 0) {
            iD = eVar.f14472b - 1;
        }
        if (iD < 0 || iD >= eVar.f14472b) {
            return;
        }
        long jC = eVar.c(iD);
        int i10 = (int) (4294967295L & jC);
        mb.b bVarZ = codeEditor.getText().n().z((int) (jC >> 32));
        mb.b bVarZ2 = codeEditor.getText().n().z(i10);
        this.f14999a.j0(bVarZ.f11057b, bVarZ.f11058c, bVarZ2.f11057b, bVarZ2.f11058c, 6, true);
    }

    public final boolean f() {
        Thread thread = this.f15003e;
        return thread == null || !thread.isAlive();
    }

    public final void g(final String str) {
        CodeEditor codeEditor = this.f14999a;
        if (codeEditor.N()) {
            a();
            if (!f()) {
                Context context = codeEditor.getContext();
                SparseIntArray sparseIntArray = cb.a.f2985a;
                int i10 = R.string.sora_editor_editor_search_busy;
                int i11 = sparseIntArray.get(R.string.sora_editor_editor_search_busy);
                if (i11 != 0) {
                    i10 = i11;
                }
                Toast.makeText(context, i10, 0).show();
                return;
            }
            Context context2 = codeEditor.getContext();
            SparseIntArray sparseIntArray2 = cb.a.f2985a;
            int i12 = R.string.sora_editor_replaceAll;
            int i13 = sparseIntArray2.get(R.string.sora_editor_replaceAll);
            if (i13 != 0) {
                i12 = i13;
            }
            String string = context2.getString(i12);
            int i14 = R.string.sora_editor_editor_search_replacing;
            int i15 = sparseIntArray2.get(R.string.sora_editor_editor_search_replacing);
            if (i15 != 0) {
                i14 = i15;
            }
            final ProgressDialog progressDialogShow = ProgressDialog.show(context2, string, context2.getString(i14), true, false);
            final sb.e eVar = this.f15004f;
            final p pVar = this.f15001c;
            final String str2 = this.f15000b;
            new Thread(new Runnable(pVar, str2, eVar, str, progressDialogShow) { // from class: tb.n

                /* renamed from: b, reason: collision with root package name */
                public final /* synthetic */ p f14987b;

                /* renamed from: c, reason: collision with root package name */
                public final /* synthetic */ sb.e f14988c;

                /* renamed from: d, reason: collision with root package name */
                public final /* synthetic */ String f14989d;

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ ProgressDialog f14990e;

                {
                    this.f14988c = eVar;
                    this.f14989d = str;
                    this.f14990e = progressDialogShow;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    p pVar2 = this.f14987b;
                    sb.e eVar2 = this.f14988c;
                    String str3 = this.f14989d;
                    ProgressDialog progressDialog = this.f14990e;
                    r rVar = this.f14986a;
                    CodeEditor codeEditor2 = rVar.f14999a;
                    try {
                        StringBuilder sbD = codeEditor2.getText().D();
                        int i16 = pVar2.f14993b;
                        int length = str3.length();
                        int i17 = 0;
                        for (int i18 = 0; i18 < eVar2.f14472b; i18++) {
                            long jC = eVar2.c(i18);
                            int i19 = (int) (jC >> 32);
                            int i20 = (int) (jC & 4294967295L);
                            rVar.f15002d.getClass();
                            sbD.replace(i19 + i17, i20 + i17, str3);
                            i17 += length - (i20 - i19);
                        }
                        codeEditor2.Z(new e0(rVar, sbD, progressDialog, 12));
                    } catch (Exception e7) {
                        codeEditor2.Z(new e0(rVar, e7, progressDialog, 13));
                    }
                }
            }).start();
        }
    }

    public final void h() {
        Thread thread = this.f15003e;
        if (thread != null && thread.isAlive()) {
            this.f15003e.interrupt();
        }
        this.f15003e = null;
        this.f15004f = null;
        this.f15000b = null;
        this.f15001c = null;
        CodeEditor codeEditor = this.f14999a;
        codeEditor.f8717i.a(new db.v(codeEditor));
    }
}
