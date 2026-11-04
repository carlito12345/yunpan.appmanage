.class public final synthetic La2/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:La2/j0;

.field public final synthetic c:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(La2/j0;Ljava/lang/Exception;I)V
    .locals 0

    .line 1
    iput p3, p0, La2/a0;->a:I

    iput-object p1, p0, La2/a0;->b:La2/j0;

    iput-object p2, p0, La2/a0;->c:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, La2/a0;->c:Ljava/lang/Exception;

    .line 2
    .line 3
    iget-object v1, p0, La2/a0;->b:La2/j0;

    .line 4
    .line 5
    iget v2, p0, La2/a0;->a:I

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
    new-instance v3, Lua/t6;

    .line 26
    .line 27
    const/16 v4, 0x1c

    .line 28
    .line 29
    invoke-direct {v3, v2, v0, v4}, Lua/t6;-><init>(Lz1/a;Ljava/lang/Object;I)V

    .line 30
    .line 31
    .line 32
    const/16 v0, 0x3f6

    .line 33
    .line 34
    invoke-virtual {v1, v2, v0, v3}, Lz1/e;->N(Lz1/a;ILu1/j;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_0
    sget-object v2, Lu1/f0;->a:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v1, v1, La2/j0;->c:Ly1/t;

    .line 41
    .line 42
    iget-object v1, v1, Ly1/t;->a:Ly1/x;

    .line 43
    .line 44
    iget-object v1, v1, Ly1/x;->t:Lz1/e;

    .line 45
    .line 46
    invoke-virtual {v1}, Lz1/e;->M()Lz1/a;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    new-instance v3, Lua/t6;

    .line 51
    .line 52
    const/16 v4, 0x17

    .line 53
    .line 54
    invoke-direct {v3, v2, v0, v4}, Lua/t6;-><init>(Lz1/a;Ljava/lang/Object;I)V

    .line 55
    .line 56
    .line 57
    const/16 v0, 0x405

    .line 58
    .line 59
    invoke-virtual {v1, v2, v0, v3}, Lz1/e;->N(Lz1/a;ILu1/j;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
