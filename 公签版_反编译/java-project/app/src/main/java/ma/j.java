package ma;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.installer.InstallerConfirmActivity;
import java.text.DecimalFormat;
import l5.y;

/* loaded from: classes.dex */
public final class j extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public final Context f11045a;

    /* renamed from: b, reason: collision with root package name */
    public final y f11046b;

    public j(Context context, y yVar) {
        this.f11045a = context.getApplicationContext();
        this.f11046b = yVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:124:0x021e  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x030c  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0218 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x015a  */
    @Override // android.content.BroadcastReceiver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onReceive(Context context, Intent intent) throws PackageManager.NameNotFoundException {
        int i10;
        String strA;
        String string;
        int i11;
        String str;
        int intExtra = intent.getIntExtra("android.content.pm.extra.STATUS", -999);
        int i12 = -1;
        int intExtra2 = intent.getIntExtra("android.content.pm.extra.SESSION_ID", -1);
        y yVar = this.f11046b;
        if (intExtra == -1) {
            ((i) yVar.f10629b).f11042i = intent.getStringExtra("android.content.pm.extra.PACKAGE_NAME");
            Intent intent2 = (Intent) intent.getParcelableExtra("android.intent.extra.INTENT");
            int i13 = InstallerConfirmActivity.D;
            Intent intent3 = new Intent(context, (Class<?>) InstallerConfirmActivity.class);
            intent3.putExtra("confirmation_intent", intent2);
            intent3.putExtra("session_id", intExtra2);
            intent3.addFlags(268435456);
            context.startActivity(intent3);
            return;
        }
        if (intExtra == 0) {
            intent.getStringExtra("android.content.pm.extra.PACKAGE_NAME");
            i iVar = (i) yVar.f10629b;
            iVar.f11034a = "";
            h.f11033a.f11039f = false;
            iVar.f11040g.release();
            return;
        }
        int intExtra3 = intent.getIntExtra("android.content.pm.extra.STATUS", -999);
        String stringExtra = intent.getStringExtra("android.content.pm.extra.OTHER_PACKAGE_NAME");
        String stringExtra2 = intent.getStringExtra("android.content.pm.extra.STATUS_MESSAGE");
        int intExtra4 = intent.getIntExtra("android.content.pm.extra.LEGACY_STATUS", 1337);
        if (intExtra3 == -322) {
            strA = "请更换安装器来安装";
        } else {
            int[] iArrD = d0.f.d(50);
            int length = iArrD.length;
            int i14 = 0;
            while (i14 < length) {
                int i15 = iArrD[i14];
                switch (i15) {
                    case 1:
                        i12 = 1337;
                        if (i12 != intExtra4) {
                            if (stringExtra2 != null) {
                                switch (i15) {
                                    case 1:
                                        str = "UNKNOWN";
                                        break;
                                    case 2:
                                        str = "INSTALL_FAILED_ALREADY_EXISTS";
                                        break;
                                    case 3:
                                        str = "INSTALL_FAILED_INVALID_APK";
                                        break;
                                    case 4:
                                        str = "INSTALL_FAILED_INVALID_URI";
                                        break;
                                    case 5:
                                        str = "INSTALL_FAILED_INSUFFICIENT_STORAGE";
                                        break;
                                    case 6:
                                        str = "INSTALL_FAILED_DUPLICATE_PACKAGE";
                                        break;
                                    case 7:
                                        str = "INSTALL_FAILED_NO_SHARED_USER";
                                        break;
                                    case 8:
                                        str = "INSTALL_FAILED_UPDATE_INCOMPATIBLE";
                                        break;
                                    case 9:
                                        str = "INSTALL_FAILED_SHARED_USER_INCOMPATIBLE";
                                        break;
                                    case 10:
                                        str = "INSTALL_FAILED_MISSING_SHARED_LIBRARY";
                                        break;
                                    case 11:
                                        str = "INSTALL_FAILED_REPLACE_COULDNT_DELETE";
                                        break;
                                    case 12:
                                        str = "INSTALL_FAILED_DEXOPT";
                                        break;
                                    case 13:
                                        str = "INSTALL_FAILED_OLDER_SDK";
                                        break;
                                    case 14:
                                        str = "INSTALL_FAILED_CONFLICTING_PROVIDER";
                                        break;
                                    case 15:
                                        str = "INSTALL_FAILED_NEWER_SDK";
                                        break;
                                    case 16:
                                        str = "INSTALL_FAILED_TEST_ONLY";
                                        break;
                                    case 17:
                                        str = "INSTALL_FAILED_CPU_ABI_INCOMPATIBLE";
                                        break;
                                    case 18:
                                        str = "INSTALL_FAILED_MISSING_FEATURE";
                                        break;
                                    case 19:
                                        str = "INSTALL_FAILED_CONTAINER_ERROR";
                                        break;
                                    case 20:
                                        str = "INSTALL_FAILED_INVALID_INSTALL_LOCATION";
                                        break;
                                    case 21:
                                        str = "INSTALL_FAILED_MEDIA_UNAVAILABLE";
                                        break;
                                    case 22:
                                        str = "INSTALL_FAILED_VERIFICATION_TIMEOUT";
                                        break;
                                    case 23:
                                        str = "INSTALL_FAILED_VERIFICATION_FAILURE";
                                        break;
                                    case 24:
                                        str = "INSTALL_FAILED_PACKAGE_CHANGED";
                                        break;
                                    case 25:
                                        str = "INSTALL_FAILED_UID_CHANGED";
                                        break;
                                    case 26:
                                        str = "INSTALL_FAILED_VERSION_DOWNGRADE";
                                        break;
                                    case 27:
                                        str = "INSTALL_FAILED_PERMISSION_MODEL_DOWNGRADE";
                                        break;
                                    case 28:
                                        str = "INSTALL_FAILED_SANDBOX_VERSION_DOWNGRADE";
                                        break;
                                    case 29:
                                        str = "INSTALL_FAILED_MISSING_SPLIT";
                                        break;
                                    case 30:
                                        str = "INSTALL_PARSE_FAILED_NOT_APK";
                                        break;
                                    case 31:
                                        str = "INSTALL_PARSE_FAILED_BAD_MANIFEST";
                                        break;
                                    case 32:
                                        str = "INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION";
                                        break;
                                    case 33:
                                        str = "INSTALL_PARSE_FAILED_NO_CERTIFICATES";
                                        break;
                                    case 34:
                                        str = "INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES";
                                        break;
                                    case 35:
                                        str = "INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING";
                                        break;
                                    case 36:
                                        str = "INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME";
                                        break;
                                    case 37:
                                        str = "INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID";
                                        break;
                                    case 38:
                                        str = "INSTALL_PARSE_FAILED_MANIFEST_MALFORMED";
                                        break;
                                    case 39:
                                        str = "INSTALL_PARSE_FAILED_MANIFEST_EMPTY";
                                        break;
                                    case 40:
                                        str = "INSTALL_FAILED_INTERNAL_ERROR";
                                        break;
                                    case 41:
                                        str = "INSTALL_FAILED_USER_RESTRICTED";
                                        break;
                                    case 42:
                                        str = "INSTALL_FAILED_DUPLICATE_PERMISSION";
                                        break;
                                    case 43:
                                        str = "INSTALL_FAILED_NO_MATCHING_ABIS";
                                        break;
                                    case 44:
                                        str = "INSTALL_FAILED_ABORTED";
                                        break;
                                    case 45:
                                        str = "INSTALL_FAILED_INSTANT_APP_INVALID";
                                        break;
                                    case 46:
                                        str = "INSTALL_FAILED_BAD_DEX_METADATA";
                                        break;
                                    case 47:
                                        str = "INSTALL_FAILED_BAD_SIGNATURE";
                                        break;
                                    case 48:
                                        str = "INSTALL_FAILED_OTHER_STAGED_SESSION_IN_PROGRESS";
                                        break;
                                    case 49:
                                        str = "INSTALL_FAILED_MULTIPACKAGE_INCONSISTENCY";
                                        break;
                                    case 50:
                                        str = "INSTALL_FAILED_WRONG_INSTALLED_VERSION";
                                        break;
                                    default:
                                        throw null;
                                }
                                if (stringExtra2.startsWith(str)) {
                                }
                            }
                            i14++;
                            i12 = -1;
                        }
                        i10 = i15;
                        if (i10 == 1) {
                            if (intExtra3 == -322) {
                                strA = "请更换安装器安装";
                                break;
                            } else {
                                switch (intExtra3) {
                                    case 2:
                                        if (stringExtra != null) {
                                            try {
                                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                                string = kVar.f4037b.getApplicationLabel(kVar.f4037b.getApplicationInfo(stringExtra, 0)).toString();
                                            } catch (Exception unused) {
                                            }
                                            strA = g.b.A("安装被 [", string, "] 阻止了");
                                            break;
                                        } else {
                                            string = "设备";
                                            strA = g.b.A("安装被 [", string, "] 阻止了");
                                        }
                                    case 3:
                                        strA = "用户取消了安装";
                                        break;
                                    case 4:
                                        strA = "可能格式错误、损坏、签名不正确、测试包、不匹配等";
                                        break;
                                    case 5:
                                        strA = "存在相同包名 或 不兼容 或 签名问题";
                                        break;
                                    case 6:
                                        strA = "没有足够的空间来安装应用";
                                        break;
                                    case 7:
                                        strA = "此应用与此设备不兼容";
                                        break;
                                    case 8:
                                        strA = "安装超时";
                                        break;
                                    default:
                                        strA = "安装失败";
                                        break;
                                }
                            }
                        } else {
                            switch (i10) {
                                case 1:
                                    i11 = R.string.installer_rootless_error2_unknown;
                                    break;
                                case 2:
                                    i11 = R.string.installer_rootless_error2_install_failed_already_exists;
                                    break;
                                case 3:
                                    i11 = R.string.installer_rootless_error2_install_failed_invalid_apk;
                                    break;
                                case 4:
                                    i11 = R.string.installer_rootless_error2_install_failed_invalid_uri;
                                    break;
                                case 5:
                                    i11 = R.string.installer_rootless_error2_install_failed_insufficient_storage;
                                    break;
                                case 6:
                                    i11 = R.string.installer_rootless_error2_install_failed_duplicate_package;
                                    break;
                                case 7:
                                    i11 = R.string.installer_rootless_error2_install_failed_no_shared_user;
                                    break;
                                case 8:
                                    i11 = R.string.installer_rootless_error2_install_failed_update_incompatible;
                                    break;
                                case 9:
                                    i11 = R.string.installer_rootless_error2_install_failed_shared_user_incompatible;
                                    break;
                                case 10:
                                    i11 = R.string.installer_rootless_error2_install_failed_missing_shared_library;
                                    break;
                                case 11:
                                    i11 = R.string.installer_rootless_error2_install_failed_replace_couldnt_delete;
                                    break;
                                case 12:
                                    i11 = R.string.installer_rootless_error2_install_failed_dexopt;
                                    break;
                                case 13:
                                    i11 = R.string.installer_rootless_error2_install_failed_older_sdk;
                                    break;
                                case 14:
                                    i11 = R.string.installer_rootless_error2_install_failed_conflicting_provider;
                                    break;
                                case 15:
                                    i11 = R.string.installer_rootless_error2_install_failed_newer_sdk;
                                    break;
                                case 16:
                                    i11 = R.string.installer_rootless_error2_install_failed_test_only;
                                    break;
                                case 17:
                                    i11 = R.string.installer_rootless_error2_install_failed_cpu_abi_incompatible;
                                    break;
                                case 18:
                                    i11 = R.string.installer_rootless_error2_install_failed_missing_feature;
                                    break;
                                case 19:
                                    i11 = R.string.installer_rootless_error2_install_failed_container_error;
                                    break;
                                case 20:
                                    i11 = R.string.installer_rootless_error2_install_failed_invalid_install_location;
                                    break;
                                case 21:
                                    i11 = R.string.installer_rootless_error2_install_failed_media_unavailable;
                                    break;
                                case 22:
                                    i11 = R.string.installer_rootless_error2_install_failed_verification_timeout;
                                    break;
                                case 23:
                                    i11 = R.string.installer_rootless_error2_install_failed_verification_failure;
                                    break;
                                case 24:
                                    i11 = R.string.installer_rootless_error2_install_failed_package_changed;
                                    break;
                                case 25:
                                    i11 = R.string.installer_rootless_error2_install_failed_uid_changed;
                                    break;
                                case 26:
                                    i11 = R.string.installer_rootless_error2_install_failed_version_downgrade;
                                    break;
                                case 27:
                                    i11 = R.string.installer_rootless_error2_install_failed_permission_model_downgrade;
                                    break;
                                case 28:
                                    i11 = R.string.installer_rootless_error2_install_failed_sandbox_version_downgrade;
                                    break;
                                case 29:
                                    i11 = R.string.installer_rootless_error2_install_failed_missing_split;
                                    break;
                                case 30:
                                    i11 = R.string.installer_rootless_error2_install_parse_failed_not_apk;
                                    break;
                                case 31:
                                    i11 = R.string.installer_rootless_error2_install_parse_failed_bad_manifest;
                                    break;
                                case 32:
                                    i11 = R.string.installer_rootless_error2_install_parse_failed_unexpected_exception;
                                    break;
                                case 33:
                                    i11 = R.string.installer_rootless_error2_install_parse_failed_no_certificates;
                                    break;
                                case 34:
                                    i11 = R.string.installer_rootless_error2_install_parse_failed_inconsistent_certificates;
                                    break;
                                case 35:
                                    i11 = R.string.installer_rootless_error2_install_parse_failed_certificate_encoding;
                                    break;
                                case 36:
                                    i11 = R.string.installer_rootless_error2_install_parse_failed_bad_package_name;
                                    break;
                                case 37:
                                    i11 = R.string.installer_rootless_error2_install_parse_failed_bad_shared_user_id;
                                    break;
                                case 38:
                                    i11 = R.string.installer_rootless_error2_install_parse_failed_manifest_malformed;
                                    break;
                                case 39:
                                    i11 = R.string.installer_rootless_error2_install_parse_failed_manifest_empty;
                                    break;
                                case 40:
                                    i11 = R.string.installer_rootless_error2_install_failed_internal_error;
                                    break;
                                case 41:
                                    i11 = R.string.installer_rootless_error2_install_failed_user_restricted;
                                    break;
                                case 42:
                                    i11 = R.string.installer_rootless_error2_install_failed_duplicate_permission;
                                    break;
                                case 43:
                                    i11 = R.string.installer_rootless_error2_install_failed_no_matching_abis;
                                    break;
                                case 44:
                                    i11 = R.string.installer_rootless_error2_install_failed_aborted;
                                    break;
                                case 45:
                                    i11 = R.string.installer_rootless_error2_install_failed_instant_app_invalid;
                                    break;
                                case 46:
                                    i11 = R.string.installer_rootless_error2_install_failed_bad_dex_metadata;
                                    break;
                                case 47:
                                    i11 = R.string.installer_rootless_error2_install_failed_bad_signature;
                                    break;
                                case 48:
                                    i11 = R.string.installer_rootless_error2_install_failed_other_staged_session_in_progress;
                                    break;
                                case 49:
                                    i11 = R.string.installer_rootless_error2_install_failed_multipackage_inconsistency;
                                    break;
                                case 50:
                                    i11 = R.string.installer_rootless_error2_install_failed_wrong_installed_version;
                                    break;
                                default:
                                    throw null;
                            }
                            strA = this.f11045a.getString(i11);
                            break;
                        }
                    case 2:
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 3:
                        i12 = -2;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 4:
                        i12 = -3;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 5:
                        i12 = -4;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 6:
                        i12 = -5;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 7:
                        i12 = -6;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 8:
                        i12 = -7;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 9:
                        i12 = -8;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 10:
                        i12 = -9;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 11:
                        i12 = -10;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 12:
                        i12 = -11;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 13:
                        i12 = -12;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 14:
                        i12 = -13;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 15:
                        i12 = -14;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 16:
                        i12 = -15;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 17:
                        i12 = -16;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 18:
                        i12 = -17;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 19:
                        i12 = -18;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 20:
                        i12 = -19;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 21:
                        i12 = -20;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 22:
                        i12 = -21;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 23:
                        i12 = -22;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 24:
                        i12 = -23;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 25:
                        i12 = -24;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 26:
                        i12 = -25;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 27:
                        i12 = -26;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 28:
                        i12 = -27;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 29:
                        i12 = -28;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 30:
                        i12 = -100;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 31:
                        i12 = -101;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 32:
                        i12 = -102;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 33:
                        i12 = -103;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 34:
                        i12 = -104;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 35:
                        i12 = -105;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 36:
                        i12 = -106;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 37:
                        i12 = -107;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 38:
                        i12 = -108;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 39:
                        i12 = -109;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 40:
                        i12 = -110;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 41:
                        i12 = -111;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 42:
                        i12 = -112;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 43:
                        i12 = -113;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 44:
                        i12 = -115;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 45:
                        i12 = -116;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 46:
                        i12 = -117;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 47:
                        i12 = -118;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 48:
                        i12 = -119;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 49:
                        i12 = -120;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    case 50:
                        i12 = -121;
                        if (i12 != intExtra4) {
                        }
                        i10 = i15;
                        if (i10 == 1) {
                        }
                        break;
                    default:
                        throw null;
                }
            }
            i10 = 1;
            if (i10 == 1) {
            }
        }
        intent.getStringExtra("android.content.pm.extra.STATUS_MESSAGE");
        yVar.getClass();
        String str2 = "失败：" + strA;
        i iVar2 = (i) yVar.f10629b;
        iVar2.f11034a = str2;
        h.f11033a.f11039f = false;
        iVar2.f11040g.release();
    }
}
