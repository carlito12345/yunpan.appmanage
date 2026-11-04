package com.autolink.adapterinterface.car;

import android.os.Parcel;
import android.os.Parcelable;
import da.b;
import j$.nio.charset.StandardCharsets;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public class ALCarPropertyEvent<T> implements Parcelable {
    private int f172id;
    private T value;
    private static final Charset DEFAULT_CHARSET = StandardCharsets.UTF_8;
    public static final Parcelable.Creator<ALCarPropertyEvent> CREATOR = new Parcelable.Creator<ALCarPropertyEvent>() { // from class: com.autolink.adapterinterface.car.ALCarPropertyEvent.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ALCarPropertyEvent createFromParcel(Parcel parcel) {
            return new ALCarPropertyEvent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ALCarPropertyEvent[] newArray(int i10) {
            return new ALCarPropertyEvent[i10];
        }
    };

    public ALCarPropertyEvent(int i10, T t10) {
        this.f172id = i10;
        this.value = t10;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getId() {
        return this.f172id;
    }

    public T getValue() {
        return this.value;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f172id);
        T t10 = this.value;
        Class<?> cls = t10 == null ? null : t10.getClass();
        parcel.writeString(cls != null ? cls.getName() : null);
        if (String.class.equals(cls)) {
            parcel.writeBlob(((String) this.value).getBytes(DEFAULT_CHARSET));
        } else if (byte[].class.equals(cls)) {
            parcel.writeBlob((byte[]) this.value);
        } else {
            parcel.writeValue(this.value);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ALCarPropertyEvent(Parcel parcel) throws ClassNotFoundException {
        this.f172id = parcel.readInt();
        String string = parcel.readString();
        try {
            Class<?> cls = Class.forName(string);
            if (String.class.equals(cls)) {
                this.value = (T) new String(parcel.readBlob(), DEFAULT_CHARSET);
            } else if (byte[].class.equals(cls)) {
                this.value = (T) parcel.readBlob();
            } else {
                this.value = (T) parcel.readValue(cls.getClassLoader());
            }
        } catch (ClassNotFoundException unused) {
            throw new IllegalStateException(b.c("class not found ", string));
        }
    }
}
