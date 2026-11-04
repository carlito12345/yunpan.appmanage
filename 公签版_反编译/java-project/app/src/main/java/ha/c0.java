package ha;

import android.text.Selection;
import android.view.KeyEvent;
import android.view.View;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.yunpan.appmanage.ui.ActivityClean;
import com.yunpan.appmanage.ui.ActivityDownload;
import com.yunpan.appmanage.ui.ActivityKeyMapAccSet;
import com.yunpan.appmanage.ui.ActivityKeyMapLogcatSet;
import com.yunpan.appmanage.ui.ActivityKeyMapNissanSet;
import java.io.PrintStream;

/* loaded from: classes.dex */
public final /* synthetic */ class c0 implements View.OnKeyListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6832a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ KeyEvent.Callback f6833b;

    public /* synthetic */ c0(KeyEvent.Callback callback, int i10) {
        this.f6832a = i10;
        this.f6833b = callback;
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i10, KeyEvent keyEvent) {
        int length;
        KeyEvent.Callback callback = this.f6833b;
        switch (this.f6832a) {
            case 0:
                f0 f0Var = (f0) callback;
                f0Var.getClass();
                if (i10 != 19) {
                    return false;
                }
                if (keyEvent.getAction() == 0) {
                    f0Var.f7001k.requestFocus();
                }
                return true;
            case 1:
                o5 o5Var = (o5) callback;
                o5Var.getClass();
                if (i10 == 20) {
                    if (keyEvent.getAction() == 0) {
                        if (p000if.a.X(o5Var.f7520h)) {
                            o5Var.f7523k.requestFocus();
                        } else {
                            o5Var.f7522j.requestFocus();
                        }
                    }
                } else if (i10 != 19) {
                    return false;
                }
                return true;
            case 2:
                z5 z5Var = (z5) callback;
                z5Var.getClass();
                if (i10 == 20) {
                    if (keyEvent.getAction() == 0) {
                        z5Var.l.requestFocus();
                    }
                } else if (i10 == 19) {
                    if (keyEvent.getAction() == 0) {
                        z5Var.f8149x.requestFocus();
                    }
                } else {
                    if (i10 != 66) {
                        if (i10 != 22 || keyEvent.getAction() != 0 || Selection.getSelectionEnd(z5Var.B.getText()) != z5Var.B.getText().length()) {
                            return false;
                        }
                        z5Var.l.requestFocus();
                        return false;
                    }
                    if (keyEvent.getAction() == 0) {
                        z5Var.l.requestFocus();
                    }
                }
                return true;
            case 3:
                f7 f7Var = (f7) callback;
                f7Var.getClass();
                if (keyEvent.getAction() != 0 || i10 != 20 || Selection.getSelectionStart(f7Var.f7027h.getText()) != (length = f7Var.f7027h.getText().length()) || Selection.getSelectionEnd(f7Var.f7027h.getText()) != length) {
                    return false;
                }
                f7Var.f7029j.requestFocus();
                return true;
            case 4:
                r7 r7Var = (r7) callback;
                r7Var.getClass();
                return (i10 == 20 && keyEvent.getAction() == 1 && r7Var.f7688i.b() > 0) ? false : true;
            case 5:
                nb nbVar = (nb) callback;
                nbVar.getClass();
                if (keyEvent.getAction() != 0) {
                    return false;
                }
                if (i10 == 19) {
                    if (nbVar.f7480k.b() > 0) {
                        nbVar.f7479j.requestFocus();
                        return false;
                    }
                    nbVar.f7477h.requestFocus();
                    return false;
                }
                if (i10 == 21) {
                    PrintStream printStream = System.out;
                    Selection.getSelectionStart(nbVar.f7487v.getText());
                    Selection.getSelectionEnd(nbVar.f7487v.getText());
                    printStream.getClass();
                    if (Selection.getSelectionStart(nbVar.f7487v.getText()) != 0 || Selection.getSelectionEnd(nbVar.f7487v.getText()) != 0) {
                        return false;
                    }
                    nbVar.f7482n.requestFocus();
                } else {
                    if (i10 != 22 || Selection.getSelectionStart(nbVar.f7487v.getText()) != nbVar.f7487v.getText().length() || Selection.getSelectionEnd(nbVar.f7487v.getText()) != nbVar.f7487v.getText().length()) {
                        return false;
                    }
                    nbVar.l.requestFocus();
                }
                return true;
            case 6:
                ge geVar = (ge) callback;
                geVar.getClass();
                if (i10 != 20 && i10 != 66) {
                    return false;
                }
                if (keyEvent.getAction() == 0) {
                    geVar.f7115m.requestFocus();
                }
                return true;
            case 7:
                if (i10 == 20) {
                    if (keyEvent.getAction() == 0) {
                        ((TvRecyclerView) callback).requestFocus();
                    }
                } else if (i10 != 19) {
                    return false;
                }
                return true;
            case 8:
                int i11 = ActivityClean.M;
                ActivityClean activityClean = (ActivityClean) callback;
                activityClean.getClass();
                if (i10 == 19) {
                    s1.g.Z(301, view);
                } else if (i10 == 20) {
                    s1.g.Z(302, view);
                } else if (i10 == 21) {
                    if (activityClean.E.b() > 0) {
                        activityClean.D.requestFocus();
                    } else {
                        s1.g.W(301, view);
                    }
                } else {
                    if (i10 != 22) {
                        return false;
                    }
                    s1.g.W(302, view);
                }
                return true;
            case 9:
                int i12 = ActivityDownload.P0;
                ActivityDownload activityDownload = (ActivityDownload) callback;
                activityDownload.getClass();
                if (i10 == 20) {
                    if (keyEvent.getAction() == 0) {
                        activityDownload.E.requestFocus();
                    }
                } else if (i10 == 19) {
                    if (keyEvent.getAction() == 0) {
                        kh.e.b().f("up");
                    }
                } else if (i10 == 66) {
                    if (keyEvent.getAction() == 0) {
                        activityDownload.E.setSelection(0);
                        activityDownload.E.requestFocus();
                    }
                } else {
                    if (i10 != 21 || keyEvent.getAction() != 0 || Selection.getSelectionStart(activityDownload.H.getText()) != 0 || Selection.getSelectionEnd(activityDownload.H.getText()) != 0 || activityDownload.D.getItemCount() <= 0) {
                        return false;
                    }
                    activityDownload.D.requestFocus();
                }
                return true;
            case 10:
                int i13 = ActivityKeyMapAccSet.E;
                ActivityKeyMapAccSet activityKeyMapAccSet = (ActivityKeyMapAccSet) callback;
                activityKeyMapAccSet.getClass();
                if (i10 != 20) {
                    return false;
                }
                if (keyEvent.getAction() == 0) {
                    activityKeyMapAccSet.D.requestFocus();
                }
                return true;
            case 11:
                int i14 = ActivityKeyMapLogcatSet.H;
                ActivityKeyMapLogcatSet activityKeyMapLogcatSet = (ActivityKeyMapLogcatSet) callback;
                activityKeyMapLogcatSet.getClass();
                if (i10 != 20) {
                    return false;
                }
                if (keyEvent.getAction() == 0) {
                    activityKeyMapLogcatSet.D.requestFocus();
                }
                return true;
            default:
                int i15 = ActivityKeyMapNissanSet.E;
                ActivityKeyMapNissanSet activityKeyMapNissanSet = (ActivityKeyMapNissanSet) callback;
                activityKeyMapNissanSet.getClass();
                if (i10 != 20) {
                    return false;
                }
                if (keyEvent.getAction() == 0) {
                    activityKeyMapNissanSet.D.requestFocus();
                }
                return true;
        }
    }
}
