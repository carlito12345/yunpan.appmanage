package com.yunpan.appmanage.shizuku;

import android.os.Parcel;
import android.os.Parcelable;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class CmdResult implements Parcelable {
    public static final Parcelable.Creator<CmdResult> CREATOR = new Parcelable.Creator<CmdResult>() { // from class: com.yunpan.appmanage.shizuku.CmdResult.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CmdResult createFromParcel(Parcel parcel) {
            return new CmdResult(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CmdResult[] newArray(int i10) {
            return new CmdResult[i10];
        }
    };
    public int code;
    public ArrayList<String> lists;

    public CmdResult() {
        this.code = -1;
        this.lists = new ArrayList<>();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAllStr() {
        StringBuilder sb2 = new StringBuilder();
        Iterator<String> it = this.lists.iterator();
        while (it.hasNext()) {
            sb2.append(it.next());
            sb2.append(SignParameters.NEW_LINE);
        }
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.code);
        parcel.writeStringList(this.lists);
    }

    public CmdResult(Parcel parcel) {
        this.code = parcel.readInt();
        this.lists = parcel.createStringArrayList();
    }
}
