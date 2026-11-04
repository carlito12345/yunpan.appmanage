package androidx.room;

/* loaded from: classes.dex */
public abstract class q {
    public final int version;

    public q(int i10) {
        this.version = i10;
    }

    public abstract void createAllTables(c4.a aVar);

    public abstract void dropAllTables(c4.a aVar);

    public abstract void onCreate(c4.a aVar);

    public abstract void onOpen(c4.a aVar);

    public abstract void onPostMigrate(c4.a aVar);

    public abstract void onPreMigrate(c4.a aVar);

    public abstract r onValidateSchema(c4.a aVar);

    public void validateMigration(c4.a aVar) {
        ue.d.e(aVar, "db");
        throw new UnsupportedOperationException("validateMigration is deprecated");
    }
}
