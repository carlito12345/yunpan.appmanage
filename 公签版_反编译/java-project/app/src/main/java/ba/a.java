package ba;

import com.yunpan.appmanage.bean.WpPathBean;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;
import x9.n5;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2670a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ n5 f2671b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ArrayList f2672c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ WpPathBean f2673d;

    public /* synthetic */ a(ArrayList arrayList, WpPathBean wpPathBean, n5 n5Var) {
        this.f2670a = 0;
        this.f2672c = arrayList;
        this.f2673d = wpPathBean;
        this.f2671b = n5Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x0379  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x037c  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x03b2  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x03ba  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x03be  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x049d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0127  */
    @Override // ec.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void g(mc.b bVar) throws Exception {
        String str;
        String str2;
        String str3;
        z7.s sVarG;
        String string;
        String str4;
        z7.s sVarG2;
        String str5;
        String string2;
        String str6;
        z7.s sVarG3;
        String str7;
        String str8 = "parentFileId";
        String strSubstring = "";
        WpPathBean wpPathBean = this.f2673d;
        ArrayList arrayList = this.f2672c;
        n5 n5Var = this.f2671b;
        switch (this.f2670a) {
            case 0:
                try {
                    z7.s sVar = new z7.s();
                    z7.o oVar = new z7.o();
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        oVar.j(((WpPathBean) it.next()).path);
                    }
                    sVar.j("fileIds", oVar);
                    sVar.m("parentId", wpPathBean.path);
                    z7.s sVarG4 = d.b.b0(s1.g.H(n5Var, "https://api.guangyapan.com/userres/v1/file/move_file", sVar.toString())).g();
                    if (!sVarG4.o("msg").i().toLowerCase().equals("success")) {
                        throw new Exception(sVarG4.o("msg").i());
                    }
                    bVar.b();
                    return;
                } catch (Exception e7) {
                    bVar.d(e7);
                    return;
                }
            case 1:
                z7.s sVar2 = new z7.s();
                z7.o oVar2 = new z7.o();
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    oVar2.j(((WpPathBean) it2.next()).path);
                }
                sVar2.j("fileIds", oVar2);
                sVar2.m("parentId", wpPathBean.path);
                try {
                    sVarG = d.b.b0(s1.g.H(n5Var, "https://api.guangyapan.com/userres/v1/file/copy_file", sVar2.toString())).g();
                } catch (Exception e10) {
                    String message = e10.getMessage();
                    if (message == null || message.isEmpty()) {
                        message = "失败";
                    }
                    str3 = message;
                }
                if (!sVarG.o("msg").i().toLowerCase().equals("success")) {
                    throw new Exception(sVarG.o("msg").i());
                }
                str3 = "";
                if (str3.isEmpty()) {
                    bVar.b();
                    return;
                } else {
                    android.support.v4.media.session.a.B(str3, bVar);
                    return;
                }
            case 2:
                StringBuilder sb2 = new StringBuilder();
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                sb2.append(kVar.X);
                sb2.append("/b/api/file/mod_pid?");
                sb2.append(qf.c.n("/b/api/file/mod_pid"));
                String string3 = sb2.toString();
                String str9 = kVar.W + "/?homeFilePath=" + ((WpPathBean) arrayList.get(0)).path;
                try {
                    JSONArray jSONArray = new JSONArray();
                    Iterator it3 = arrayList.iterator();
                    while (it3.hasNext()) {
                        WpPathBean wpPathBean2 = (WpPathBean) it3.next();
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("fileId", Integer.valueOf(wpPathBean2.path));
                        jSONArray.put(jSONObject);
                    }
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("RequestSource", (Object) null);
                    jSONObject2.put("event", "fileMove");
                    jSONObject2.put("fileIdList", jSONArray);
                    jSONObject2.put("operatePlace", 2);
                    jSONObject2.put("parentFileId", Integer.valueOf(wpPathBean.path));
                    string = jSONObject2.toString();
                } catch (Exception unused) {
                    string = "";
                }
                if (string.isEmpty()) {
                    str4 = "组包出错";
                } else {
                    String strR = qf.c.R(n5Var, string3, string, str9);
                    if (strR.isEmpty()) {
                        str4 = "请求出错";
                    } else {
                        try {
                            sVarG2 = d.b.b0(strR).g();
                        } catch (Exception unused2) {
                        }
                        if (sVarG2.o("code").e() == 0) {
                            str4 = "";
                        } else {
                            String strI = sVarG2.o("message").i();
                            if (strI != null) {
                                str4 = strI.isEmpty() ? "出错" : strI;
                            }
                        }
                    }
                }
                if (str4.isEmpty()) {
                    bVar.b();
                    return;
                } else {
                    android.support.v4.media.session.a.B(str4, bVar);
                    return;
                }
            case 3:
                String str10 = "Etag";
                StringBuilder sb3 = new StringBuilder();
                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                sb3.append(kVar2.X);
                sb3.append("/b/api/restful/goapi/v1/file/copy/async?");
                sb3.append(qf.c.n("/b/api/restful/goapi/v1/file/copy/async"));
                String string4 = sb3.toString();
                String str11 = kVar2.W + "/?homeFilePath=" + ((WpPathBean) arrayList.get(0)).path;
                try {
                    JSONArray jSONArray2 = new JSONArray();
                    Iterator it4 = arrayList.iterator();
                    while (it4.hasNext()) {
                        WpPathBean wpPathBean3 = (WpPathBean) it4.next();
                        JSONObject jSONObject3 = new JSONObject();
                        Iterator it5 = it4;
                        jSONObject3.put("driveId", 0);
                        if (wpPathBean3.jsonObject.o(str10) == null) {
                            try {
                                jSONObject3.put("etag", strSubstring);
                            } catch (Exception unused3) {
                                str5 = strSubstring;
                                string2 = str5;
                                if (string2.isEmpty()) {
                                }
                                if (str6.isEmpty()) {
                                }
                            }
                        } else {
                            jSONObject3.put("etag", wpPathBean3.jsonObject.o(str10).i());
                        }
                        String str12 = str10;
                        jSONObject3.put("fileId", wpPathBean3.jsonObject.o("FileId").h());
                        str5 = strSubstring;
                        try {
                            jSONObject3.put("fileName", wpPathBean3.jsonObject.o("FileName").i());
                            jSONObject3.put(str8, wpPathBean3.jsonObject.o("ParentFileId").h());
                            if (wpPathBean3.jsonObject.o("Size") == null) {
                                jSONObject3.put("size", 0);
                                str7 = str8;
                            } else {
                                str7 = str8;
                                jSONObject3.put("size", wpPathBean3.jsonObject.o("Size").h());
                            }
                            jSONObject3.put("type", wpPathBean3.jsonObject.o("Type").e());
                            jSONArray2.put(jSONObject3);
                            str10 = str12;
                            it4 = it5;
                            strSubstring = str5;
                            str8 = str7;
                        } catch (Exception unused4) {
                            string2 = str5;
                            if (string2.isEmpty()) {
                            }
                            if (str6.isEmpty()) {
                            }
                        }
                    }
                    str5 = strSubstring;
                    JSONObject jSONObject4 = new JSONObject();
                    jSONObject4.put("fileList", jSONArray2);
                    jSONObject4.put("targetFileId", Integer.valueOf(wpPathBean.path));
                    string2 = jSONObject4.toString();
                } catch (Exception unused5) {
                    str5 = strSubstring;
                }
                if (string2.isEmpty()) {
                    str6 = "组包出错";
                } else {
                    String strR2 = qf.c.R(n5Var, string4, string2, str11);
                    if (strR2.isEmpty()) {
                        str6 = "请求出错";
                    } else {
                        try {
                            sVarG3 = d.b.b0(strR2).g();
                        } catch (Exception unused6) {
                        }
                        if (sVarG3.o("code").e() == 0) {
                            str6 = str5;
                        } else {
                            String strI2 = sVarG3.o("message").i();
                            if (strI2 != null) {
                                str6 = strI2.isEmpty() ? "出错" : strI2;
                            }
                        }
                    }
                }
                if (str6.isEmpty()) {
                    bVar.b();
                    return;
                } else {
                    android.support.v4.media.session.a.B(str6, bVar);
                    return;
                }
            case 4:
                try {
                    String str13 = "uuid=" + n5Var.l + "&devType=6&devCode=" + n5Var.l + "&devModel=chrome&devVersion=140&appVersion=&timestamp=" + s1.g.q(Long.toString(System.currentTimeMillis())) + "&appToken=" + n5Var.f18300k + "&extra=2";
                    Iterator it6 = arrayList.iterator();
                    String strSubstring2 = "";
                    while (it6.hasNext()) {
                        WpPathBean wpPathBean4 = (WpPathBean) it6.next();
                        if (wpPathBean4.is_dir) {
                            strSubstring2 = strSubstring2 + wpPathBean4.path + ",";
                        } else {
                            strSubstring = strSubstring + wpPathBean4.path + ",";
                        }
                    }
                    if (!strSubstring.isEmpty()) {
                        strSubstring = strSubstring.substring(0, strSubstring.length() - 1);
                    }
                    if (!strSubstring2.isEmpty()) {
                        strSubstring2 = strSubstring2.substring(0, strSubstring2.length() - 1);
                    }
                    z7.s sVarG5 = d.b.b0(s1.g.I("https://api.feejii.com/app/file/folder/move?" + str13, "{\"fileIds\":\"" + strSubstring + "\",\"folderIds\":\"" + strSubstring2 + "\",\"targetId\":" + wpPathBean.path + "}")).g();
                    if (sVarG5.o("code").e() != 200) {
                        throw new Exception(sVarG5.o("msg").i());
                    }
                    bVar.b();
                    return;
                } catch (Exception e11) {
                    bVar.d(e11);
                    return;
                }
            case 5:
                try {
                    Iterator it7 = arrayList.iterator();
                    String str14 = "";
                    while (true) {
                        if (it7.hasNext()) {
                            WpPathBean wpPathBean5 = (WpPathBean) it7.next();
                            if (!n5Var.f18311x.v(wpPathBean5.path, wpPathBean.path + wpPathBean5.name)) {
                                str14 = "移动失败";
                            } else if (wpPathBean5.is_dir) {
                                str = n5Var.f18311x.p(wpPathBean5.path) ? "FTP服务器不支持移动命令" : "";
                            } else {
                                dh.e eVar = n5Var.f18311x;
                                if ((com.bumptech.glide.c.L(eVar.l("SIZE", wpPathBean5.path)) ? ((String) eVar.f4646k.get(0)).substring(4) : null) != null) {
                                }
                            }
                        } else {
                            str = str14;
                        }
                    }
                } catch (Exception e12) {
                    String strZ = g.b.z(e12, new StringBuilder(""));
                    str = strZ.isEmpty() ? "移动失败" : strZ;
                }
                if (str.isEmpty()) {
                    bVar.b();
                    return;
                } else {
                    android.support.v4.media.session.a.B(str, bVar);
                    return;
                }
            default:
                try {
                    Iterator it8 = arrayList.iterator();
                    String str15 = "";
                    while (true) {
                        if (it8.hasNext()) {
                            WpPathBean wpPathBean6 = (WpPathBean) it8.next();
                            if (!n5Var.A.v(wpPathBean6.path, wpPathBean.path + wpPathBean6.name)) {
                                str15 = "移动失败";
                            } else if (wpPathBean6.is_dir) {
                                str2 = n5Var.A.p(wpPathBean6.path) ? "FTP服务器不支持移动命令" : "";
                            } else {
                                dh.j jVar = n5Var.A;
                                if ((com.bumptech.glide.c.L(jVar.l("SIZE", wpPathBean6.path)) ? ((String) jVar.f4646k.get(0)).substring(4) : null) != null) {
                                }
                            }
                        } else {
                            str2 = str15;
                        }
                    }
                } catch (Exception e13) {
                    String strZ2 = g.b.z(e13, new StringBuilder(""));
                    str2 = strZ2.isEmpty() ? "移动失败" : strZ2;
                }
                if (str2.isEmpty()) {
                    bVar.b();
                    return;
                } else {
                    android.support.v4.media.session.a.B(str2, bVar);
                    return;
                }
        }
    }

    public /* synthetic */ a(n5 n5Var, ArrayList arrayList, WpPathBean wpPathBean, int i10) {
        this.f2670a = i10;
        this.f2671b = n5Var;
        this.f2672c = arrayList;
        this.f2673d = wpPathBean;
    }
}
