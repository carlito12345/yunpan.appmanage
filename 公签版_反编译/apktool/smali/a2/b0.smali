.class public final synthetic La2/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:J

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/String;JJI)V
    .locals 0

    .line 1
    iput p7, p0, La2/b0;->a:I

    iput-object p1, p0, La2/b0;->e:Ljava/lang/Object;

    iput-object p2, p0, La2/b0;->b:Ljava/lang/String;

    iput-wide p3, p0, La2/b0;->c:J

    iput-wide p5, p0, La2/b0;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, La2/b0;->e:Ljava/lang/Object;

    .line 2
    .line 3
    iget v1, p0, La2/b0;->a:I

    .line 4
    .line 5
    check-cast v0, La2/j0;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    packed-switch v1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    sget-object v1, Lu1/f0;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v0, v0, La2/j0;->c:Ly1/t;

    .line 16
    .line 17
    iget-object v0, v0, Ly1/t;->a:Ly1/x;

    .line 18
    .line 19
    iget-object v0, v0, Ly1/x;->t:Lz1/e;

    .line 20
    .line 21
    invoke-virtual {v0}, Lz1/e;->M()Lz1/a;

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    new-instance v9, Lua/t6;

    .line 26
    .line 27
    iget-wide v4, p0, La2/b0;->d:J

    .line 28
    .line 29
    iget-wide v6, p0, La2/b0;->c:J

    .line 30
    .line 31
    iget-object v3, p0, La2/b0;->b:Ljava/lang/String;

    .line 32
    .line 33
    move-object v1, v9

    .line 34
    move-object v2, v8

    .line 35
    invoke-direct/range {v1 .. v7}, Lua/t6;-><init>(Lz1/a;Ljava/lang/String;JJ)V

    .line 36
    .line 37
    .line 38
    const/16 v1, 0x3f8

    .line 39
    .line 40
    invoke-virtual {v0, v8, v1, v9}, Lz1/e;->N(Lz1/a;ILu1/j;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_0
    sget-object v1, Lu1/f0;->a:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v0, v0, La2/j0;->c:Ly1/t;

    .line 47
    .line 48
    iget-object v0, v0, Ly1/t;->a:Ly1/x;

    .line 49
    .line 50
    iget-object v0, v0, Ly1/x;->t:Lz1/e;

    .line 51
    .line 52
    invoke-virtual {v0}, Lz1/e;->M()Lz1/a;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    new-instance v9, Lz1/d;

    .line 57
    .line 58
    iget-wide v4, p0, La2/b0;->d:J

    .line 59
    .line 60
    iget-wide v6, p0, La2/b0;->c:J

    .line 61
    .line 62
    iget-object v3, p0, La2/b0;->b:Ljava/lang/String;

    .line 63
    .line 64
    move-object v1, v9

    .line 65
    move-object v2, v8

    .line 66
    invoke-direct/range {v1 .. v7}, Lz1/d;-><init>(Lz1/a;Ljava/lang/String;JJ)V

    .line 67
    .line 68
    .line 69
    const/16 v1, 0x3f0

    .line 70
    .line 71
    invoke-virtual {v0, v8, v1, v9}, Lz1/e;->N(Lz1/a;ILu1/j;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
