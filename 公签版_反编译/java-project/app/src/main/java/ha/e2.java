package ha;

import android.text.Selection;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityApps;
import com.yunpan.appmanage.ui.ActivityAppsPermissions;
import com.yunpan.appmanage.ui.ActivityKeyMapLogcatSet;

/* loaded from: classes.dex */
public final /* synthetic */ class e2 implements View.OnKeyListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6932a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ KeyEvent.Callback f6933b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f6934c;

    public /* synthetic */ e2(KeyEvent.Callback callback, View view, int i10) {
        this.f6932a = i10;
        this.f6933b = callback;
        this.f6934c = view;
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i10, KeyEvent keyEvent) {
        View view2 = this.f6934c;
        KeyEvent.Callback callback = this.f6933b;
        switch (this.f6932a) {
            case 0:
                if (keyEvent.getAction() == 1) {
                    if (i10 != 66 && i10 != 20) {
                        if (i10 == 19) {
                            ((AppCompatSeekBar) view2).requestFocus();
                            break;
                        }
                    } else {
                        ((EditText) callback).requestFocus();
                        break;
                    }
                }
                break;
            case 1:
                if (i10 != 20) {
                    if (i10 == 19) {
                        if (keyEvent.getAction() == 0) {
                            ((ConstraintLayout) view2).requestFocus();
                            break;
                        }
                    }
                } else if (keyEvent.getAction() == 0) {
                    ((TextView) callback).requestFocus();
                    break;
                }
                break;
            case 2:
                fc fcVar = (fc) callback;
                fcVar.getClass();
                if (keyEvent.getAction() == 0) {
                    if (i10 != 20) {
                        if (i10 == 19) {
                            ((LinearLayout) view2).requestFocus();
                            break;
                        }
                    } else {
                        fcVar.f7050i.requestFocus();
                        break;
                    }
                }
                break;
            case 3:
                ad adVar = (ad) callback;
                adVar.getClass();
                if (keyEvent.getAction() == 1) {
                    TextView textView = (TextView) view2;
                    boolean z = adVar.f6757b;
                    if (i10 != 19) {
                        if (i10 != 20) {
                            if (i10 != 21) {
                                if (i10 == 22) {
                                    adVar.f6758c = g.b.l(adVar.f6758c, "右", new StringBuilder());
                                    adVar.b(textView);
                                    if (!z && adVar.f6758c.length() >= 4 && adVar.f6758c.equals(com.yunpan.appmanage.util.v.f4106a.f4125j)) {
                                        adVar.a();
                                        break;
                                    }
                                }
                            } else {
                                adVar.f6758c = g.b.l(adVar.f6758c, "左", new StringBuilder());
                                adVar.b(textView);
                                if (!z && adVar.f6758c.length() >= 4 && adVar.f6758c.equals(com.yunpan.appmanage.util.v.f4106a.f4125j)) {
                                    adVar.a();
                                    break;
                                }
                            }
                        } else {
                            adVar.f6758c = g.b.l(adVar.f6758c, "下", new StringBuilder());
                            adVar.b(textView);
                            if (!z && adVar.f6758c.length() >= 4 && adVar.f6758c.equals(com.yunpan.appmanage.util.v.f4106a.f4125j)) {
                                adVar.a();
                                break;
                            }
                        }
                    } else {
                        adVar.f6758c = g.b.l(adVar.f6758c, "上", new StringBuilder());
                        adVar.b(textView);
                        if (!z && adVar.f6758c.length() >= 4 && adVar.f6758c.equals(com.yunpan.appmanage.util.v.f4106a.f4125j)) {
                            adVar.a();
                            break;
                        }
                    }
                }
                break;
            case 4:
                ke keVar = (ke) callback;
                keVar.getClass();
                if (i10 != 20) {
                    if (i10 == 19) {
                        if (keyEvent.getAction() == 0) {
                            ((TvRecyclerView) view2).requestFocus();
                            break;
                        }
                    }
                } else if (keyEvent.getAction() == 0) {
                    keVar.findViewById(R.id.v_btn_yes).requestFocus();
                    break;
                }
                break;
            case 5:
                int i11 = ActivityApps.L;
                ActivityApps activityApps = (ActivityApps) callback;
                activityApps.getClass();
                if (i10 != 20) {
                    if (i10 == 21 && keyEvent.getAction() == 0 && Selection.getSelectionStart(activityApps.I.getText()) == 0 && Selection.getSelectionEnd(activityApps.I.getText()) == 0) {
                        ((TextView) view2).requestFocus();
                        break;
                    }
                } else if (keyEvent.getAction() == 0 && activityApps.F.b() > 0) {
                    activityApps.E.requestFocus();
                    break;
                }
                break;
            case 6:
                int i12 = ActivityAppsPermissions.K;
                ActivityAppsPermissions activityAppsPermissions = (ActivityAppsPermissions) callback;
                activityAppsPermissions.getClass();
                if (i10 != 20) {
                    if (i10 == 21 && keyEvent.getAction() == 0 && Selection.getSelectionStart(activityAppsPermissions.H.getText()) == 0 && Selection.getSelectionEnd(activityAppsPermissions.H.getText()) == 0) {
                        ((TextView) view2).requestFocus();
                        break;
                    }
                } else if (keyEvent.getAction() == 0 && activityAppsPermissions.F.b() > 0) {
                    activityAppsPermissions.E.requestFocus();
                    break;
                }
                break;
            default:
                int i13 = ActivityKeyMapLogcatSet.H;
                if (keyEvent.getAction() == 0) {
                    if (i10 != 20) {
                        if (i10 == 19) {
                            ((ConstraintLayout) view2).requestFocus();
                            break;
                        }
                    } else {
                        ((ConstraintLayout) callback).requestFocus();
                        break;
                    }
                }
                break;
        }
        return false;
    }
}
