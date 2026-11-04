package androidx.activity;

import a2.g1;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import android.speech.tts.TextToSpeech;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.ListView;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.leanback.widget.SearchBar;
import androidx.leanback.widget.VerticalGridView;
import androidx.leanback.widget.g0;
import androidx.leanback.widget.picker.DatePicker;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import f2.u0;
import java.lang.ref.ReferenceQueue;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.locks.Lock;
import w.t1;
import x0.b1;
import x0.j0;

/* loaded from: classes.dex */
public final class h implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f797a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f798b;

    public /* synthetic */ h(int i10, Object obj) {
        this.f797a = i10;
        this.f798b = obj;
    }

    public ke.i a() {
        androidx.room.k kVar = (androidx.room.k) this.f798b;
        ke.i iVar = new ke.i();
        Cursor cursorQuery$default = androidx.room.p.query$default(kVar.f2409a, new g1("SELECT * FROM room_table_modification_log WHERE invalidated = 1;"), null, 2, null);
        while (cursorQuery$default.moveToNext()) {
            try {
                iVar.add(Integer.valueOf(cursorQuery$default.getInt(0)));
            } finally {
            }
        }
        qf.c.g(cursorQuery$default, null);
        ke.i iVarC = a9.o.c(iVar);
        if (!iVarC.f10269a.isEmpty()) {
            if (((androidx.room.k) this.f798b).f2415g == null) {
                throw new IllegalStateException("Required value was null.");
            }
            c4.e eVar = ((androidx.room.k) this.f798b).f2415g;
            if (eVar == null) {
                throw new IllegalArgumentException("Required value was null.");
            }
            eVar.f();
        }
        return iVarC;
    }

    /* JADX INFO: Infinite loop detected, blocks: 8, insns: 0 */
    @Override // java.lang.Runnable
    public final void run() throws SecurityException, IllegalArgumentException {
        Set setA;
        View childAt;
        boolean z;
        boolean z4;
        w.j jVar;
        switch (this.f797a) {
            case 0:
                try {
                    super/*android.app.Activity*/.onBackPressed();
                    return;
                } catch (IllegalStateException e7) {
                    if (!TextUtils.equals(e7.getMessage(), "Can not perform this action after onSaveInstanceState")) {
                        throw e7;
                    }
                    return;
                } catch (NullPointerException e10) {
                    if (!TextUtils.equals(e10.getMessage(), "Attempt to invoke virtual method 'android.os.Handler android.app.FragmentHostCallback.getHandler()' on a null object reference")) {
                        throw e10;
                    }
                    return;
                }
            case 1:
                ((androidx.leanback.widget.q) this.f798b).requestLayout();
                return;
            case 2:
                SearchBar searchBar = (SearchBar) ((g0) this.f798b).f1643b;
                searchBar.f1558j = true;
                searchBar.f1550b.requestFocus();
                return;
            case 3:
                Lock closeLock$room_runtime_release = ((androidx.room.k) this.f798b).f2409a.getCloseLock$room_runtime_release();
                closeLock$room_runtime_release.lock();
                try {
                    try {
                    } finally {
                        closeLock$room_runtime_release.unlock();
                        ((androidx.room.k) this.f798b).getClass();
                    }
                } catch (SQLiteException unused) {
                    setA = je.t.f9872a;
                } catch (IllegalStateException unused2) {
                    setA = je.t.f9872a;
                }
                if (((androidx.room.k) this.f798b).a() && ((androidx.room.k) this.f798b).f2413e.compareAndSet(true, false) && !((androidx.room.k) this.f798b).f2409a.inTransaction()) {
                    c4.a aVarR = ((d4.g) ((androidx.room.k) this.f798b).f2409a.getOpenHelper()).r();
                    aVarR.o();
                    try {
                        setA = a();
                        aVarR.n();
                        if (setA.isEmpty()) {
                            return;
                        }
                        androidx.room.k kVar = (androidx.room.k) this.f798b;
                        synchronized (kVar.f2417i) {
                            Iterator it = kVar.f2417i.iterator();
                            while (true) {
                                y.b bVar = (y.b) it;
                                if (bVar.hasNext()) {
                                    ((androidx.room.j) ((Map.Entry) bVar.next()).getValue()).a(setA);
                                }
                            }
                        }
                        return;
                    } finally {
                        aVarR.u();
                    }
                }
                return;
            case 4:
                androidx.viewpager2.adapter.f fVar = (androidx.viewpager2.adapter.f) this.f798b;
                fVar.f2469k = false;
                fVar.r();
                return;
            case 5:
                b1.g gVar = (b1.g) this.f798b;
                if (gVar.f2516p) {
                    boolean z10 = gVar.f2514m;
                    b1.a aVar = gVar.f2503a;
                    if (z10) {
                        gVar.f2514m = false;
                        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                        aVar.f2497e = jCurrentAnimationTimeMillis;
                        aVar.f2499g = -1L;
                        aVar.f2498f = jCurrentAnimationTimeMillis;
                        aVar.f2500h = 0.5f;
                    }
                    if ((aVar.f2499g > 0 && AnimationUtils.currentAnimationTimeMillis() > aVar.f2499g + aVar.f2501i) || !gVar.e()) {
                        gVar.f2516p = false;
                        return;
                    }
                    boolean z11 = gVar.f2515n;
                    ListView listView = gVar.f2505c;
                    if (z11) {
                        gVar.f2515n = false;
                        long jUptimeMillis = SystemClock.uptimeMillis();
                        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                        listView.onTouchEvent(motionEventObtain);
                        motionEventObtain.recycle();
                    }
                    if (aVar.f2498f == 0) {
                        throw new RuntimeException("Cannot compute scroll delta before calling start()");
                    }
                    long jCurrentAnimationTimeMillis2 = AnimationUtils.currentAnimationTimeMillis();
                    float fA = aVar.a(jCurrentAnimationTimeMillis2);
                    long j10 = jCurrentAnimationTimeMillis2 - aVar.f2498f;
                    aVar.f2498f = jCurrentAnimationTimeMillis2;
                    int i10 = (int) (j10 * ((fA * 4.0f) + ((-4.0f) * fA * fA)) * aVar.f2496d);
                    int i11 = Build.VERSION.SDK_INT;
                    t1 t1Var = gVar.r;
                    if (i11 >= 19) {
                        b1.h.b(t1Var, i10);
                    } else {
                        int firstVisiblePosition = t1Var.getFirstVisiblePosition();
                        if (firstVisiblePosition != -1 && (childAt = t1Var.getChildAt(0)) != null) {
                            t1Var.setSelectionFromTop(firstVisiblePosition, childAt.getTop() - i10);
                        }
                    }
                    WeakHashMap weakHashMap = b1.f17953a;
                    j0.m(listView, this);
                    return;
                }
                return;
            case 6:
                com.bumptech.glide.p pVar = (com.bumptech.glide.p) this.f798b;
                pVar.f3422c.h(pVar);
                return;
            case 7:
                ((View) this.f798b).setClickable(true);
                return;
            case 8:
                ((f1.d) this.f798b).m(0);
                return;
            case 9:
                Process.setThreadPriority(10);
                ((Runnable) this.f798b).run();
                return;
            case 10:
                v3.f fVar2 = (v3.f) this.f798b;
                fVar2.getClass();
                while (true) {
                    try {
                        fVar2.t((h5.b) ((ReferenceQueue) fVar2.f16475c).remove());
                    } catch (InterruptedException unused3) {
                        Thread.currentThread().interrupt();
                    }
                }
            case 11:
                u0 u0Var = (u0) this.f798b;
                for (f2.b1 b1Var : u0Var.f5410w) {
                    b1Var.r(true);
                    a1.i iVar = b1Var.f5212h;
                    if (iVar != null) {
                        iVar.C(b1Var.f5209e);
                        b1Var.f5212h = null;
                        b1Var.f5211g = null;
                    }
                }
                v3.f fVar3 = u0Var.f5403m;
                l2.o oVar = (l2.o) fVar3.f16475c;
                if (oVar != null) {
                    oVar.a();
                    fVar3.f16475c = null;
                }
                fVar3.f16476d = null;
                return;
            case 12:
                k4.g gVar2 = (k4.g) this.f798b;
                gVar2.setScrollState(0);
                gVar2.i();
                return;
            case 13:
                DatePicker datePicker = (DatePicker) this.f798b;
                int[] iArr = {datePicker.f1683w, datePicker.f1682v, datePicker.f1684x};
                boolean z12 = true;
                boolean z13 = true;
                for (int i12 = 2; i12 >= 0; i12--) {
                    int i13 = iArr[i12];
                    if (i13 >= 0) {
                        int i14 = DatePicker.E[i12];
                        ArrayList arrayList = datePicker.f11495c;
                        o1.e eVar = arrayList == null ? null : (o1.e) arrayList.get(i13);
                        if (z12) {
                            int i15 = datePicker.A.get(i14);
                            if (i15 != eVar.f11508b) {
                                eVar.f11508b = i15;
                                z = true;
                            }
                            z = false;
                        } else {
                            int actualMinimum = datePicker.C.getActualMinimum(i14);
                            if (actualMinimum != eVar.f11508b) {
                                eVar.f11508b = actualMinimum;
                                z = true;
                            }
                            z = false;
                        }
                        if (z13) {
                            int i16 = datePicker.B.get(i14);
                            if (i16 != eVar.f11509c) {
                                eVar.f11509c = i16;
                                z4 = true;
                            }
                            z4 = false;
                        } else {
                            int actualMaximum = datePicker.C.getActualMaximum(i14);
                            if (actualMaximum != eVar.f11509c) {
                                eVar.f11509c = actualMaximum;
                                z4 = true;
                            }
                            z4 = false;
                        }
                        boolean z14 = z | z4;
                        z12 &= datePicker.C.get(i14) == datePicker.A.get(i14);
                        z13 &= datePicker.C.get(i14) == datePicker.B.get(i14);
                        if (z14) {
                            datePicker.a(iArr[i12], eVar);
                        }
                        int i17 = iArr[i12];
                        int i18 = datePicker.C.get(i14);
                        o1.e eVar2 = (o1.e) datePicker.f11495c.get(i17);
                        if (eVar2.f11507a != i18) {
                            eVar2.f11507a = i18;
                            VerticalGridView verticalGridView = (VerticalGridView) datePicker.f11494b.get(i17);
                            if (verticalGridView != null) {
                                verticalGridView.setSelectedPosition(i18 - ((o1.e) datePicker.f11495c.get(i17)).f11508b);
                            }
                        }
                    }
                }
                return;
            case 14:
                wa.s.c().j(10002, ((pa.e) this.f798b).f12637h);
                return;
            case 15:
                CheckableImageButton checkableImageButton = ((TextInputLayout) this.f798b).f3676c.f13097g;
                checkableImageButton.performClick();
                checkableImageButton.jumpDrawablesToCurrentState();
                return;
            case 16:
                s.e eVar3 = (s.e) this.f798b;
                eVar3.a(true);
                eVar3.invalidateSelf();
                return;
            case 17:
                t1 t1Var2 = (t1) this.f798b;
                t1Var2.l = null;
                t1Var2.drawableStateChanged();
                return;
            case 18:
                ActionMenuView actionMenuView = ((Toolbar) this.f798b).f986a;
                if (actionMenuView == null || (jVar = actionMenuView.f954v) == null) {
                    return;
                }
                jVar.l();
                return;
            case 19:
                kf.f fVar4 = (kf.f) this.f798b;
                fVar4.f10290c = false;
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) fVar4.f10292e;
                f1.d dVar = bottomSheetBehavior.M;
                if (dVar != null && dVar.f()) {
                    fVar4.d(fVar4.f10289b);
                    return;
                } else {
                    if (bottomSheetBehavior.L == 2) {
                        bottomSheetBehavior.C(fVar4.f10289b);
                        return;
                    }
                    return;
                }
            case 20:
                wa.s sVar = (wa.s) this.f798b;
                TextToSpeech textToSpeech = sVar.M;
                if (textToSpeech == null) {
                    return;
                }
                try {
                    if (textToSpeech.isSpeaking()) {
                        sVar.f17709e.f3938j.postDelayed(sVar.N, 1000L);
                    } else {
                        sVar.q();
                    }
                    return;
                } catch (Exception unused4) {
                    return;
                }
            default:
                ya.h hVar = (ya.h) this.f798b;
                z7.o oVar2 = hVar.f19077y;
                if (oVar2 == null) {
                    return;
                }
                try {
                    hVar.f19064j = true;
                    hVar.f19055a.b(oVar2);
                    return;
                } catch (Exception unused5) {
                    return;
                }
        }
    }
}
