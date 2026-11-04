.class public final Landroidx/lifecycle/m0;
.super Lue/e;
.source "SourceFile"

# interfaces
.implements Lte/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/lifecycle/m0;->a:I

    iput-object p2, p0, Landroidx/lifecycle/m0;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lue/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Landroidx/lifecycle/m0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x17

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/lifecycle/m0;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, Ld4/g;

    .line 13
    .line 14
    if-lt v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v0, v2, Ld4/g;->b:Ljava/lang/String;

    .line 17
    .line 18
    :cond_0
    new-instance v0, Ld4/f;

    .line 19
    .line 20
    iget-object v1, v2, Ld4/g;->a:Landroid/content/Context;

    .line 21
    .line 22
    new-instance v3, Ld4/c;

    .line 23
    .line 24
    invoke-direct {v3}, Ld4/c;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v4, v2, Ld4/g;->b:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v5, v2, Ld4/g;->c:Landroidx/room/s;

    .line 30
    .line 31
    invoke-direct {v0, v1, v4, v3, v5}, Ld4/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ld4/c;Landroidx/room/s;)V

    .line 32
    .line 33
    .line 34
    iget-boolean v1, v2, Ld4/g;->e:Z

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 37
    .line 38
    .line 39
    return-object v0

    .line 40
    :pswitch_0
    iget-object v0, p0, Landroidx/lifecycle/m0;->b:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Landroidx/room/v;

    .line 43
    .line 44
    invoke-static {v0}, Landroidx/room/v;->access$createNewStatement(Landroidx/room/v;)Lc4/e;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    return-object v0

    .line 49
    :pswitch_1
    iget-object v0, p0, Landroidx/lifecycle/m0;->b:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Landroidx/lifecycle/w0;

    .line 52
    .line 53
    invoke-static {v0}, Landroidx/lifecycle/l0;->f(Landroidx/lifecycle/w0;)Landroidx/lifecycle/o0;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
