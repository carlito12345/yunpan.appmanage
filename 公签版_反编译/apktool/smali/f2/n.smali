.class public final synthetic Lf2/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt7/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lua/i8;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lua/i8;I)V
    .locals 0

    .line 1
    iput p3, p0, Lf2/n;->a:I

    iput-object p1, p0, Lf2/n;->b:Ljava/lang/Object;

    iput-object p2, p0, Lf2/n;->c:Lua/i8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lf2/n;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lf2/w0;

    .line 7
    .line 8
    iget-object v1, p0, Lf2/n;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lf2/p;

    .line 11
    .line 12
    iget-object v1, v1, Lf2/p;->a:Ll2/m;

    .line 13
    .line 14
    iget-object v2, p0, Lf2/n;->c:Lua/i8;

    .line 15
    .line 16
    invoke-direct {v0, v2, v1}, Lf2/w0;-><init>(Lua/i8;Ll2/r;)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :pswitch_0
    iget-object v0, p0, Lf2/n;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Ljava/lang/Class;

    .line 23
    .line 24
    iget-object v1, p0, Lf2/n;->c:Lua/i8;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lf2/q;->e(Ljava/lang/Class;Lua/i8;)Lf2/b0;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0

    .line 31
    :pswitch_1
    iget-object v0, p0, Lf2/n;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Ljava/lang/Class;

    .line 34
    .line 35
    iget-object v1, p0, Lf2/n;->c:Lua/i8;

    .line 36
    .line 37
    invoke-static {v0, v1}, Lf2/q;->e(Ljava/lang/Class;Lua/i8;)Lf2/b0;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0

    .line 42
    :pswitch_2
    iget-object v0, p0, Lf2/n;->b:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Ljava/lang/Class;

    .line 45
    .line 46
    iget-object v1, p0, Lf2/n;->c:Lua/i8;

    .line 47
    .line 48
    invoke-static {v0, v1}, Lf2/q;->e(Ljava/lang/Class;Lua/i8;)Lf2/b0;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    return-object v0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
