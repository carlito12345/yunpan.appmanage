.class public final Lg9/c;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-static {p1, p2}, Lnh/b;->R(Landroid/database/sqlite/SQLiteDatabase;Lq4/a;)Z

    .line 3
    .line 4
    .line 5
    throw p2
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-static {p1, p2}, Lnh/b;->R(Landroid/database/sqlite/SQLiteDatabase;Lq4/a;)Z

    .line 3
    .line 4
    .line 5
    throw p2
.end method
