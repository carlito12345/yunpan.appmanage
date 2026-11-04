.class public final synthetic Ld4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/database/sqlite/SQLiteDatabase$CursorFactory;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ld4/a;->a:I

    iput-object p2, p0, Ld4/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    .locals 1

    .line 1
    iget p1, p0, Ld4/a;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Ld4/a;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Landroidx/activity/o;

    .line 9
    .line 10
    new-instance v0, Ld4/h;

    .line 11
    .line 12
    invoke-static {p4}, Lue/d;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p4}, Ld4/h;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p1, Landroidx/activity/o;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Lc4/d;

    .line 21
    .line 22
    invoke-interface {p1, v0}, Lc4/d;->r(Lc4/c;)V

    .line 23
    .line 24
    .line 25
    new-instance p1, Landroid/database/sqlite/SQLiteCursor;

    .line 26
    .line 27
    invoke-direct {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :pswitch_0
    iget-object p1, p0, Ld4/a;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Lc4/d;

    .line 34
    .line 35
    const-string v0, "$query"

    .line 36
    .line 37
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Ld4/h;

    .line 41
    .line 42
    invoke-static {p4}, Lue/d;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, p4}, Ld4/h;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Lc4/d;->r(Lc4/c;)V

    .line 49
    .line 50
    .line 51
    new-instance p1, Landroid/database/sqlite/SQLiteCursor;

    .line 52
    .line 53
    invoke-direct {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    .line 54
    .line 55
    .line 56
    return-object p1

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
