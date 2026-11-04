.class public final synthetic La2/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:La2/j0;

.field public final synthetic c:La2/k0;


# direct methods
.method public synthetic constructor <init>(La2/j0;La2/k0;I)V
    .locals 0

    .line 1
    iput p3, p0, La2/z;->a:I

    iput-object p1, p0, La2/z;->b:La2/j0;

    iput-object p2, p0, La2/z;->c:La2/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, La2/z;->c:La2/k0;

    .line 2
    .line 3
    iget-object v1, p0, La2/z;->b:La2/j0;

    .line 4
    .line 5
    iget v2, p0, La2/z;->a:I

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    packed-switch v2, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    sget-object v2, Lu1/f0;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v1, v1, La2/j0;->c:Ly1/t;

    .line 16
    .line 17
    iget-object v1, v1, Ly1/t;->a:Ly1/x;

    .line 18
    .line 19
    iget-object v1, v1, Ly1/x;->t:Lz1/e;

    .line 20
    .line 21
    invoke-virtual {v1}, Lz1/e;->M()Lz1/a;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    new-instance v3, Lz1/c;

    .line 26
    .line 27
    const/4 v4, 0x3

    .line 28
    invoke-direct {v3, v2, v0, v4}, Lz1/c;-><init>(Lz1/a;Ljava/lang/Object;I)V

    .line 29
    .line 30
    .line 31
    const/16 v0, 0x408

    .line 32
    .line 33
    invoke-virtual {v1, v2, v0, v3}, Lz1/e;->N(Lz1/a;ILu1/j;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_0
    sget-object v2, Lu1/f0;->a:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v1, v1, La2/j0;->c:Ly1/t;

    .line 40
    .line 41
    iget-object v1, v1, Ly1/t;->a:Ly1/x;

    .line 42
    .line 43
    iget-object v1, v1, Ly1/x;->t:Lz1/e;

    .line 44
    .line 45
    invoke-virtual {v1}, Lz1/e;->M()Lz1/a;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    new-instance v3, Lua/t6;

    .line 50
    .line 51
    const/16 v4, 0x1a

    .line 52
    .line 53
    invoke-direct {v3, v2, v0, v4}, Lua/t6;-><init>(Lz1/a;Ljava/lang/Object;I)V

    .line 54
    .line 55
    .line 56
    const/16 v0, 0x407

    .line 57
    .line 58
    invoke-virtual {v1, v2, v0, v3}, Lz1/e;->N(Lz1/a;ILu1/j;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
