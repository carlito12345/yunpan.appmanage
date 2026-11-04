.class public final synthetic La2/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:J

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;IJJI)V
    .locals 0

    .line 1
    iput p7, p0, La2/i0;->a:I

    iput-object p1, p0, La2/i0;->e:Ljava/lang/Object;

    iput p2, p0, La2/i0;->b:I

    iput-wide p3, p0, La2/i0;->c:J

    iput-wide p5, p0, La2/i0;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, La2/i0;->e:Ljava/lang/Object;

    .line 2
    .line 3
    iget v1, p0, La2/i0;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v0, Li2/b;

    .line 9
    .line 10
    iget-object v0, v0, Li2/b;->b:Lz1/e;

    .line 11
    .line 12
    iget-object v1, v0, Lz1/e;->d:Lba/i;

    .line 13
    .line 14
    iget-object v2, v1, Lba/i;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Lu7/g0;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v1, v1, Lba/i;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Lu7/g0;

    .line 29
    .line 30
    invoke-static {v1}, Lu7/q;->i(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lf2/c0;

    .line 35
    .line 36
    :goto_0
    invoke-virtual {v0, v1}, Lz1/e;->J(Lf2/c0;)Lz1/a;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    new-instance v9, Li3/k;

    .line 41
    .line 42
    iget v4, p0, La2/i0;->b:I

    .line 43
    .line 44
    iget-wide v5, p0, La2/i0;->c:J

    .line 45
    .line 46
    iget-wide v7, p0, La2/i0;->d:J

    .line 47
    .line 48
    move-object v2, v9

    .line 49
    move-object v3, v1

    .line 50
    invoke-direct/range {v2 .. v8}, Li3/k;-><init>(Lz1/a;IJJ)V

    .line 51
    .line 52
    .line 53
    const/16 v2, 0x3ee

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2, v9}, Lz1/e;->N(Lz1/a;ILu1/j;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :pswitch_0
    check-cast v0, La2/j0;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    sget-object v1, Lu1/f0;->a:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v0, v0, La2/j0;->c:Ly1/t;

    .line 67
    .line 68
    iget-object v0, v0, Ly1/t;->a:Ly1/x;

    .line 69
    .line 70
    iget-object v0, v0, Ly1/x;->t:Lz1/e;

    .line 71
    .line 72
    invoke-virtual {v0}, Lz1/e;->M()Lz1/a;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    new-instance v9, Lz1/c;

    .line 77
    .line 78
    iget-wide v4, p0, La2/i0;->c:J

    .line 79
    .line 80
    iget-wide v6, p0, La2/i0;->d:J

    .line 81
    .line 82
    iget v3, p0, La2/i0;->b:I

    .line 83
    .line 84
    move-object v1, v9

    .line 85
    move-object v2, v8

    .line 86
    invoke-direct/range {v1 .. v7}, Lz1/c;-><init>(Lz1/a;IJJ)V

    .line 87
    .line 88
    .line 89
    const/16 v1, 0x3f3

    .line 90
    .line 91
    invoke-virtual {v0, v8, v1, v9}, Lz1/e;->N(Lz1/a;ILu1/j;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
