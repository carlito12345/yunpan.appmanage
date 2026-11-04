package wa;

import android.os.Build;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.hsae.autosdk.core.NoConst;
import com.yunpan.appmanage.base.AppStart;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public final class u {
    public int A;
    public boolean B;
    public boolean C;
    public boolean D;
    public boolean E;
    public boolean F;
    public boolean G;
    public boolean H;
    public boolean I;
    public boolean J;
    public boolean K;
    public int L;
    public z7.o M;
    public String N;
    public String O;
    public boolean P;
    public boolean Q;
    public boolean R;
    public boolean S;
    public boolean T;
    public int U;
    public boolean V;
    public boolean W;
    public String X;
    public boolean Y;
    public String Z;

    /* renamed from: a, reason: collision with root package name */
    public File f17729a;

    /* renamed from: a0, reason: collision with root package name */
    public String f17730a0;

    /* renamed from: b, reason: collision with root package name */
    public z7.s f17731b;

    /* renamed from: b0, reason: collision with root package name */
    public boolean f17732b0;

    /* renamed from: c, reason: collision with root package name */
    public final SimpleDateFormat f17733c;

    /* renamed from: c0, reason: collision with root package name */
    public boolean f17734c0;

    /* renamed from: d, reason: collision with root package name */
    public AppStart f17735d;

    /* renamed from: d0, reason: collision with root package name */
    public boolean f17736d0;

    /* renamed from: e, reason: collision with root package name */
    public boolean f17737e;

    /* renamed from: e0, reason: collision with root package name */
    public boolean f17738e0;

    /* renamed from: f, reason: collision with root package name */
    public boolean f17739f;

    /* renamed from: f0, reason: collision with root package name */
    public boolean f17740f0;

    /* renamed from: g, reason: collision with root package name */
    public long f17741g;

    /* renamed from: g0, reason: collision with root package name */
    public long f17742g0;

    /* renamed from: h, reason: collision with root package name */
    public boolean f17743h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f17744i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f17745j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f17746k;
    public long l;

    /* renamed from: m, reason: collision with root package name */
    public int f17747m;

    /* renamed from: n, reason: collision with root package name */
    public int f17748n;

    /* renamed from: o, reason: collision with root package name */
    public int f17749o;

    /* renamed from: p, reason: collision with root package name */
    public long f17750p;

    /* renamed from: q, reason: collision with root package name */
    public int f17751q;
    public int r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f17752s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f17753t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f17754u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f17755v;

    /* renamed from: w, reason: collision with root package name */
    public final HashSet f17756w;

    /* renamed from: x, reason: collision with root package name */
    public Set f17757x;

    /* renamed from: y, reason: collision with root package name */
    public Set f17758y;
    public int z;

    public u() {
        this.f17731b = null;
        this.f17733c = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        this.f17737e = false;
        this.f17739f = false;
        this.f17741g = 0;
        this.f17743h = false;
        this.f17744i = false;
        this.f17745j = true;
        this.f17746k = true;
        this.l = 0;
        this.f17747m = 50;
        this.f17748n = 2;
        this.f17749o = 1;
        this.f17750p = 0;
        this.f17751q = NoConst.RECORDING_TIME_INTERVAL;
        this.r = NoConst.RECORDING_TIME_INTERVAL;
        this.f17752s = false;
        this.f17753t = false;
        this.f17754u = false;
        this.f17755v = false;
        this.f17756w = new HashSet();
        this.f17757x = new HashSet();
        this.f17758y = new HashSet();
        this.z = 40;
        this.A = 40;
        this.B = false;
        this.C = false;
        this.D = false;
        this.E = false;
        this.F = false;
        this.G = false;
        this.H = false;
        this.I = false;
        this.J = true;
        this.K = false;
        this.L = 4;
        this.M = new z7.o();
        this.N = "";
        this.O = "";
        this.P = true;
        this.Q = true;
        this.R = true;
        this.S = false;
        this.T = false;
        this.U = 1;
        this.V = false;
        this.W = true;
        this.X = "";
        this.Y = false;
        this.Z = "";
        this.f17730a0 = "";
        this.f17732b0 = false;
        this.f17734c0 = false;
        this.f17736d0 = false;
        this.f17738e0 = true;
        this.f17740f0 = true;
        this.f17742g0 = 0;
    }

    public static u a() {
        return t.f17728a;
    }

    public final void b(AppStart r62) {
        this.f17735d = r62;
        File r63 = new File(this.f17735d.getFilesDir().getAbsolutePath(), "AutoInit.json");
        this.f17729a = r63;
        if (r63.exists() == false) goto L220;
    L8:
        this.f17742g0 = this.f17729a.lastModified();
        StringBuilder r64 = new StringBuilder();
        BufferedReader r12 = new BufferedReader(new FileReader(this.f17729a));     // Catch: IOException -> L13 FileNotFoundException -> L15
    L10:
        String r22 = r12.readLine();     // Catch: IOException -> L13 FileNotFoundException -> L15
        if (r22 == null) goto L17;
        r64.append(r22);     // Catch: IOException -> L13 FileNotFoundException -> L15
        r64.append(SignParameters.NEW_LINE);     // Catch: IOException -> L13 FileNotFoundException -> L15
        goto L10
    L17:
        r12.close();     // Catch: IOException -> L13 FileNotFoundException -> L15
    L21:
        String r65 = r64.toString();
        if (r65.isEmpty() == false) goto L25;
        this.f17731b = new z7.s();     // Catch: Exception -> L109
        goto L197
    L25:
        this.f17731b = d.b.b0(r65).g();     // Catch: Exception -> L109
    L197:
        this.f17741g = this.f17731b.o("BootStartTaskRunTime").h();     // Catch: Exception -> L110
    L232:
        this.l = this.f17731b.o("AppCloseTime").h();     // Catch: Exception -> L111
    L218:
        this.f17737e = this.f17731b.o("RebootAccessibility").b();     // Catch: Exception -> L112
    L262:
        this.f17739f = this.f17731b.o("CoverAccessibility").b();     // Catch: Exception -> L113
    L248:
        this.f17743h = this.f17731b.o("BootStartTaskSpecialDevice").b();     // Catch: Exception -> L114
    L252:
        this.f17744i = this.f17731b.o("BootStartTaskScreenOn").b();     // Catch: Exception -> L115
    L179:
        this.f17745j = this.f17731b.o("BootStartTaskUserPresent").b();     // Catch: Exception -> L116
    L169:
        this.f17746k = this.f17731b.o("BootStartTaskBroadcast").b();     // Catch: Exception -> L117
    L212:
        this.f17747m = this.f17731b.o("BootStartTask_boot_delay").e();     // Catch: Exception -> L118
    L185:
        this.f17748n = this.f17731b.o("BootStartTask_load_delay").e();     // Catch: Exception -> L119
    L234:
        this.f17749o = this.f17731b.o("BootStartTask_ScreenOffToOnNot_Time").e();     // Catch: Exception -> L120
    L222:
        this.f17750p = this.f17731b.o("ScreenOff_Time").h();     // Catch: Exception -> L121
    L264:
        this.f17751q = this.f17731b.o("KeyMapAccInterval").e();     // Catch: Exception -> L122
    L266:
        this.r = this.f17731b.o("KeyMapLogcatInterval").e();     // Catch: Exception -> L123
    L254:
        this.f17753t = this.f17731b.o("DebugBootStart").b();     // Catch: Exception -> L124
    L181:
        this.f17754u = this.f17731b.o("DebugLogcatKeymap").b();     // Catch: Exception -> L125
    L171:
        this.f17755v = this.f17731b.o("DebugLogcatAdb").b();     // Catch: Exception -> L126
    L199:
        this.C = this.f17731b.o("KeepAlive_FrontDeskNotice").b();     // Catch: Exception -> L127
    L187:
        this.z = this.f17731b.o("AutoTaskSafetyProtectionTwoCount").e();     // Catch: Exception -> L128
    L236:
        this.A = this.f17731b.o("FuseProtectionLogcatCount").e();     // Catch: Exception -> L129
    L224:
        this.B = this.f17731b.o("KeepAlive_HiddenFront").b();     // Catch: Exception -> L130
    L226:
        this.D = this.f17731b.o("AutoTaskCloseShowToast").b();     // Catch: Exception -> L131
    L268:
        this.E = this.f17731b.o("AutoTaskStartAutoStartTask").b();     // Catch: Exception -> L132
    L256:
        this.F = this.f17731b.o("AutoTask_ScreenOnOff_AccService").b();     // Catch: Exception -> L133
    L183:
        this.G = this.f17731b.o("AutoHideFloatingWindow").b();     // Catch: Exception -> L134
    L163:
        this.H = this.f17731b.o("AutoTask_error_close_restart").b();     // Catch: Exception -> L135
    L201:
        this.I = this.f17731b.o("AutoTask_error_close_execAutoStartTask").b();     // Catch: Exception -> L136
    L189:
        this.J = this.f17731b.o("LogcatKeymap_BootStartTaskRunDelay").b();     // Catch: Exception -> L137
    L238:
        this.K = this.f17731b.o("LogcatKeymap_ScreenOnOff").b();     // Catch: Exception -> L138
    L240:
        this.L = this.f17731b.o("LogcatKeymap_LogLevel").e();     // Catch: Exception -> L139
    L228:
        this.M = this.f17731b.o("AutoTask_app_show_app_close").f();     // Catch: Exception -> L140
    L270:
        this.f17752s = this.f17731b.o("IsCannotStartApp").b();     // Catch: Exception -> L141
    L258:
        this.N = this.f17731b.o("AutoRotationHorizontal").i();     // Catch: Exception -> L142
    L173:
        this.O = this.f17731b.o("AutoRotationVertical").i();     // Catch: Exception -> L143
    L165:
        this.P = this.f17731b.o("AutoRotationEmergencyOne").b();     // Catch: Exception -> L144
    L203:
        this.Q = this.f17731b.o("AutoRotationEmergencyTwo").b();     // Catch: Exception -> L145
    L191:
        this.R = this.f17731b.o("AutoRotationEmergencyThree").b();     // Catch: Exception -> L146
    L193:
        this.S = this.f17731b.o("AutoRotationGlobalHorizontal").b();     // Catch: Exception -> L147
    L242:
        this.T = this.f17731b.o("AutoRotationGlobalVertical").b();     // Catch: Exception -> L148
    L230:
        this.U = this.f17731b.o("AutoRotationDefault").e();     // Catch: Exception -> L149
    L272:
        this.Y = this.f17731b.o("AutoClick_DESKTOP_SELECT").b();     // Catch: Exception -> L150
    L244:
        this.Z = this.f17731b.o("AutoClick_DESKTOP_SELECT_NAME").i();     // Catch: Exception -> L151
    L175:
        this.f17730a0 = this.f17731b.o("AutoClick_DESKTOP_SELECT_NAME2").i();     // Catch: Exception -> L152
    L167:
        this.V = this.f17731b.o("AutoClick_USB_OTG_AUTHORIZED").b();     // Catch: Exception -> L153
    L205:
        this.W = this.f17731b.o("AutoClick_USB_OTG_AUTHORIZED_BOOTSTART").b();     // Catch: Exception -> L154
    L207:
        this.X = this.f17731b.o("AutoClick_USB_OTG_AUTHORIZED_CANCEL").i();     // Catch: Exception -> L155
    L195:
        this.f17732b0 = this.f17731b.o("AutoClick_AllowReadLogcat").b();     // Catch: Exception -> L74
    L216:
        this.f17734c0 = this.f17731b.o("BootTaskDetectionBootTime").b();     // Catch: Exception -> L156
    L260:
        this.f17736d0 = this.f17731b.o("BootTaskPreventRepeatedLaunches").b();     // Catch: Exception -> L157
    L246:
        this.f17738e0 = this.f17731b.o("DetectionBootUnableToEnterDesktop").b();     // Catch: Exception -> L158
    L250:
        this.f17740f0 = this.f17731b.o("BootTaskWaitingSystemLoading").b();     // Catch: Exception -> L159
    L81:
        HashSet r66 = this.f17756w;
        r66.clear();
        int r13 = 0;
        String[] r23 = this.f17731b.o("MemoryCleanKillFree").i().split(",");     // Catch: Exception -> L160
        int r32 = 0;
    L83:
        if (r32 >= r23.length) goto L90;
        if (r23[r32].isEmpty() == true) goto L89;
        r66.add(r23[r32]);     // Catch: Exception -> L160
    L89:
        r32 = r32 + 1;
    L90:
        this.f17757x.clear();
        String[] r67 = this.f17731b.o("GN_AUDIO_NOTICE_EXCLUDED_APPS").i().split(",");     // Catch: Exception -> L161
        int r24 = 0;
    L92:
        if (r24 >= r67.length) goto L99;
        if (r67[r24].isEmpty() == true) goto L98;
        this.f17757x.add(r67[r24]);     // Catch: Exception -> L161
    L98:
        r24 = r24 + 1;
    L99:
        this.f17758y.clear();
        String[] r68 = this.f17731b.o("GN_AUDIO_SIGNA_EXCLUDED_APPS").i().split(",");     // Catch: Exception -> L162
    L101:
        if (r13 >= r68.length) goto L288;
        if (r68[r13].isEmpty() == true) goto L107;
        this.f17758y.add(r68[r13]);     // Catch: Exception -> L162
    L107:
        r13 = r13 + 1;
        goto L101
    L288:
        return;
    L108:
        return;
    L75:
        if (Build.VERSION.SDK_INT < 33) goto L216;
        this.f17732b0 = true;
        goto L216
    L15:
        e = move-exception;
        e.printStackTrace();
    L13:
        e = move-exception;
        e.printStackTrace();
        goto L21
    L220:
        this.f17729a.getParentFile().mkdirs();     // Catch: Exception -> L6
        this.f17729a.createNewFile();     // Catch: Exception -> L6
    L6:
        e = move-exception;
        e.printStackTrace();
        goto L8
    }

    public final void c() {
        if (this.f17742g0 == this.f17729a.lastModified()) goto L9;
        t.f17728a.b(this.f17735d);     // Catch: Exception -> L6
        return;
    L9:
        return;
    }

    public final void d(long r32) {
        this.l = r32;     // Catch: Exception -> L5
        this.f17731b.l("AppCloseTime", Long.valueOf(r32));     // Catch: Exception -> L5
    L3:
        i();
    }

    public final void e(String r32) {
        this.N = r32;     // Catch: Exception -> L5
        this.f17731b.m("AutoRotationHorizontal", r32);     // Catch: Exception -> L5
    L3:
        i();
    }

    public final void f(String r32) {
        this.O = r32;     // Catch: Exception -> L5
        this.f17731b.m("AutoRotationVertical", r32);     // Catch: Exception -> L5
    L3:
        i();
    }

    public final void g(long r32) {
        if (this.f17753t == false) goto L9;
        w.c("保存执行任务时间");
    L9:
        this.f17741g = r32;     // Catch: Exception -> L8
        this.f17731b.l("BootStartTaskRunTime", Long.valueOf(r32));     // Catch: Exception -> L8
    L6:
        i();
    }

    public final void h(boolean r32) {
        this.f17743h = r32;     // Catch: Exception -> L5
        this.f17731b.k("BootStartTaskSpecialDevice", Boolean.valueOf(r32));     // Catch: Exception -> L5
    L3:
        i();
    }

    public final void i() {
        BufferedWriter r12 = new BufferedWriter(new FileWriter(this.f17729a));     // Catch: IOException -> L4
        r12.write(this.f17731b.toString());     // Catch: IOException -> L4
        r12.close();     // Catch: IOException -> L4
        return;
    L4:
        e = move-exception;
        e.printStackTrace();
    }

    public final void j() {
        StringBuilder r02 = new StringBuilder();     // Catch: Exception -> L15
        Iterator r12 = this.f17756w.iterator();     // Catch: Exception -> L15
    L4:
        if (r12.hasNext() == false) goto L10;
        String r22 = (String) r12.next();     // Catch: Exception -> L15
        if (r22.isEmpty() == true) goto L4;
        r02.append(r22);     // Catch: Exception -> L15
        r02.append(",");     // Catch: Exception -> L15
        goto L4
    L10:
        if (r02.length() <= 0) goto L12;
        r02.deleteCharAt(r02.length() - 1);     // Catch: Exception -> L15
    L12:
        this.f17731b.m("MemoryCleanKillFree", r02.toString());     // Catch: Exception -> L15
    L13:
        i();
        ta.m.e(this.f17735d);
    }
}