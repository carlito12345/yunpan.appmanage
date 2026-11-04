package e;

import android.os.Parcel;
import android.os.Parcelable;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public abstract class a {
    public static Class b(Class cls) {
        return Class.forName(cls.getPackage().getName() + "." + cls.getSimpleName() + "Parcelizer", false, cls.getClassLoader());
    }

    public abstract b a();

    public abstract boolean c(int i);

    public final int d(int i, int i2) {
        return !c(i2) ? i : ((b) this).f84b.readInt();
    }

    public final Parcelable e(Parcelable parcelable, int i) {
        if (!c(i)) {
            return parcelable;
        }
        return ((b) this).f84b.readParcelable(b.class.getClassLoader());
    }

    public final c f() {
        String string = ((b) this).f84b.readString();
        if (string == null) {
            return null;
        }
        try {
            return (c) Class.forName(string, true, a.class.getClassLoader()).getDeclaredMethod("read", a.class).invoke(null, a());
        } catch (ClassNotFoundException e2) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e2);
        } catch (IllegalAccessException e3) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e3);
        } catch (NoSuchMethodException e4) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e4);
        } catch (InvocationTargetException e5) {
            if (e5.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e5.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e5);
        }
    }

    public abstract void g(int i);

    public final void h(int i, int i2) {
        g(i2);
        ((b) this).f84b.writeInt(i);
    }

    public final void i(c cVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (cVar == null) {
            ((b) this).f84b.writeString(null);
            return;
        }
        try {
            ((b) this).f84b.writeString(b(cVar.getClass()).getName());
            b bVarA = a();
            try {
                b(cVar.getClass()).getDeclaredMethod("write", cVar.getClass(), a.class).invoke(null, cVar, bVarA);
                int i = bVarA.f88f;
                if (i >= 0) {
                    int i2 = bVarA.f83a.get(i);
                    Parcel parcel = bVarA.f84b;
                    int iDataPosition = parcel.dataPosition();
                    parcel.setDataPosition(i2);
                    parcel.writeInt(iDataPosition - i2);
                    parcel.setDataPosition(iDataPosition);
                }
            } catch (ClassNotFoundException e2) {
                throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e2);
            } catch (IllegalAccessException e3) {
                throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e3);
            } catch (NoSuchMethodException e4) {
                throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e4);
            } catch (InvocationTargetException e5) {
                if (!(e5.getCause() instanceof RuntimeException)) {
                    throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e5);
                }
                throw ((RuntimeException) e5.getCause());
            }
        } catch (ClassNotFoundException e6) {
            throw new RuntimeException(cVar.getClass().getSimpleName().concat(" does not have a Parcelizer"), e6);
        }
    }
}
