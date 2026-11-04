package zb;

import android.util.SparseIntArray;
import db.c;
import io.github.rosemoe.sora.widget.CodeEditor;
import j$.util.Objects;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: c, reason: collision with root package name */
    public static final a f19542c = new a();

    /* renamed from: a, reason: collision with root package name */
    public final SparseIntArray f19543a = new SparseIntArray();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f19544b = new ArrayList();

    public a() {
        for (int i10 = 1; i10 <= 83; i10++) {
            SparseIntArray sparseIntArray = this.f19543a;
            int i11 = sparseIntArray.get(i10);
            switch (i10) {
                case 1:
                case 3:
                    i11 = -286331154;
                    break;
                case 2:
                case 45:
                    i11 = -11513776;
                    break;
                case 4:
                case 17:
                case 19:
                case 20:
                case 63:
                    i11 = -1;
                    break;
                case 5:
                case 64:
                    i11 = -13421773;
                    break;
                case 6:
                case 52:
                    i11 = 759124405;
                    break;
                case 7:
                    i11 = -581734914;
                    break;
                case 8:
                    i11 = -11309570;
                    break;
                case 9:
                    i11 = 268435456;
                    break;
                case 10:
                case 42:
                case 50:
                case 58:
                case 68:
                    i11 = -16777216;
                    break;
                case 11:
                    i11 = -2565928;
                    break;
                case 12:
                    i11 = -14210774;
                    break;
                case 13:
                case 18:
                case 30:
                case 39:
                case 40:
                case 57:
                    i11 = 0;
                    break;
                case 14:
                    i11 = -2236963;
                    break;
                case 15:
                case 38:
                case 70:
                case 71:
                    i11 = -6710887;
                    break;
                case 16:
                    i11 = -587202560;
                    break;
                case 21:
                    i11 = -14575885;
                    break;
                case 22:
                    i11 = -5723992;
                    break;
                case 23:
                    i11 = -16750890;
                    break;
                case 24:
                    i11 = -16744320;
                    break;
                case 25:
                    i11 = -11243910;
                    break;
                case 26:
                case 28:
                case 59:
                case 72:
                    i11 = -16537100;
                    break;
                case 27:
                    i11 = -2080517;
                    break;
                case 29:
                    i11 = -256;
                    break;
                case 31:
                    i11 = -288568116;
                    break;
                case 35:
                    i11 = -1426128896;
                    break;
                case 36:
                    i11 = -1426067200;
                    break;
                case 37:
                    i11 = 1711341329;
                    break;
                case 41:
                case 49:
                    i11 = 486539264;
                    break;
                case 43:
                    i11 = -11250604;
                    break;
                case 44:
                case 51:
                    i11 = -1118482;
                    break;
                case 46:
                    i11 = 1725816285;
                    break;
                case 47:
                    i11 = -1428300323;
                    break;
                case 48:
                    i11 = -3355444;
                    break;
                case 53:
                case 60:
                case 65:
                case 69:
                    i11 = -65794;
                    break;
                case 54:
                    i11 = -12434878;
                    break;
                case 55:
                    i11 = -10395295;
                    break;
                case 56:
                    i11 = -12409355;
                    break;
                case 62:
                    i11 = -1712394514;
                    break;
                case 66:
                    i11 = -7829368;
                    break;
                case 67:
                    i11 = -11687172;
                    break;
                case 73:
                    i11 = 1074684828;
                    break;
                case 74:
                    i11 = 1079465815;
                    break;
                case 75:
                    i11 = -12627531;
                    break;
                case 81:
                    i11 = -1593835521;
                    break;
                case 82:
                    i11 = 808661811;
                    break;
                case 83:
                    i11 = -1338821837;
                    break;
            }
            if (sparseIntArray.get(i10) != i11) {
                sparseIntArray.put(i10, i11);
                Iterator it = this.f19544b.iterator();
                while (it.hasNext()) {
                    CodeEditor codeEditor = (CodeEditor) ((WeakReference) it.next()).get();
                    if (codeEditor == null) {
                        it.remove();
                    } else {
                        codeEditor.f8717i.a(new c(codeEditor));
                        codeEditor.E1.a();
                        codeEditor.invalidate();
                    }
                }
            }
        }
    }

    public final void a(CodeEditor codeEditor) {
        Objects.requireNonNull(codeEditor);
        ArrayList arrayList = this.f19544b;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (((WeakReference) it.next()).get() == codeEditor) {
                return;
            }
        }
        arrayList.add(new WeakReference(codeEditor));
        codeEditor.f8717i.a(new c(codeEditor));
        codeEditor.E1.a();
        codeEditor.invalidate();
    }
}
