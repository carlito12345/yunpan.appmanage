package k;

import a9.o;
import android.os.SystemProperties;
import com.bumptech.glide.d;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import d.b;
import qf.c;
import s1.g;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static int[] f9995a = new int[0];

    /* renamed from: b, reason: collision with root package name */
    public static int[] f9996b = new int[0];

    public static int a(int i10) {
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        int i30;
        int i31;
        int i32;
        int i33;
        int i34;
        int i35;
        int i36;
        int i37;
        int i38;
        int i39;
        b();
        b();
        int[] iArr = f9996b;
        int i40 = 1;
        int i41 = iArr.length < 2 ? 32 : iArr[1];
        if (i10 == 10020) {
            return SystemProperties.getInt("persist.sys.gac.configurationLevel", 3);
        }
        if (i41 == 36 || i41 == 37 || i41 == 241 || i41 == 240 || i41 == 250) {
            return b.A(f9995a, iArr, i10);
        }
        int i42 = 0;
        if (i41 == 38 || i41 == 243) {
            int[] iArr2 = f9995a;
            if (iArr2.length >= 9 && iArr.length >= 38) {
                switch (i10) {
                    case 0:
                        i11 = iArr[0];
                        return i11 & 3;
                    case 1:
                        return iArr[1];
                    case 2:
                        i12 = iArr[2];
                        return 1 & i12;
                    case 3:
                        i13 = iArr[2];
                        i12 = i13 >> 1;
                        return 1 & i12;
                    case 4:
                        i14 = iArr[2];
                        i12 = i14 >> 2;
                        return 1 & i12;
                    case 5:
                        i15 = iArr[2];
                        i12 = i15 >> 3;
                        return 1 & i12;
                    case 6:
                        i16 = iArr[2];
                        i12 = i16 >> 4;
                        return 1 & i12;
                    case 7:
                        i17 = iArr[2];
                        i12 = i17 >> 5;
                        return 1 & i12;
                    default:
                        if (i10 != 9) {
                            if (i10 != 10) {
                                switch (i10) {
                                    case 12:
                                        i12 = iArr[3];
                                        return 1 & i12;
                                    case 13:
                                        i13 = iArr[3];
                                        i12 = i13 >> 1;
                                        return 1 & i12;
                                    case 14:
                                        i14 = iArr[3];
                                        i12 = i14 >> 2;
                                        return 1 & i12;
                                    case 15:
                                        i15 = iArr[3];
                                        i12 = i15 >> 3;
                                        return 1 & i12;
                                    default:
                                        switch (i10) {
                                            case 26:
                                                i17 = iArr[3];
                                                i12 = i17 >> 5;
                                                return 1 & i12;
                                            case 27:
                                                i20 = iArr[7];
                                                return i20 & 15;
                                            case 28:
                                                i21 = iArr[7] >> 4;
                                                return i21 & 7;
                                            case 29:
                                                i19 = iArr[7];
                                                break;
                                            case 30:
                                                i12 = iArr[8];
                                                return 1 & i12;
                                            case 31:
                                                i16 = iArr[8];
                                                i12 = i16 >> 4;
                                                return 1 & i12;
                                            case 32:
                                                i17 = iArr[8];
                                                i12 = i17 >> 5;
                                                return 1 & i12;
                                            case 33:
                                                i18 = iArr[8];
                                                break;
                                            case 34:
                                                i19 = iArr[8];
                                                break;
                                            case 35:
                                                i12 = iArr[9];
                                                return 1 & i12;
                                            case 36:
                                                i13 = iArr[9];
                                                i12 = i13 >> 1;
                                                return 1 & i12;
                                            case 37:
                                                i14 = iArr[9];
                                                i12 = i14 >> 2;
                                                return 1 & i12;
                                            case 38:
                                                i12 = iArr[10];
                                                return 1 & i12;
                                            case 39:
                                                i13 = iArr[10];
                                                i12 = i13 >> 1;
                                                return 1 & i12;
                                            case 40:
                                                i14 = iArr[10];
                                                i12 = i14 >> 2;
                                                return 1 & i12;
                                            case 41:
                                                i15 = iArr[10];
                                                i12 = i15 >> 3;
                                                return 1 & i12;
                                            case 42:
                                                i16 = iArr[10];
                                                i12 = i16 >> 4;
                                                return 1 & i12;
                                            case 43:
                                                i17 = iArr[10];
                                                i12 = i17 >> 5;
                                                return 1 & i12;
                                            case 44:
                                                i18 = iArr[10];
                                                break;
                                            case 45:
                                                i19 = iArr[10];
                                                break;
                                            case 46:
                                                i12 = iArr[11];
                                                return 1 & i12;
                                            case 47:
                                                i21 = iArr[12];
                                                return i21 & 7;
                                            case 48:
                                                i22 = iArr[12];
                                                i21 = i22 >> 3;
                                                return i21 & 7;
                                            case 49:
                                                i18 = iArr[12];
                                                break;
                                            case 50:
                                                i23 = iArr[13];
                                                i11 = i23 >> 4;
                                                return i11 & 3;
                                            case 51:
                                                i24 = iArr[13];
                                                i11 = i24 >> 6;
                                                return i11 & 3;
                                            case 52:
                                                i11 = iArr[14];
                                                return i11 & 3;
                                            case 53:
                                                i25 = iArr[14];
                                                i11 = i25 >> 2;
                                                return i11 & 3;
                                            case 54:
                                                i16 = iArr[14];
                                                i12 = i16 >> 4;
                                                return 1 & i12;
                                            case 55:
                                                i17 = iArr[14];
                                                i12 = i17 >> 5;
                                                return 1 & i12;
                                            case 56:
                                                i18 = iArr[14];
                                                break;
                                            case 57:
                                                i19 = iArr[14];
                                                break;
                                            case 58:
                                                i12 = iArr[15];
                                                return 1 & i12;
                                            case 59:
                                                i13 = iArr[15];
                                                i12 = i13 >> 1;
                                                return 1 & i12;
                                            case 60:
                                                i14 = iArr[15];
                                                i12 = i14 >> 2;
                                                return 1 & i12;
                                            case 61:
                                                i15 = iArr[15];
                                                i12 = i15 >> 3;
                                                return 1 & i12;
                                            case 62:
                                                i16 = iArr[15];
                                                i12 = i16 >> 4;
                                                return 1 & i12;
                                            case 63:
                                                i17 = iArr[15];
                                                i12 = i17 >> 5;
                                                return 1 & i12;
                                            case 64:
                                                i18 = iArr[15];
                                                break;
                                            case 65:
                                                i19 = iArr[15];
                                                break;
                                            case 66:
                                                i11 = iArr[16];
                                                return i11 & 3;
                                            case 67:
                                                i14 = iArr[16];
                                                i12 = i14 >> 2;
                                                return 1 & i12;
                                            case 68:
                                                i15 = iArr[16];
                                                i12 = i15 >> 3;
                                                return 1 & i12;
                                            case 69:
                                                i16 = iArr[16];
                                                i12 = i16 >> 4;
                                                return 1 & i12;
                                            case 70:
                                                i17 = iArr[16];
                                                i12 = i17 >> 5;
                                                return 1 & i12;
                                            case 71:
                                                i18 = iArr[16];
                                                break;
                                            case 72:
                                                i19 = iArr[16];
                                                break;
                                            case 73:
                                                i11 = iArr[17];
                                                return i11 & 3;
                                            case 74:
                                                i14 = iArr[17];
                                                i12 = i14 >> 2;
                                                return 1 & i12;
                                            case 75:
                                                i15 = iArr[17];
                                                i12 = i15 >> 3;
                                                return 1 & i12;
                                            case 76:
                                                i16 = iArr[17];
                                                i12 = i16 >> 4;
                                                return 1 & i12;
                                            case 77:
                                                i17 = iArr[17];
                                                i12 = i17 >> 5;
                                                return 1 & i12;
                                            case 78:
                                                i18 = iArr[17];
                                                break;
                                            case 79:
                                                i19 = iArr[17];
                                                break;
                                            default:
                                                switch (i10) {
                                                    case 81:
                                                        i13 = iArr[18];
                                                        i12 = i13 >> 1;
                                                        return 1 & i12;
                                                    case 82:
                                                        i14 = iArr[18];
                                                        i12 = i14 >> 2;
                                                        return 1 & i12;
                                                    case 83:
                                                        i15 = iArr[18];
                                                        i12 = i15 >> 3;
                                                        return 1 & i12;
                                                    case CarSettingID.Send.HVAC_SEASONS_KEY /* 84 */:
                                                        i16 = iArr[18];
                                                        i12 = i16 >> 4;
                                                        return 1 & i12;
                                                    case 85:
                                                        i17 = iArr[18];
                                                        i12 = i17 >> 5;
                                                        return 1 & i12;
                                                    case 86:
                                                        i18 = iArr[18];
                                                        break;
                                                    case 87:
                                                        i19 = iArr[18];
                                                        break;
                                                    case 88:
                                                        i12 = iArr[21];
                                                        return 1 & i12;
                                                    case 89:
                                                        i13 = iArr[21];
                                                        i12 = i13 >> 1;
                                                        return 1 & i12;
                                                    case 90:
                                                        i14 = iArr[21];
                                                        i12 = i14 >> 2;
                                                        return 1 & i12;
                                                    case 91:
                                                        i15 = iArr[21];
                                                        i12 = i15 >> 3;
                                                        return 1 & i12;
                                                    case 92:
                                                        i16 = iArr[21];
                                                        i12 = i16 >> 4;
                                                        return 1 & i12;
                                                    case 93:
                                                        i17 = iArr[21];
                                                        i12 = i17 >> 5;
                                                        return 1 & i12;
                                                    case 94:
                                                        i18 = iArr[21];
                                                        break;
                                                    case 95:
                                                        i19 = iArr[21];
                                                        break;
                                                    case 96:
                                                        i12 = iArr[23];
                                                        return 1 & i12;
                                                    case 97:
                                                        i13 = iArr[23];
                                                        i12 = i13 >> 1;
                                                        return 1 & i12;
                                                    case 98:
                                                        i14 = iArr[23];
                                                        i12 = i14 >> 2;
                                                        return 1 & i12;
                                                    case 99:
                                                        i15 = iArr[23];
                                                        i12 = i15 >> 3;
                                                        return 1 & i12;
                                                    case 100:
                                                        i16 = iArr[23];
                                                        i12 = i16 >> 4;
                                                        return 1 & i12;
                                                    case 101:
                                                        i17 = iArr[23];
                                                        i12 = i17 >> 5;
                                                        return 1 & i12;
                                                    default:
                                                        switch (i10) {
                                                            case 103:
                                                                i19 = iArr[23];
                                                                break;
                                                            case 104:
                                                                i12 = iArr[24];
                                                                return 1 & i12;
                                                            case 105:
                                                                i13 = iArr[24];
                                                                i12 = i13 >> 1;
                                                                return 1 & i12;
                                                            case 106:
                                                                i14 = iArr[24];
                                                                i12 = i14 >> 2;
                                                                return 1 & i12;
                                                            case 107:
                                                                i15 = iArr[24];
                                                                i12 = i15 >> 3;
                                                                return 1 & i12;
                                                            case 108:
                                                                i16 = iArr[24];
                                                                i12 = i16 >> 4;
                                                                return 1 & i12;
                                                            default:
                                                                switch (i10) {
                                                                    case 111:
                                                                        i12 = iArr[25];
                                                                        return 1 & i12;
                                                                    case 112:
                                                                        i13 = iArr[25];
                                                                        i12 = i13 >> 1;
                                                                        return 1 & i12;
                                                                    case 113:
                                                                        i14 = iArr[25];
                                                                        i12 = i14 >> 2;
                                                                        return 1 & i12;
                                                                    case 114:
                                                                        i15 = iArr[25];
                                                                        i12 = i15 >> 3;
                                                                        return 1 & i12;
                                                                    case 115:
                                                                        i16 = iArr[25];
                                                                        i12 = i16 >> 4;
                                                                        return 1 & i12;
                                                                    case 116:
                                                                        i17 = iArr[25];
                                                                        i12 = i17 >> 5;
                                                                        return 1 & i12;
                                                                    case 117:
                                                                        i18 = iArr[25];
                                                                        break;
                                                                    case 118:
                                                                        i19 = iArr[25];
                                                                        break;
                                                                    default:
                                                                        switch (i10) {
                                                                            case 121:
                                                                                i14 = iArr[26];
                                                                                i12 = i14 >> 2;
                                                                                return 1 & i12;
                                                                            case 122:
                                                                                i15 = iArr[26];
                                                                                i12 = i15 >> 3;
                                                                                return 1 & i12;
                                                                            case 123:
                                                                                i16 = iArr[26];
                                                                                i12 = i16 >> 4;
                                                                                return 1 & i12;
                                                                            case 124:
                                                                                i17 = iArr[26];
                                                                                i12 = i17 >> 5;
                                                                                return 1 & i12;
                                                                            case 125:
                                                                                i18 = iArr[26];
                                                                                break;
                                                                            case 126:
                                                                                i19 = iArr[26];
                                                                                break;
                                                                            case 127:
                                                                                i12 = iArr[30];
                                                                                return 1 & i12;
                                                                            case 128:
                                                                                i13 = iArr[30];
                                                                                i12 = i13 >> 1;
                                                                                return 1 & i12;
                                                                            case 129:
                                                                                i14 = iArr[30];
                                                                                i12 = i14 >> 2;
                                                                                return 1 & i12;
                                                                            case 130:
                                                                                i11 = iArr[30] >> 3;
                                                                                return i11 & 3;
                                                                            case 131:
                                                                                i11 = iArr[30] >> 5;
                                                                                return i11 & 3;
                                                                            case 132:
                                                                                i19 = iArr[30];
                                                                                break;
                                                                            case 133:
                                                                                i12 = iArr[31];
                                                                                return 1 & i12;
                                                                            case 134:
                                                                                i26 = iArr[31];
                                                                                i11 = i26 >> 1;
                                                                                return i11 & 3;
                                                                            case 135:
                                                                                i15 = iArr[31];
                                                                                i12 = i15 >> 3;
                                                                                return 1 & i12;
                                                                            case 136:
                                                                                i16 = iArr[31];
                                                                                i12 = i16 >> 4;
                                                                                return 1 & i12;
                                                                            case 137:
                                                                                i17 = iArr[31];
                                                                                i12 = i17 >> 5;
                                                                                return 1 & i12;
                                                                            case 138:
                                                                                i24 = iArr[31];
                                                                                i11 = i24 >> 6;
                                                                                return i11 & 3;
                                                                            case 139:
                                                                                i11 = iArr[32];
                                                                                return i11 & 3;
                                                                            default:
                                                                                switch (i10) {
                                                                                    case 141:
                                                                                        i23 = iArr[32];
                                                                                        i11 = i23 >> 4;
                                                                                        return i11 & 3;
                                                                                    case 142:
                                                                                        i18 = iArr[32];
                                                                                        break;
                                                                                    case 143:
                                                                                        i19 = iArr[32];
                                                                                        break;
                                                                                    case 144:
                                                                                        i11 = iArr[33];
                                                                                        return i11 & 3;
                                                                                    case 145:
                                                                                        i25 = iArr[33];
                                                                                        i11 = i25 >> 2;
                                                                                        return i11 & 3;
                                                                                    case 146:
                                                                                        i23 = iArr[33];
                                                                                        i11 = i23 >> 4;
                                                                                        return i11 & 3;
                                                                                    case 147:
                                                                                        i18 = iArr[33];
                                                                                        break;
                                                                                    case 148:
                                                                                        i19 = iArr[33];
                                                                                        break;
                                                                                    case 149:
                                                                                        i12 = iArr[34];
                                                                                        return 1 & i12;
                                                                                    case 150:
                                                                                        i18 = iArr[3];
                                                                                        break;
                                                                                    default:
                                                                                        switch (i10) {
                                                                                            case 200:
                                                                                                i20 = iArr2[0];
                                                                                                return i20 & 15;
                                                                                            case CarSettingID.Recv.IGM_INPUT_OVER_VOLT /* 201 */:
                                                                                                if (i41 == 38) {
                                                                                                    return 1;
                                                                                                }
                                                                                                i12 = iArr2[1];
                                                                                                return 1 & i12;
                                                                                            case CarSettingID.Recv.IGM_OVER_TEMP /* 202 */:
                                                                                                if (i41 == 38) {
                                                                                                    return 1;
                                                                                                }
                                                                                                i13 = iArr2[1];
                                                                                                i12 = i13 >> 1;
                                                                                                return 1 & i12;
                                                                                            case CarSettingID.Recv.IGM_OUTPUT_OPEN_LODE /* 203 */:
                                                                                                i14 = iArr2[1];
                                                                                                i12 = i14 >> 2;
                                                                                                return 1 & i12;
                                                                                            case CarSettingID.Recv.IGM_OUTPUT_OVER_CUR /* 204 */:
                                                                                                i11 = iArr2[2];
                                                                                                return i11 & 3;
                                                                                            case 205:
                                                                                                i14 = iArr2[2];
                                                                                                i12 = i14 >> 2;
                                                                                                return 1 & i12;
                                                                                            case CarSettingID.Recv.IGM_OUTPUT_SCB /* 206 */:
                                                                                                i15 = iArr2[2];
                                                                                                i12 = i15 >> 3;
                                                                                                return 1 & i12;
                                                                                            case CarSettingID.Recv.IFC_TLR_AVAIL /* 207 */:
                                                                                                i16 = iArr2[2];
                                                                                                i12 = i16 >> 4;
                                                                                                return 1 & i12;
                                                                                            case CarSettingID.Recv.IFC_TLR_ST /* 208 */:
                                                                                                i17 = iArr2[2];
                                                                                                i12 = i17 >> 5;
                                                                                                return 1 & i12;
                                                                                            case CarSettingID.Recv.IFC_TLR_ACOUSTIC_WARN /* 209 */:
                                                                                                i24 = iArr2[2];
                                                                                                i11 = i24 >> 6;
                                                                                                return i11 & 3;
                                                                                            case CarSettingID.Recv.IFC_SGW_AVAIL /* 210 */:
                                                                                                i12 = iArr2[4];
                                                                                                return 1 & i12;
                                                                                            case 211:
                                                                                                i21 = iArr2[4] >> 1;
                                                                                                return i21 & 7;
                                                                                            case CarSettingID.Recv.IFC_SGW_ACOUSTIC_WARN /* 212 */:
                                                                                                i20 = iArr2[4] >> 4;
                                                                                                return i20 & 15;
                                                                                            case CarSettingID.Recv.IFC_TCP_AVAIL /* 213 */:
                                                                                                i21 = iArr2[5];
                                                                                                return i21 & 7;
                                                                                            case CarSettingID.Recv.IFC_TCP_ST /* 214 */:
                                                                                                i22 = iArr2[5];
                                                                                                i21 = i22 >> 3;
                                                                                                return i21 & 7;
                                                                                            case CarSettingID.Recv.IFC_TSR_AVAIL /* 215 */:
                                                                                                i18 = iArr2[5];
                                                                                                break;
                                                                                            case CarSettingID.Recv.IFC_HMA_AVAIL /* 216 */:
                                                                                                i25 = iArr2[6];
                                                                                                i11 = i25 >> 2;
                                                                                                return i11 & 3;
                                                                                            case 217:
                                                                                                i23 = iArr2[6];
                                                                                                i11 = i23 >> 4;
                                                                                                return i11 & 3;
                                                                                            case 218:
                                                                                                i24 = iArr2[6];
                                                                                                i11 = i24 >> 6;
                                                                                                return i11 & 3;
                                                                                            case 219:
                                                                                                i20 = iArr2[7];
                                                                                                return i20 & 15;
                                                                                            case CarSettingID.Recv.IFC_TCPSESSIONID /* 220 */:
                                                                                                i23 = iArr2[7];
                                                                                                i11 = i23 >> 4;
                                                                                                return i11 & 3;
                                                                                            case CarSettingID.Recv.FLDCM_MIRROR_FOLD_UNFOLD_ST /* 221 */:
                                                                                                i24 = iArr2[7];
                                                                                                i11 = i24 >> 6;
                                                                                                return i11 & 3;
                                                                                            case CarSettingID.Recv.FRDCM_MIRROR_FOLD_UNFOLD_ST /* 222 */:
                                                                                                i12 = iArr2[3];
                                                                                                return 1 & i12;
                                                                                            case CarSettingID.Recv.PAA_DVR_TRIGGER /* 223 */:
                                                                                                i21 = iArr[27];
                                                                                                return i21 & 7;
                                                                                            case 224:
                                                                                                return (iArr[27] >> 3) & 31;
                                                                                            case 225:
                                                                                                i12 = iArr[19];
                                                                                                return 1 & i12;
                                                                                            case 226:
                                                                                                if (i41 == 38) {
                                                                                                    return 1;
                                                                                                }
                                                                                                i15 = iArr2[1];
                                                                                                i12 = i15 >> 3;
                                                                                                return 1 & i12;
                                                                                            case CarSettingID.Recv.IPB_CST_STATUS /* 227 */:
                                                                                                i20 = iArr[28];
                                                                                                return i20 & 15;
                                                                                            default:
                                                                                                if (i10 != 10000) {
                                                                                                    if (i10 != 10001) {
                                                                                                        switch (i10) {
                                                                                                            case 10003:
                                                                                                                i26 = iArr[13];
                                                                                                                i11 = i26 >> 1;
                                                                                                                return i11 & 3;
                                                                                                            case 10004:
                                                                                                                i15 = iArr[13];
                                                                                                                i12 = i15 >> 3;
                                                                                                                return 1 & i12;
                                                                                                            case 10005:
                                                                                                                i14 = iArr[19];
                                                                                                                break;
                                                                                                            case 10006:
                                                                                                                i15 = iArr[19];
                                                                                                                i12 = i15 >> 3;
                                                                                                                return 1 & i12;
                                                                                                            case 10007:
                                                                                                                i17 = iArr[28];
                                                                                                                i12 = i17 >> 5;
                                                                                                                return 1 & i12;
                                                                                                            case 10008:
                                                                                                                i18 = iArr[28];
                                                                                                                break;
                                                                                                            case 10009:
                                                                                                                i25 = iArr[32];
                                                                                                                i11 = i25 >> 2;
                                                                                                                return i11 & 3;
                                                                                                            case 10010:
                                                                                                                i26 = iArr[34];
                                                                                                                i11 = i26 >> 1;
                                                                                                                return i11 & 3;
                                                                                                            case 10011:
                                                                                                                i15 = iArr[34];
                                                                                                                i12 = i15 >> 3;
                                                                                                                return 1 & i12;
                                                                                                            case 10012:
                                                                                                                i16 = iArr[34];
                                                                                                                i12 = i16 >> 4;
                                                                                                                return 1 & i12;
                                                                                                            case 10013:
                                                                                                                i17 = iArr[19];
                                                                                                                i12 = i17 >> 5;
                                                                                                                return 1 & i12;
                                                                                                            default:
                                                                                                                if (i10 == 10065) {
                                                                                                                    i12 = iArr[26];
                                                                                                                } else if (i10 == 10066) {
                                                                                                                    i13 = iArr[26];
                                                                                                                    break;
                                                                                                                } else {
                                                                                                                    if (i10 == 18) {
                                                                                                                        i16 = iArr[3];
                                                                                                                    } else if (i10 == 229) {
                                                                                                                        i13 = iArr[19];
                                                                                                                        break;
                                                                                                                    } else if (i10 == 10024) {
                                                                                                                        i19 = iArr[28];
                                                                                                                        break;
                                                                                                                    } else if (i10 == 10028) {
                                                                                                                        i16 = iArr[19];
                                                                                                                    } else if (i10 == 10069) {
                                                                                                                        i13 = iArr[29];
                                                                                                                        break;
                                                                                                                    } else {
                                                                                                                        if (i10 == 10071) {
                                                                                                                            i17 = iArr[24];
                                                                                                                        } else if (i10 == 10114) {
                                                                                                                            i17 = iArr[34];
                                                                                                                        } else if (i10 == 10142) {
                                                                                                                            i12 = iArr2[9];
                                                                                                                        }
                                                                                                                        i12 = i17 >> 5;
                                                                                                                    }
                                                                                                                    i12 = i16 >> 4;
                                                                                                                }
                                                                                                                return 1 & i12;
                                                                                                        }
                                                                                                    } else {
                                                                                                        i14 = iArr[11];
                                                                                                    }
                                                                                                    i12 = i14 >> 2;
                                                                                                    return 1 & i12;
                                                                                                }
                                                                                                i13 = iArr[11];
                                                                                                i12 = i13 >> 1;
                                                                                                return 1 & i12;
                                                                                        }
                                                                                }
                                                                        }
                                                                }
                                                        }
                                                }
                                        }
                                }
                            } else {
                                i19 = iArr[2];
                            }
                            i12 = i19 >> 7;
                            return 1 & i12;
                        }
                        i18 = iArr[2];
                        i12 = i18 >> 6;
                        return 1 & i12;
                }
            }
            return 0;
        }
        if (i41 == 39) {
            return q4.a.l(f9995a, iArr, i10);
        }
        if (i41 == 40 || i41 == 42) {
            return c.s(f9995a, iArr, i10);
        }
        if (i41 == 41 || i41 == 244 || i41 == 251 || i41 == 252) {
            return o.L(f9995a, iArr, i10);
        }
        if (i41 == 245) {
            return d.u(f9995a, iArr, i10);
        }
        if (i41 == 49) {
            return nh.b.A(f9995a, iArr, i10);
        }
        if (i41 == 247) {
            return p000if.a.G(f9995a, iArr, i10);
        }
        if (i41 == 48) {
            throw new UnsupportedOperationException("Method not decompiled: android.util.impl.ConfigA08Impl.getConfig(int[], int[], int):int");
        }
        if (i41 == 246) {
            return b.z(f9995a, iArr, i10);
        }
        if (i41 == 51) {
            return com.bumptech.glide.c.A(f9995a, iArr, i10);
        }
        if (i41 == 248) {
            return android.support.v4.media.session.b.j(f9995a, iArr, i10);
        }
        if (i41 == 249) {
            return g.w(f9995a, iArr, i10);
        }
        if (i41 == 43) {
            return p000if.a.H(f9995a, iArr, i10);
        }
        int[] iArr3 = f9995a;
        if (iArr3.length < 9 || iArr.length < 38) {
            i40 = 0;
        } else {
            if (i10 == 18) {
                i27 = iArr[3] >> 4;
            } else if (i10 != 10000) {
                if (i10 != 10039) {
                    switch (i10) {
                        case 0:
                            i28 = iArr[0];
                            i40 = i28 & 3;
                            break;
                        case 1:
                            i40 = iArr[1];
                            break;
                        case 2:
                            i27 = iArr[2];
                            break;
                        case 3:
                            i29 = iArr[2];
                            i27 = i29 >> 1;
                            break;
                        case 4:
                            i30 = iArr[2];
                            i27 = i30 >> 2;
                            break;
                        case 5:
                            int i43 = iArr[2];
                            break;
                        case 6:
                            int i44 = iArr[2];
                            break;
                        case 7:
                            i31 = iArr[2];
                            i27 = i31 >> 5;
                            break;
                        default:
                            if (i10 == 9) {
                                i42 = iArr[2];
                                break;
                            } else {
                                if (i10 != 10) {
                                    switch (i10) {
                                        case 12:
                                            i27 = iArr[3];
                                            break;
                                        case 13:
                                            i29 = iArr[3];
                                            i27 = i29 >> 1;
                                            break;
                                        case 14:
                                            i30 = iArr[3];
                                            i27 = i30 >> 2;
                                            break;
                                        case 15:
                                            int i45 = iArr[3];
                                            break;
                                        default:
                                            switch (i10) {
                                                case 26:
                                                    i31 = iArr[3];
                                                    i27 = i31 >> 5;
                                                    break;
                                                case 27:
                                                    i33 = iArr[7];
                                                    i40 = i33 & 15;
                                                    break;
                                                case 28:
                                                    i34 = iArr[7] >> 4;
                                                    i40 = i34 & 7;
                                                    break;
                                                case 29:
                                                    i32 = iArr[7];
                                                    break;
                                                case 30:
                                                    i27 = iArr[8];
                                                    break;
                                                case 31:
                                                    int i46 = iArr[8];
                                                    break;
                                                case 32:
                                                    i31 = iArr[8];
                                                    i27 = i31 >> 5;
                                                    break;
                                                case 33:
                                                    i42 = iArr[8];
                                                    break;
                                                case 34:
                                                    i32 = iArr[8];
                                                    break;
                                                case 35:
                                                    i27 = iArr[9];
                                                    break;
                                                case 36:
                                                    i29 = iArr[9];
                                                    i27 = i29 >> 1;
                                                    break;
                                                case 37:
                                                    i30 = iArr[9];
                                                    i27 = i30 >> 2;
                                                    break;
                                                case 38:
                                                    i27 = iArr[10];
                                                    break;
                                                case 39:
                                                    i29 = iArr[10];
                                                    i27 = i29 >> 1;
                                                    break;
                                                case 40:
                                                    i30 = iArr[10];
                                                    i27 = i30 >> 2;
                                                    break;
                                                case 41:
                                                    int i47 = iArr[10];
                                                    break;
                                                case 42:
                                                    int i48 = iArr[10];
                                                    break;
                                                case 43:
                                                    i31 = iArr[10];
                                                    i27 = i31 >> 5;
                                                    break;
                                                case 44:
                                                    i42 = iArr[10];
                                                    break;
                                                case 45:
                                                    i32 = iArr[10];
                                                    break;
                                                case 46:
                                                    i27 = iArr[11];
                                                    break;
                                                case 47:
                                                    i34 = iArr[12];
                                                    i40 = i34 & 7;
                                                    break;
                                                case 48:
                                                    i35 = iArr[12];
                                                    i34 = i35 >> 3;
                                                    i40 = i34 & 7;
                                                    break;
                                                case 49:
                                                    i42 = iArr[12];
                                                    break;
                                                case 50:
                                                    i36 = iArr[13];
                                                    i28 = i36 >> 4;
                                                    i40 = i28 & 3;
                                                    break;
                                                case 51:
                                                    i37 = iArr[13];
                                                    i28 = i37 >> 6;
                                                    i40 = i28 & 3;
                                                    break;
                                                case 52:
                                                    i28 = iArr[14];
                                                    i40 = i28 & 3;
                                                    break;
                                                case 53:
                                                    i38 = iArr[14];
                                                    i28 = i38 >> 2;
                                                    i40 = i28 & 3;
                                                    break;
                                                case 54:
                                                    int i49 = iArr[14];
                                                    break;
                                                case 55:
                                                    i31 = iArr[14];
                                                    i27 = i31 >> 5;
                                                    break;
                                                case 56:
                                                    i42 = iArr[14];
                                                    break;
                                                case 57:
                                                    i32 = iArr[14];
                                                    break;
                                                case 58:
                                                    i27 = iArr[15];
                                                    break;
                                                case 59:
                                                    i29 = iArr[15];
                                                    i27 = i29 >> 1;
                                                    break;
                                                case 60:
                                                    i30 = iArr[15];
                                                    i27 = i30 >> 2;
                                                    break;
                                                case 61:
                                                    int i50 = iArr[15];
                                                    break;
                                                case 62:
                                                    int i51 = iArr[15];
                                                    break;
                                                case 63:
                                                    i31 = iArr[15];
                                                    i27 = i31 >> 5;
                                                    break;
                                                case 64:
                                                    i42 = iArr[15];
                                                    break;
                                                case 65:
                                                    i32 = iArr[15];
                                                    break;
                                                case 66:
                                                    i28 = iArr[16];
                                                    i40 = i28 & 3;
                                                    break;
                                                case 67:
                                                    i30 = iArr[16];
                                                    i27 = i30 >> 2;
                                                    break;
                                                case 68:
                                                    int i52 = iArr[16];
                                                    break;
                                                case 69:
                                                    int i53 = iArr[16];
                                                    break;
                                                case 70:
                                                    i31 = iArr[16];
                                                    i27 = i31 >> 5;
                                                    break;
                                                case 71:
                                                    i42 = iArr[16];
                                                    break;
                                                case 72:
                                                    i32 = iArr[16];
                                                    break;
                                                case 73:
                                                    i28 = iArr[17];
                                                    i40 = i28 & 3;
                                                    break;
                                                case 74:
                                                    i30 = iArr[17];
                                                    i27 = i30 >> 2;
                                                    break;
                                                case 75:
                                                    int i54 = iArr[17];
                                                    break;
                                                case 76:
                                                    int i55 = iArr[17];
                                                    break;
                                                case 77:
                                                    i31 = iArr[17];
                                                    i27 = i31 >> 5;
                                                    break;
                                                case 78:
                                                    i42 = iArr[17];
                                                    break;
                                                case 79:
                                                    i32 = iArr[17];
                                                    break;
                                                case 80:
                                                    i27 = iArr[18];
                                                    break;
                                                case 81:
                                                    i29 = iArr[18];
                                                    i27 = i29 >> 1;
                                                    break;
                                                case 82:
                                                    i30 = iArr[18];
                                                    i27 = i30 >> 2;
                                                    break;
                                                case 83:
                                                    int i56 = iArr[18];
                                                    break;
                                                case CarSettingID.Send.HVAC_SEASONS_KEY /* 84 */:
                                                    int i57 = iArr[18];
                                                    break;
                                                case 85:
                                                    i31 = iArr[18];
                                                    i27 = i31 >> 5;
                                                    break;
                                                case 86:
                                                    i42 = iArr[18];
                                                    break;
                                                case 87:
                                                    i32 = iArr[18];
                                                    break;
                                                case 88:
                                                    i27 = iArr[21];
                                                    break;
                                                case 89:
                                                    i29 = iArr[21];
                                                    i27 = i29 >> 1;
                                                    break;
                                                case 90:
                                                    i30 = iArr[21];
                                                    i27 = i30 >> 2;
                                                    break;
                                                case 91:
                                                    int i58 = iArr[21];
                                                    break;
                                                case 92:
                                                    int i59 = iArr[21];
                                                    break;
                                                case 93:
                                                    i31 = iArr[21];
                                                    i27 = i31 >> 5;
                                                    break;
                                                case 94:
                                                    i42 = iArr[21];
                                                    break;
                                                case 95:
                                                    i32 = iArr[21];
                                                    break;
                                                case 96:
                                                    i27 = iArr[23];
                                                    break;
                                                case 97:
                                                    i29 = iArr[23];
                                                    i27 = i29 >> 1;
                                                    break;
                                                case 98:
                                                    i30 = iArr[23];
                                                    i27 = i30 >> 2;
                                                    break;
                                                case 99:
                                                    int i60 = iArr[23];
                                                    break;
                                                case 100:
                                                    int i61 = iArr[23];
                                                    break;
                                                case 101:
                                                    i31 = iArr[23];
                                                    i27 = i31 >> 5;
                                                    break;
                                                default:
                                                    switch (i10) {
                                                        case 103:
                                                            i32 = iArr[23];
                                                            break;
                                                        case 104:
                                                            i27 = iArr[24];
                                                            break;
                                                        case 105:
                                                            i29 = iArr[24];
                                                            i27 = i29 >> 1;
                                                            break;
                                                        case 106:
                                                            i30 = iArr[24];
                                                            i27 = i30 >> 2;
                                                            break;
                                                        case 107:
                                                            int i62 = iArr[24];
                                                            break;
                                                        case 108:
                                                            int i63 = iArr[24];
                                                            break;
                                                        case 109:
                                                            i31 = iArr[24];
                                                            i27 = i31 >> 5;
                                                            break;
                                                        case 110:
                                                            i37 = iArr[24];
                                                            i28 = i37 >> 6;
                                                            i40 = i28 & 3;
                                                            break;
                                                        case 111:
                                                            i27 = iArr[25];
                                                            break;
                                                        case 112:
                                                            i29 = iArr[25];
                                                            i27 = i29 >> 1;
                                                            break;
                                                        case 113:
                                                            i30 = iArr[25];
                                                            i27 = i30 >> 2;
                                                            break;
                                                        case 114:
                                                            int i64 = iArr[25];
                                                            break;
                                                        case 115:
                                                            int i65 = iArr[25];
                                                            break;
                                                        case 116:
                                                            i31 = iArr[25];
                                                            i27 = i31 >> 5;
                                                            break;
                                                        case 117:
                                                            i42 = iArr[25];
                                                            break;
                                                        case 118:
                                                            i32 = iArr[25];
                                                            break;
                                                        case 119:
                                                            i27 = iArr[26];
                                                            break;
                                                        case 120:
                                                            i29 = iArr[26];
                                                            i27 = i29 >> 1;
                                                            break;
                                                        case 121:
                                                            i30 = iArr[26];
                                                            i27 = i30 >> 2;
                                                            break;
                                                        case 122:
                                                            int i66 = iArr[26];
                                                            break;
                                                        case 123:
                                                            int i67 = iArr[26];
                                                            break;
                                                        case 124:
                                                            i31 = iArr[26];
                                                            i27 = i31 >> 5;
                                                            break;
                                                        case 125:
                                                            i42 = iArr[26];
                                                            break;
                                                        case 126:
                                                            i32 = iArr[26];
                                                            break;
                                                        case 127:
                                                            i27 = iArr[30];
                                                            break;
                                                        case 128:
                                                            i29 = iArr[30];
                                                            i27 = i29 >> 1;
                                                            break;
                                                        case 129:
                                                            i30 = iArr[30];
                                                            i27 = i30 >> 2;
                                                            break;
                                                        case 130:
                                                            i28 = iArr[30] >> 3;
                                                            i40 = i28 & 3;
                                                            break;
                                                        case 131:
                                                            i28 = iArr[30] >> 5;
                                                            i40 = i28 & 3;
                                                            break;
                                                        case 132:
                                                            i32 = iArr[30];
                                                            break;
                                                        case 133:
                                                            i27 = iArr[31];
                                                            break;
                                                        case 134:
                                                            i39 = iArr[31];
                                                            i28 = i39 >> 1;
                                                            i40 = i28 & 3;
                                                            break;
                                                        case 135:
                                                            int i68 = iArr[31];
                                                            break;
                                                        case 136:
                                                            int i69 = iArr[31];
                                                            break;
                                                        case 137:
                                                            i31 = iArr[31];
                                                            i27 = i31 >> 5;
                                                            break;
                                                        case 138:
                                                            i37 = iArr[31];
                                                            i28 = i37 >> 6;
                                                            i40 = i28 & 3;
                                                            break;
                                                        case 139:
                                                            i28 = iArr[32];
                                                            i40 = i28 & 3;
                                                            break;
                                                        case 140:
                                                            i38 = iArr[32];
                                                            i28 = i38 >> 2;
                                                            i40 = i28 & 3;
                                                            break;
                                                        case 141:
                                                            i36 = iArr[32];
                                                            i28 = i36 >> 4;
                                                            i40 = i28 & 3;
                                                            break;
                                                        case 142:
                                                            i42 = iArr[32];
                                                            break;
                                                        case 143:
                                                            i32 = iArr[32];
                                                            break;
                                                        case 144:
                                                            i28 = iArr[33];
                                                            i40 = i28 & 3;
                                                            break;
                                                        case 145:
                                                            i38 = iArr[33];
                                                            i28 = i38 >> 2;
                                                            i40 = i28 & 3;
                                                            break;
                                                        case 146:
                                                            i36 = iArr[33];
                                                            i28 = i36 >> 4;
                                                            i40 = i28 & 3;
                                                            break;
                                                        case 147:
                                                            i42 = iArr[33];
                                                            break;
                                                        case 148:
                                                            i32 = iArr[33];
                                                            break;
                                                        case 149:
                                                            i27 = iArr[34];
                                                            break;
                                                        case 150:
                                                            i42 = iArr[3];
                                                            break;
                                                        default:
                                                            switch (i10) {
                                                                case 200:
                                                                    i33 = iArr3[0];
                                                                    i40 = i33 & 15;
                                                                    break;
                                                                case CarSettingID.Recv.IGM_INPUT_OVER_VOLT /* 201 */:
                                                                case CarSettingID.Recv.IGM_OVER_TEMP /* 202 */:
                                                                case 226:
                                                                    break;
                                                                case CarSettingID.Recv.IGM_OUTPUT_OPEN_LODE /* 203 */:
                                                                    i30 = iArr3[1];
                                                                    i27 = i30 >> 2;
                                                                    break;
                                                                case CarSettingID.Recv.IGM_OUTPUT_OVER_CUR /* 204 */:
                                                                    i28 = iArr3[2];
                                                                    i40 = i28 & 3;
                                                                    break;
                                                                case 205:
                                                                    i30 = iArr3[2];
                                                                    i27 = i30 >> 2;
                                                                    break;
                                                                case CarSettingID.Recv.IGM_OUTPUT_SCB /* 206 */:
                                                                    int i70 = iArr3[2];
                                                                    break;
                                                                case CarSettingID.Recv.IFC_TLR_AVAIL /* 207 */:
                                                                    int i71 = iArr3[2];
                                                                    break;
                                                                case CarSettingID.Recv.IFC_TLR_ST /* 208 */:
                                                                    i31 = iArr3[2];
                                                                    i27 = i31 >> 5;
                                                                    break;
                                                                case CarSettingID.Recv.IFC_TLR_ACOUSTIC_WARN /* 209 */:
                                                                    i37 = iArr3[2];
                                                                    i28 = i37 >> 6;
                                                                    i40 = i28 & 3;
                                                                    break;
                                                                case CarSettingID.Recv.IFC_SGW_AVAIL /* 210 */:
                                                                    i27 = iArr3[4];
                                                                    break;
                                                                case 211:
                                                                    i34 = iArr3[4] >> 1;
                                                                    i40 = i34 & 7;
                                                                    break;
                                                                case CarSettingID.Recv.IFC_SGW_ACOUSTIC_WARN /* 212 */:
                                                                    i33 = iArr3[4] >> 4;
                                                                    i40 = i33 & 15;
                                                                    break;
                                                                case CarSettingID.Recv.IFC_TCP_AVAIL /* 213 */:
                                                                    i34 = iArr3[5];
                                                                    i40 = i34 & 7;
                                                                    break;
                                                                case CarSettingID.Recv.IFC_TCP_ST /* 214 */:
                                                                    i35 = iArr3[5];
                                                                    i34 = i35 >> 3;
                                                                    i40 = i34 & 7;
                                                                    break;
                                                                case CarSettingID.Recv.IFC_TSR_AVAIL /* 215 */:
                                                                    i42 = iArr3[5];
                                                                    break;
                                                                case CarSettingID.Recv.IFC_HMA_AVAIL /* 216 */:
                                                                    i38 = iArr3[6];
                                                                    i28 = i38 >> 2;
                                                                    i40 = i28 & 3;
                                                                    break;
                                                                case 217:
                                                                    i36 = iArr3[6];
                                                                    i28 = i36 >> 4;
                                                                    i40 = i28 & 3;
                                                                    break;
                                                                case 218:
                                                                    i37 = iArr3[6];
                                                                    i28 = i37 >> 6;
                                                                    i40 = i28 & 3;
                                                                    break;
                                                                case 219:
                                                                    if (i41 != 32) {
                                                                        i33 = iArr3[7];
                                                                        i40 = i33 & 15;
                                                                        break;
                                                                    }
                                                                    break;
                                                                case CarSettingID.Recv.IFC_TCPSESSIONID /* 220 */:
                                                                    i36 = iArr3[7];
                                                                    i28 = i36 >> 4;
                                                                    i40 = i28 & 3;
                                                                    break;
                                                                case CarSettingID.Recv.FLDCM_MIRROR_FOLD_UNFOLD_ST /* 221 */:
                                                                    i37 = iArr3[7];
                                                                    i28 = i37 >> 6;
                                                                    i40 = i28 & 3;
                                                                    break;
                                                                case CarSettingID.Recv.FRDCM_MIRROR_FOLD_UNFOLD_ST /* 222 */:
                                                                    i27 = iArr3[3];
                                                                    break;
                                                                case CarSettingID.Recv.PAA_DVR_TRIGGER /* 223 */:
                                                                    i34 = iArr[27];
                                                                    i40 = i34 & 7;
                                                                    break;
                                                                case 224:
                                                                    i40 = (iArr[27] >> 3) & 31;
                                                                    break;
                                                                case 225:
                                                                    i27 = iArr[19];
                                                                    break;
                                                                case CarSettingID.Recv.IPB_CST_STATUS /* 227 */:
                                                                    i33 = iArr[28];
                                                                    i40 = i33 & 15;
                                                                    break;
                                                                case 228:
                                                                    int i72 = iArr[9];
                                                                    break;
                                                                case CarSettingID.Recv.MAX_OPENNING_TAILGATE /* 229 */:
                                                                    i29 = iArr[19];
                                                                    i27 = i29 >> 1;
                                                                    break;
                                                                case CarSettingID.Recv.FRONT_HATCH_SWITCH /* 230 */:
                                                                    int i73 = iArr[28];
                                                                    break;
                                                                case CarSettingID.Recv.SUNROOF_STATUS /* 231 */:
                                                                    int i74 = iArr[9];
                                                                    break;
                                                                case CarSettingID.Recv.TAILGATE_STATUS /* 232 */:
                                                                    i27 = iArr3[8];
                                                                    break;
                                                                case CarSettingID.Recv.LF_DOOR_STATUS /* 233 */:
                                                                    i29 = iArr[8];
                                                                    i27 = i29 >> 1;
                                                                    break;
                                                                case 234:
                                                                    i39 = iArr[11];
                                                                    i28 = i39 >> 1;
                                                                    i40 = i28 & 3;
                                                                    break;
                                                                case 235:
                                                                    i30 = iArr[19];
                                                                    i27 = i30 >> 2;
                                                                    break;
                                                                case CarSettingID.Recv.RR_DOOR_STATUS /* 236 */:
                                                                    i31 = iArr[9];
                                                                    i27 = i31 >> 5;
                                                                    break;
                                                                case 237:
                                                                    i42 = iArr[28];
                                                                    break;
                                                                case 238:
                                                                    i38 = iArr[0];
                                                                    i28 = i38 >> 2;
                                                                    i40 = i28 & 3;
                                                                    break;
                                                                case 239:
                                                                    int i75 = iArr[19];
                                                                    break;
                                                                default:
                                                                    if (i10 == 10099) {
                                                                        i27 = iArr[22];
                                                                        break;
                                                                    } else {
                                                                        if (i10 == 10100) {
                                                                            i29 = iArr[22];
                                                                            i27 = i29 >> 1;
                                                                            break;
                                                                        }
                                                                        i40 = 0;
                                                                        break;
                                                                    }
                                                            }
                                                    }
                                            }
                                    }
                                } else {
                                    i32 = iArr[2];
                                }
                                i27 = i32 >> 7;
                                break;
                            }
                            break;
                    }
                } else {
                    i42 = iArr[9];
                }
                i27 = i42 >> 6;
            } else {
                i27 = iArr[11] >> 3;
            }
            i40 = 1 & i27;
        }
        return i40;
    }

    public static void b() {
        if (f9995a.length == 0) {
            String str = SystemProperties.get("persist.sys.gac.hutconfig", "");
            str.isEmpty();
            f9995a = c(str);
        }
        if (f9996b.length == 0) {
            String str2 = SystemProperties.get("persist.sys.gac.carconfig", "");
            str2.isEmpty();
            f9996b = c(str2);
        }
    }

    public static int[] c(String str) {
        String string;
        int length = str.length() / 2;
        int[] iArr = new int[length];
        int i10 = 0;
        while (true) {
            string = "";
            if (i10 >= str.length() - 1) {
                break;
            }
            if (i10 % 2 == 0) {
                try {
                    iArr[i10 / 2] = Integer.valueOf("" + str.charAt(i10) + str.charAt(i10 + 1), 16).intValue() & 255;
                } catch (Exception unused) {
                    iArr[i10 / 2] = 0;
                }
            }
            i10++;
        }
        for (int i11 = 0; i11 < length; i11++) {
            int i12 = iArr[i11];
            StringBuilder sbM = g.b.m(string);
            sbM.append(String.format("%02x ", Integer.valueOf(i12)));
            string = sbM.toString();
        }
        string.getClass();
        return iArr;
    }
}
