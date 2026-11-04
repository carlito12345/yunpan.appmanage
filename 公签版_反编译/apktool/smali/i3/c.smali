.class public final Li3/c;
.super Lx1/h;
.source "SourceFile"

# interfaces
.implements Li3/d;


# instance fields
.field public e:Li3/d;

.field public f:J

.field public final synthetic g:I

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lx1/h;-><init>()V

    return-void
.end method

.method public constructor <init>(Lg2/b;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Li3/c;->g:I

    .line 2
    iput-object p1, p0, Li3/c;->h:Ljava/lang/Object;

    invoke-direct {p0}, Li3/c;-><init>()V

    return-void
.end method

.method public constructor <init>(Lha/p7;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Li3/c;->g:I

    .line 3
    invoke-direct {p0}, Li3/c;-><init>()V

    .line 4
    iput-object p1, p0, Li3/c;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final d(J)I
    .locals 3

    .line 1
    iget-object v0, p0, Li3/c;->e:Li3/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Li3/c;->f:J

    .line 7
    .line 8
    sub-long/2addr p1, v1

    .line 9
    invoke-interface {v0, p1, p2}, Li3/d;->d(J)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final e(I)J
    .locals 4

    .line 1
    iget-object v0, p0, Li3/c;->e:Li3/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, p1}, Li3/d;->e(I)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-wide v2, p0, Li3/c;->f:J

    .line 11
    .line 12
    add-long/2addr v0, v2

    .line 13
    return-wide v0
.end method

.method public final g()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lab/a;->b:I

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    iput-wide v1, p0, Lx1/h;->c:J

    .line 7
    .line 8
    iput-boolean v0, p0, Lx1/h;->d:Z

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Li3/c;->e:Li3/d;

    .line 12
    .line 13
    return-void
.end method

.method public final h(J)Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Li3/c;->e:Li3/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Li3/c;->f:J

    .line 7
    .line 8
    sub-long/2addr p1, v1

    .line 9
    invoke-interface {v0, p1, p2}, Li3/d;->h(J)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final i()V
    .locals 1

    .line 1
    iget v0, p0, Li3/c;->g:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Li3/c;->h:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lha/p7;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v0, v0, Lha/p7;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lj3/i;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Li3/c;->g()V

    .line 21
    .line 22
    .line 23
    iget-object v0, v0, Lj3/i;->b:Ljava/util/ArrayDeque;

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_0
    iget-object v0, p0, Li3/c;->h:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Lg2/b;

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Lx1/j;->o(Lx1/h;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final j()I
    .locals 1

    .line 1
    iget-object v0, p0, Li3/c;->e:Li3/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, Li3/d;->j()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method
