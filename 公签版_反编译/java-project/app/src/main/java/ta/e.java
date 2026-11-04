package ta;

import android.content.ContextWrapper;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.provider.Settings;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.KeyMapAccFindBean;
import com.yunpan.appmanage.service.AccService;
import ha.db;
import z7.s;

/* loaded from: classes.dex */
public final class e extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14862a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AccService f14863b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ e(AccService accService, Looper looper, int i10) {
        super(looper);
        this.f14862a = i10;
        this.f14863b = accService;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        String strReplace;
        switch (this.f14862a) {
            case 0:
                AccService accService = this.f14863b;
                try {
                    if (message.what == 506) {
                        accService.b((z7.o) message.obj);
                        Message messageObtain = Message.obtain();
                        messageObtain.what = message.what;
                        messageObtain.obj = message.obj;
                        messageObtain.arg1 = message.arg1;
                        accService.l.sendMessageDelayed(messageObtain, message.arg1 * 60000);
                        break;
                    }
                } catch (Exception e7) {
                    e7.printStackTrace();
                    return;
                }
                break;
            default:
                int i10 = message.what;
                int i11 = 1;
                AccService accService2 = this.f14863b;
                if (i10 == 0) {
                    accService2.G.removeMessages(1);
                    try {
                        accService2.b(accService2.Y.l(message.arg1).g().p("click"));
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    try {
                        accService2.I = -1;
                        accService2.K = 0L;
                        accService2.L = -1;
                        accService2.M = 0L;
                        accService2.N = -1;
                        accService2.O = 0L;
                        break;
                    } catch (Exception e11) {
                        e11.printStackTrace();
                        return;
                    }
                } else if (i10 == 1) {
                    accService2.G.removeMessages(0);
                    try {
                        accService2.P.add(Integer.valueOf(((KeyMapAccFindBean) accService2.Z.get(message.arg1)).keyCode));
                        accService2.b(accService2.Y.l(message.arg1).g().p("longClick"));
                    } catch (Exception e12) {
                        e12.printStackTrace();
                    }
                    try {
                        accService2.I = -1;
                        accService2.K = 0L;
                        accService2.L = -1;
                        accService2.M = 0L;
                        accService2.N = -1;
                        accService2.O = 0L;
                        break;
                    } catch (Exception e13) {
                        e13.printStackTrace();
                        return;
                    }
                } else if (i10 != -1) {
                    View viewFindViewById = null;
                    try {
                        if (i10 != -2) {
                            if (i10 != -3) {
                                if (i10 != -4) {
                                    if (i10 == -5) {
                                        accService2.N0.submit(new db(16, this));
                                        break;
                                    }
                                } else {
                                    v8.b.c(String.valueOf(607));
                                    v8.a aVar = new v8.a(accService2);
                                    aVar.f16661h = String.valueOf(607);
                                    aVar.j(R.layout.window_show_toast3);
                                    aVar.a(256);
                                    int i12 = Build.VERSION.SDK_INT;
                                    if (i12 < 28) {
                                        i11 = 0;
                                    }
                                    aVar.l(i11);
                                    int i13 = message.arg1;
                                    ContextWrapper contextWrapper = aVar.f16655b;
                                    if (contextWrapper != null) {
                                        Drawable drawable = i12 >= 21 ? contextWrapper.getDrawable(i13) : contextWrapper.getResources().getDrawable(i13);
                                        v8.h hVar = aVar.f16656c;
                                        if (hVar != null) {
                                            viewFindViewById = hVar.findViewById(R.id.v_ico);
                                        }
                                        ImageView imageView = (ImageView) viewFindViewById;
                                        if (imageView != null) {
                                            imageView.setImageDrawable(drawable);
                                        }
                                    }
                                    aVar.o(R.id.v_msg, (String) message.obj);
                                    aVar.r(1500);
                                    aVar.t();
                                    break;
                                }
                            } else {
                                v8.b.c(String.valueOf(message.obj));
                                break;
                            }
                        } else {
                            v8.b.c(String.valueOf(607));
                            s sVar = (s) message.obj;
                            v8.a aVar2 = new v8.a(accService2);
                            aVar2.f16661h = String.valueOf(607);
                            aVar2.j(R.layout.window_show_toast2);
                            aVar2.a(256);
                            if (Build.VERSION.SDK_INT < 28) {
                                i11 = 0;
                            }
                            aVar2.l(i11);
                            float fE = sVar.o("size").e();
                            v8.h hVar2 = aVar2.f16656c;
                            if (hVar2 != null) {
                                viewFindViewById = hVar2.findViewById(R.id.v_msg);
                            }
                            TextView textView = (TextView) viewFindViewById;
                            if (textView != null) {
                                textView.setTextSize(2, fE);
                            }
                            aVar2.o(R.id.v_msg, sVar.o("str1").i());
                            aVar2.r(sVar.o("time").e());
                            aVar2.t();
                            break;
                        }
                    } catch (Exception unused) {
                        return;
                    }
                } else if (Build.VERSION.SDK_INT < 24) {
                    String string = Settings.Secure.getString(accService2.getContentResolver(), "enabled_accessibility_services");
                    if (string != null && !string.isEmpty()) {
                        if (string.contains(accService2.getPackageName() + "/")) {
                            String str = accService2.getPackageName() + "/" + AccService.class.getName();
                            if (string.contains(str)) {
                                strReplace = string.replace(str, "");
                            } else {
                                strReplace = string.replace(accService2.getPackageName() + "/" + AccService.class.getName().substring(accService2.getPackageName().length()), "");
                            }
                            String strReplace2 = strReplace.replace("::", ":");
                            if (strReplace2.startsWith(":")) {
                                strReplace2 = strReplace2.substring(1);
                            }
                            if (Settings.Secure.putString(accService2.getContentResolver(), "enabled_accessibility_services", strReplace2)) {
                                Settings.Secure.putInt(accService2.getContentResolver(), "accessibility_enabled", 1);
                                break;
                            }
                        }
                    }
                } else {
                    accService2.disableSelf();
                    break;
                }
                break;
        }
    }
}
