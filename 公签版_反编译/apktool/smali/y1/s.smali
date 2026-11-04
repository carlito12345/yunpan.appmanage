.class public final synthetic Ly1/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu1/j;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lr1/b1;


# direct methods
.method public synthetic constructor <init>(Lr1/b1;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Ly1/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/s;->b:Lr1/b1;

    return-void
.end method

.method public synthetic constructor <init>(Lz1/a;Lr1/b1;)V
    .locals 0

    .line 2
    const/4 p1, 0x1

    iput p1, p0, Ly1/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ly1/s;->b:Lr1/b1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Ly1/s;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lz1/b;

    .line 7
    .line 8
    check-cast p1, Lz1/h;

    .line 9
    .line 10
    iget-object v0, p1, Lz1/h;->p:Lua/i8;

    .line 11
    .line 12
    iget-object v1, p0, Ly1/s;->b:Lr1/b1;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v2, v0, Lua/i8;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Lr1/p;

    .line 19
    .line 20
    iget v3, v2, Lr1/p;->w:I

    .line 21
    .line 22
    const/4 v4, -0x1

    .line 23
    if-ne v3, v4, :cond_0

    .line 24
    .line 25
    new-instance v3, Lr1/o;

    .line 26
    .line 27
    invoke-direct {v3, v2}, Lr1/o;-><init>(Lr1/p;)V

    .line 28
    .line 29
    .line 30
    iget v2, v1, Lr1/b1;->a:I

    .line 31
    .line 32
    iput v2, v3, Lr1/o;->u:I

    .line 33
    .line 34
    iget v2, v1, Lr1/b1;->b:I

    .line 35
    .line 36
    iput v2, v3, Lr1/o;->v:I

    .line 37
    .line 38
    new-instance v2, Lr1/p;

    .line 39
    .line 40
    invoke-direct {v2, v3}, Lr1/p;-><init>(Lr1/o;)V

    .line 41
    .line 42
    .line 43
    new-instance v3, Lua/i8;

    .line 44
    .line 45
    iget-object v0, v0, Lua/i8;->b:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Ljava/lang/String;

    .line 48
    .line 49
    const/16 v4, 0xd

    .line 50
    .line 51
    invoke-direct {v3, v2, v4, v0}, Lua/i8;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iput-object v3, p1, Lz1/h;->p:Lua/i8;

    .line 55
    .line 56
    :cond_0
    iget p1, v1, Lr1/b1;->a:I

    .line 57
    .line 58
    return-void

    .line 59
    :pswitch_0
    check-cast p1, Lr1/k0;

    .line 60
    .line 61
    iget-object v0, p0, Ly1/s;->b:Lr1/b1;

    .line 62
    .line 63
    invoke-interface {p1, v0}, Lr1/k0;->b(Lr1/b1;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
